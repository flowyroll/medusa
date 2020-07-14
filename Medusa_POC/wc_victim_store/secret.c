#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <memory.h>
#include <sys/mman.h>
#include <unistd.h>
#include "../../PTEditor/ptedit_header.h"
#include "config.h"

#define PAGE_SIZE 4096

unsigned char __attribute__((aligned(PAGE_SIZE))) src[PAGE_SIZE];
unsigned char __attribute__((aligned(PAGE_SIZE))) dst[PAGE_SIZE];

int main(int argc, char* argv[])
{
  memset(src, 0, PAGE_SIZE);
  memset(dst, 0, PAGE_SIZE);

  char secret = 'N';

  int i = 0;
  for (int c = 0; c < 1000; c++) {
    for (i = 0; i < 16; i++) {
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
  }}

  return 0;
}
