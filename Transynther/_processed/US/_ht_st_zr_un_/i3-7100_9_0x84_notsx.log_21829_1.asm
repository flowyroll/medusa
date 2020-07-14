.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x9273, %rsi
lea addresses_A_ht+0x773f, %rdi
nop
nop
add %r15, %r15
mov $68, %rcx
rep movsw
xor %r10, %r10
lea addresses_UC_ht+0x149af, %rsi
lea addresses_D_ht+0x1c67f, %rdi
nop
nop
nop
sub %r15, %r15
mov $0, %rcx
rep movsq
nop
add %rsi, %rsi
lea addresses_WC_ht+0x141f3, %rsi
lea addresses_D_ht+0x17a7f, %rdi
nop
add %r12, %r12
mov $80, %rcx
rep movsw
nop
nop
nop
nop
nop
add $63870, %r15
lea addresses_D_ht+0x141ef, %r12
nop
nop
nop
nop
nop
sub %r11, %r11
mov (%r12), %r10
nop
nop
nop
nop
add %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rbx
push %rcx

// Faulty Load
lea addresses_US+0x11e7f, %rcx
clflush (%rcx)
nop
nop
nop
nop
and $25201, %r15
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %r14
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'b7': 4136, '01': 13, '08': 3, 'e0': 3, '3c': 461, '48': 2049, '80': 1, '46': 2, '02': 402, '63': 2, '00': 14753, 'de': 4}
00 00 00 00 00 b7 00 00 00 48 00 00 b7 b7 00 00 48 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 b7 48 b7 48 00 00 00 00 b7 00 b7 b7 00 00 b7 00 00 48 48 b7 b7 b7 00 48 00 00 00 b7 00 00 00 b7 00 b7 b7 48 00 00 b7 b7 00 b7 00 b7 00 00 00 00 00 00 48 02 b7 00 00 48 00 00 00 48 00 00 00 00 b7 00 00 00 00 00 00 48 00 00 b7 b7 b7 b7 00 48 b7 00 00 00 00 48 00 00 00 00 b7 00 00 48 00 00 00 00 b7 00 b7 b7 00 48 00 00 00 00 00 00 00 00 00 b7 48 00 00 00 b7 00 00 b7 00 48 00 00 00 00 00 00 b7 00 00 00 00 00 00 b7 b7 00 b7 00 b7 00 00 b7 48 48 00 00 48 00 b7 00 00 b7 00 00 b7 00 00 00 b7 48 00 b7 00 b7 00 00 b7 b7 b7 00 00 b7 b7 00 00 b7 00 00 b7 b7 00 48 b7 00 00 b7 00 00 b7 00 48 00 00 00 48 b7 b7 b7 00 b7 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 b7 48 b7 00 00 00 b7 00 00 00 00 00 00 00 48 00 00 00 48 48 00 00 b7 00 00 00 00 00 00 00 00 00 b7 b7 00 00 00 00 00 48 b7 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 b7 00 b7 b7 00 b7 b7 48 b7 00 48 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 b7 00 00 b7 00 48 b7 48 b7 00 00 b7 b7 00 b7 00 00 00 b7 00 00 00 48 00 b7 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 b7 b7 b7 00 00 00 00 48 00 00 00 00 48 b7 00 00 00 48 00 00 48 b7 00 00 00 00 48 48 b7 b7 b7 b7 00 00 00 00 48 00 00 48 b7 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 b7 00 48 b7 00 b7 00 48 b7 48 00 00 00 00 00 00 b7 00 48 00 b7 00 00 00 00 00 b7 00 00 00 48 48 00 00 b7 b7 00 00 00 b7 b7 00 00 00 00 00 00 00 b7 b7 00 48 00 00 00 00 00 b7 00 00 b7 48 00 48 b7 00 00 00 00 00 48 48 00 00 00 48 b7 00 b7 00 00 b7 00 00 00 00 00 b7 48 b7 b7 00 00 00 00 48 48 00 00 b7 00 00 00 00 b7 00 00 00 00 00 00 b7 00 48 00 00 00 00 00 00 00 3c 00 00 b7 b7 b7 b7 00 48 b7 00 00 b7 48 b7 b7 00 00 b7 00 00 00 00 48 00 00 00 00 00 b7 00 00 b7 48 00 00 00 00 b7 48 00 00 b7 b7 00 00 b7 b7 b7 b7 00 48 48 00 00 00 00 48 b7 b7 b7 02 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 b7 00 00 48 00 00 48 00 00 00 48 b7 48 b7 00 00 00 00 00 00 00 48 00 b7 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b7 48 00 b7 00 b7 00 b7 b7 00 00 48 b7 00 b7 00 00 00 48 b7 b7 b7 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b7 00 00 00 00 00 00 b7 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 b7 b7 b7 48 00 00 00 00 00 00 00 00 00 00 00 00 b7 00 00 00 b7 00 b7 48 00 00 b7 48 00 00 00 00 00 00 00 00 b7 48 48 b7 00 b7 00 00 b7 00 b7 48 b7 00 b7 00 b7 b7 b7 00 48 00 00 b7 b7 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 3c 48 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 48 48 b7 00 b7 00 b7 00 00 00 00 00 00 00 b7 b7 00 b7 b7 00 00 00 48 00 b7 00 b7 00 48 00 48 00 00 00 00 b7 00 48 48 00 00 00 00 48 00 00 00 3c 00 00 00 00 b7 00 b7 00 b7 00 00 b7 48 b7 00 00 48 b7 b7 00 b7 00 b7 b7 00 48 00 00 b7 00 00 48 00 b7 48 00 00 00 b7
*/
