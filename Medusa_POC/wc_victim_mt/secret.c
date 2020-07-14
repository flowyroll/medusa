#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <memory.h>
#include <sys/mman.h>
#include <unistd.h>
#include "../../PTEditor/ptedit_header.h"
#include "../../cacheutils.h"
#include "config.h"

#define PAGE_SIZE 4096

unsigned char __attribute__((aligned(PAGE_SIZE))) src[PAGE_SIZE];
unsigned char __attribute__((aligned(PAGE_SIZE))) dst[PAGE_SIZE];

const char* typestr[8];
const char* modestr[8];

#define REPMOV 0
#define REPSTO 1
#define MOV    2
#define NT     3
#define AVX2   4

int main(int argc, char* argv[]) {
    int read = 0, do_flush = 0, type = PTEDIT_MT_WB, mode = REPMOV;
    char secret = 'N';
    typestr[PTEDIT_MT_WC] = "WC";
    typestr[PTEDIT_MT_WB] = "WB";
    typestr[PTEDIT_MT_WT] = "WT";
    typestr[PTEDIT_MT_UC] = "UC";
    modestr[REPMOV] = "rep mov";
    modestr[REPSTO] = "rep sto";
    modestr[MOV] = "mov";
    modestr[NT] = "non-temporal";
    modestr[AVX2] ="AVX256";

    int i;
    for(i = 0; i < argc; i++) {
        if(!strcmp(argv[i], "read")) read = 1;
        else if(!strcmp(argv[i], "write")) read = 0;
        else if(!strcmp(argv[i], "WC")) type = PTEDIT_MT_WC;
        else if(!strcmp(argv[i], "WB")) type = PTEDIT_MT_WB;
        else if(!strcmp(argv[i], "WT")) type = PTEDIT_MT_WT;
        else if(!strcmp(argv[i], "UC")) type = PTEDIT_MT_UC;
        else if(!strcmp(argv[i], "flush")) do_flush = 1;
        else if(!strcmp(argv[i], "repmov")) mode = REPMOV;
        else if(!strcmp(argv[i], "repsto")) mode = REPSTO;
        else if(!strcmp(argv[i], "mov")) mode = MOV;
        else if(!strcmp(argv[i], "nt")) mode = NT;
        else if(!strcmp(argv[i], "avx2")) mode = AVX2;
        else if(argv[i][0] == 'S') secret = argv[i][1];
    }

    printf("Memory types: WT / WC / WB / UC\n");
    printf("Modes: repmov / repsto / mov / nt / avx2\n");
    printf("Others: flush / read / write / S<secret>\n\n");

    printf("Configuration: %s, %s, %s, %s, secret %c\n", read ? "read" : "write", do_flush ? "flush" : "noflush", typestr[type], modestr[mode], secret);

  memset(src, secret, PAGE_SIZE);
  memset(dst, secret, PAGE_SIZE);

#if MEM_UNCACHABLE
  ptedit_init();

  int mt = ptedit_find_first_mt(type);
  if (mt != -1) {
    printf("%d MTs for requested type (fiRst is MT%d)\n", __builtin_popcount(ptedit_find_mt(type)), mt);
  } else {
    printf("No requested MT availaBle!\n");
    return -1;
  }

  ptedit_entry_t entry = ptedit_resolve(dst, 0);
  entry.pte = ptedit_apply_mt(entry.pte, mt);
  entry.valid = PTEDIT_VALID_MASK_PTE;
  ptedit_update(dst, 0, &entry);
  ptedit_invalidate_tlb(dst);
  entry = ptedit_resolve(src, 0);
  entry.pte = ptedit_apply_mt(entry.pte, mt);
  entry.valid = PTEDIT_VALID_MASK_PTE;
  ptedit_update(src, 0, &entry);
  ptedit_invalidate_tlb(src);
  ptedit_cleanup();
#endif

  while(1) {
    for(i = 0; i < 16; i++) {
      if(do_flush) {
        flush(src + (i + 64));
      }

      asm volatile("mfence");

      if(mode == MOV) {
          if(read) {
            maccess(src + i);
          } else {
            asm volatile(
                "mov %0, %%rcx\n"
                "mov %1, %%rdi\n"
                "xor %%r11, %%r11\n"
                "1:\n"
                "movb %2, (%%rdi,%%r11,1)\n"
                "incq %%r11\n"
                "dec %%rcx\n"
                "jnz 1b\n"
                : : "r"((size_t)1024), "r"(dst + i * 64), "r"(secret) : "rcx","r11","rdi","memory");
          }
      } else if (mode == REPMOV) {
          asm volatile(
              "mov %2, %%rcx\n"
              "mov %0, %%rsi\n"
              "mov %1, %%rdi\n"
              "rep movsb\n"
          : : "r"(src + i * 64), "r"(dst + i * 64), "r"((size_t)1024): "rsi","rdi","rcx","memory");
      } else if (mode == REPSTO) {
         asm volatile(
              "mov %1, %%rcx\n"
              "mov %0, %%rdi\n"
              "movb %2, %%al\n"
              "rep stosb\n"
          : : "d"(src + i * 64), "r"((size_t)1024), "r"(secret) : "rsi","rdi","rax","rcx","memory");
      } else if (mode == NT) {
           asm volatile(
              "mov %0, %%r11\n"
              "mov %1, %%r12\n"
              "mov %2, %%r13\n"
              "1:\n"
              "prefetchnta (%%r11)\n"
              "prefetchnta (%%r12)\n"
              "movntdqa (%%r11), %%xmm0\n"
              "movntdq %%xmm0, (%%r12)\n"
              "add $16, %%r11\n"
              "add $16, %%r12\n"
              "sub $16, %%r13\n"
              "jnz 1b\n"
              : : "r"(src), "r"(dst), "r"((size_t)1024): "r10", "r11", "r12", "r13"
          );
      } else if (mode == AVX2) {
          asm volatile(
              "mov %0, %%r11\n"
              "mov %1, %%r12\n"
              "mov %2, %%r13\n"
              "1:\n"
              "vmovups (%%r11), %%ymm0\n"
              "vmovups %%ymm0, (%%r12)\n"
              "add $16, %%r11\n"
              "add $16, %%r12\n"
              "sub $16, %%r13\n"
              "jnz 1b\n"
              : : "r"(src), "r"(dst), "r"((size_t)1024): "r10", "r11", "r12", "r13", "ymm0"
          );
      }
    }
  }

  return 0;
}
