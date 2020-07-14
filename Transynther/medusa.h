
#include <signal.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <time.h>
#include <signal.h>
#include <setjmp.h>
#include <pthread.h>
#include <sched.h>
#include <sys/mman.h>


#include "../PTEditor/ptedit_header.h"
#include "../cacheutils.h"

/* see asm.S */
extern void s_faulty_load();
extern void s_prepare_buffers();

extern uint64_t CACHE_THRESHOLD;
extern uint8_t * addresses_US;
extern uint8_t * addresses_RW;
extern uint8_t * addresses_PSE;
extern uint8_t * addresses_MPK;
extern uint8_t * addresses_normal;
extern uint8_t * addresses_A;
extern uint8_t * addresses_D;
extern uint8_t * addresses_UC;
extern uint8_t * addresses_WC;
extern uint8_t * addresses_WT;
extern uint8_t * addresses_normal_ht;
extern uint8_t * addresses_A_ht;
extern uint8_t * addresses_D_ht;
extern uint8_t * addresses_UC_ht;
extern uint8_t * addresses_WC_ht;
extern uint8_t * addresses_WT_ht;
extern uint8_t * oracles;

#define PAGE_SIZE 4096


void setup_oracle(){
    printf("[+] Flush+Reload Threshold: ");
    CACHE_MISS = detect_flush_reload_threshold();
    printf("%lu\n", CACHE_MISS);
    for(int i = 0; i < 256; i++){
        flush((uint8_t *)&oracles + i * PAGE_SIZE);
    }
}

void setup_pages(){
    ptedit_init();

    int mt_type[] = {PTEDIT_MT_UC, PTEDIT_MT_WC,PTEDIT_MT_WT};
    int mt[sizeof(mt_type)/sizeof(int)];
    for(int i = 0; i < sizeof(mt)/sizeof(int); i++)
    {
        mt[i] = ptedit_find_first_mt(mt_type[i]);
        if (mt[i] == -1) {
            printf("MT not available!\n");
            exit(1);
        }
    }

    uint8_t * ptr = NULL;
    ptedit_entry_t entry;
    for(int i = 0; i < 32; i++){

        ptr = (uint8_t *)&addresses_US + i * PAGE_SIZE;
        ptr[0] = ptr[0] + 1 - 1;
        ptedit_pte_clear_bit(ptr, 0, PTEDIT_PAGE_BIT_USER);

        ptr = (uint8_t *)&addresses_RW + i * PAGE_SIZE;
        ptr[0] = ptr[0] + 1 - 1;
        ptedit_pte_clear_bit(ptr, 0, PTEDIT_PAGE_BIT_RW);

        mprotect(ptr, PAGE_SIZE, PROT_READ);

        ptr = (uint8_t *)&addresses_PSE + i * PAGE_SIZE;
        ptr[0] = ptr[0] + 1 - 1;
        ptedit_pte_set_bit(ptr, 0, PTEDIT_PAGE_BIT_PSE);

        ptr = (uint8_t *)&addresses_MPK + i * PAGE_SIZE;
        ptr[0] = ptr[0] + 1 - 1;
        ptedit_pte_set_bit(ptr, 0, PTEDIT_PAGE_BIT_PKEY_BIT0);

        ptr = (uint8_t *)&addresses_normal + i * PAGE_SIZE;
        ptr[0] = ptr[0] + 1 - 1;

        ptr = (uint8_t *)&addresses_A + i * PAGE_SIZE;
        ptr[0] = ptr[0] + 1 - 1;
        ptedit_pte_clear_bit(ptr, 0, PTEDIT_PAGE_BIT_ACCESSED);

        ptr = (uint8_t *)&addresses_D + i * PAGE_SIZE;
        ptr[0] = ptr[0] + 1 - 1;
        ptedit_pte_clear_bit(ptr, 0, PTEDIT_PAGE_BIT_DIRTY);

        ptr = (uint8_t *)&addresses_UC + i * PAGE_SIZE;
        ptr[0] = ptr[0] + 1 - 1;
        entry = ptedit_resolve(ptr, 0);
        entry.pte = ptedit_apply_mt(entry.pte, mt[0]);
        entry.valid = PTEDIT_VALID_MASK_PTE;
        ptedit_update(ptr, 0, &entry);

        ptr = (uint8_t *)&addresses_WC + i * PAGE_SIZE;
        ptr[0] = ptr[0] + 1 - 1;
        entry = ptedit_resolve(ptr, 0);
        entry.pte = ptedit_apply_mt(entry.pte, mt[1]);
        entry.valid = PTEDIT_VALID_MASK_PTE;
        ptedit_update(ptr, 0, &entry);

        ptr = (uint8_t *)&addresses_WT + i * PAGE_SIZE;
        ptr[0] = ptr[0] + 1 - 1;
        entry = ptedit_resolve(ptr, 0);
        entry.pte = ptedit_apply_mt(entry.pte, mt[2]);
        entry.valid = PTEDIT_VALID_MASK_PTE;
        ptedit_update(ptr, 0, &entry);

        ptr = (uint8_t *)&addresses_normal_ht + i * PAGE_SIZE;
        ptr[0] = ptr[0] + 1 - 1;

        ptr = (uint8_t *)&addresses_A_ht + i * PAGE_SIZE;
        ptr[0] = ptr[0] + 1 - 1;
        ptedit_pte_clear_bit(ptr, 0, PTEDIT_PAGE_BIT_ACCESSED);

        ptr = (uint8_t *)&addresses_D_ht + i * PAGE_SIZE;
        ptr[0] = ptr[0] + 1 - 1;
        ptedit_pte_clear_bit(ptr, 0, PTEDIT_PAGE_BIT_DIRTY);

        ptr = (uint8_t *)&addresses_UC_ht + i * PAGE_SIZE;
        ptr[0] = ptr[0] + 1 - 1;
        entry = ptedit_resolve(ptr, 0);
        entry.pte = ptedit_apply_mt(entry.pte, mt[0]);
        entry.valid = PTEDIT_VALID_MASK_PTE;
        ptedit_update(ptr, 0, &entry);

        ptr = (uint8_t *)&addresses_WC_ht + i * PAGE_SIZE;
        ptr[0] = ptr[0] + 1 - 1;
        entry = ptedit_resolve(ptr, 0);
        entry.pte = ptedit_apply_mt(entry.pte, mt[1]);
        entry.valid = PTEDIT_VALID_MASK_PTE;
        ptedit_update(ptr, 0, &entry);

        ptr = (uint8_t *)&addresses_WT_ht + i * PAGE_SIZE;
        ptr[0] = ptr[0] + 1 - 1;
        entry = ptedit_resolve(ptr, 0);
        entry.pte = ptedit_apply_mt(entry.pte, mt[2]);
        entry.valid = PTEDIT_VALID_MASK_PTE;
        ptedit_update(ptr, 0, &entry);
    }
    ptedit_cleanup();
}
