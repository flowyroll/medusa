
    .data

    .global oracles
.align 0x1000
oracles:
    .space 4096*256, 0

dummy:
    .space 0x1000

junk:
    .space 4096*4, 0

    .global addresses_US
addresses_US:
    .space 4096*32, 0x30

.global addresses_MPK
addresses_MPK:
    .space 4096*32, 0x31

    .global addresses_RW
addresses_RW:
    .space 4096*32, 0x32

    .global addresses_PSE
addresses_PSE:
    .space 4096*32, 0x33

    .global addresses_normal
addresses_normal:
    .space 4096*32, 0x34

    .global addresses_A
addresses_A:
    .space 4096*32, 0x35

    .global addresses_D
addresses_D:
    .space 4096*32, 0x36

    .global addresses_UC
addresses_UC:
    .space 4096*32, 0x37

.global addresses_WC
addresses_WC:
    .space 4096*32, 0x38

.global addresses_WT
addresses_WT:
    .space 4096*32, 0x39

    .global addresses_normal_ht
addresses_normal_ht:
    .space 4096*32, 0x44

    .global addresses_A_ht
addresses_A_ht:
    .space 4096*32, 0x45

    .global addresses_D_ht
addresses_D_ht:
    .space 4096*32, 0x46

    .global addresses_UC_ht
addresses_UC_ht:
    .space 4096*32, 0x47

.global addresses_WC_ht
addresses_WC_ht:
    .space 4096*32, 0x48

.global addresses_WT_ht
addresses_WT_ht:
    .space 4096*32, 0x49
