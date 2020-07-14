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

int main(int argc, char* argv[])
{
  memset(src, 0, PAGE_SIZE);
  memset(dst, 0, PAGE_SIZE);

#if MEM_UNCACHABLE
  ptedit_init();

    int mt = ptedit_find_first_mt(PTEDIT_MT_WT);
    if (mt != -1) {
      printf("%d MTs for WC (first is MT%d)\n", __builtin_popcount(ptedit_find_mt(PTEDIT_MT_UC)), mt);
    } else {
      printf("No WC MT available!\n");
      return -1;
    }

    ptedit_entry_t entry = ptedit_resolve(dst, 0);
    entry.pte = ptedit_apply_mt(entry.pte, mt);
    entry.valid = PTEDIT_VALID_MASK_PTE;
    ptedit_update(dst, 0, &entry);
  ptedit_cleanup();
#endif

  char * str =
    "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
    "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ"
    "abcdefghijklmnopqrstuvwxyz123456"
    "abcdefghijklmnopqrstuvwxyz123456"
    "abcdefghijklmnopqrstuvwxyz123456"
    "abcdefghijklmnopqrstuvwxyz123456"
    "abcdefghijklmnopqrstuvwxyz123456"
    "abcdefghijklmnopqrstuvwxyz123456"
  ;

  memcpy(src, str, strlen(str));

#if VICTIM_WRITEIO
  int fd = open("dummy.txt", O_CREAT | O_WRONLY, S_IRUSR);
  while(1){
    int r = write(fd, src, strlen(str));
  }
#endif

#if VICTIM_REPMOV
  asm volatile(
    "mov %2, %%r11\n"
    "l:\n"
    "mov %%r11, %%rcx\n"
    "mov %0, %%rsi\n"
    "mov %1, %%rdi\n"
    "rep movsb\n"
    "jmp l\n"
  : : "r"(src), "r"(dst), "r"(strlen(str)): "r11");
#endif

#if VICTIM_REPSTOS
  asm volatile(
    "mov %1, %%r11\n"
    "l:\n"
    "mov %%r11, %%rcx\n"
    "mov %0, %%rdi\n"
    "mov $0x42, %%al\n"
    "rep stosb\n"
    "jmp l\n"
  : : "d"(src), "r"(strlen(str)): "r11");
#endif

  return 0;
}
