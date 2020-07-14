.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1728f, %rsi
lea addresses_WT_ht+0x6d0b, %rdi
nop
nop
nop
nop
mfence
mov $89, %rcx
rep movsq
nop
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0x1b6ac, %r10
nop
xor %r8, %r8
movl $0x61626364, (%r10)
nop
nop
nop
nop
add $7074, %r14
lea addresses_WT_ht+0x3e4b, %rsi
lea addresses_normal_ht+0x1910b, %rdi
dec %r8
mov $13, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r8
lea addresses_UC_ht+0xefdb, %rcx
clflush (%rcx)
cmp $39661, %rdi
movb (%rcx), %r8b
nop
nop
and $50902, %rdi
lea addresses_UC_ht+0x1170b, %rsi
lea addresses_WC_ht+0x1a18b, %rdi
nop
nop
add $12835, %r13
mov $116, %rcx
rep movsq
nop
nop
nop
inc %r10
lea addresses_A_ht+0x13b0b, %rsi
lea addresses_WC_ht+0x17313, %rdi
and %r10, %r10
mov $69, %rcx
rep movsl
nop
nop
xor %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0xa50b, %rsi
lea addresses_D+0x1beab, %rdi
nop
xor %r13, %r13
mov $13, %rcx
rep movsq
inc %r15

// Store
lea addresses_WC+0x4f0b, %r13
nop
nop
nop
nop
add %rsi, %rsi
movb $0x51, (%r13)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r13
add %r13, %r13

// Faulty Load
lea addresses_A+0xa50b, %rsi
nop
nop
and $30708, %rdi
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %rcx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'00': 1}
00
*/
