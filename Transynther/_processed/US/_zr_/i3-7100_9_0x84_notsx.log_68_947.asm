.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x19cd6, %rsi
lea addresses_WC_ht+0x3796, %rdi
nop
nop
and %r12, %r12
mov $29, %rcx
rep movsq
nop
nop
nop
nop
xor %r14, %r14
lea addresses_WT_ht+0x11562, %r8
nop
nop
nop
nop
nop
sub $50417, %rax
mov (%r8), %r14
nop
nop
nop
inc %r14
lea addresses_D_ht+0x186d6, %rsi
lea addresses_A_ht+0x735e, %rdi
nop
nop
nop
nop
xor $16305, %r15
mov $67, %rcx
rep movsl
cmp %r8, %r8
lea addresses_normal_ht+0x1baf6, %rsi
lea addresses_WC_ht+0x62e6, %rdi
nop
nop
nop
nop
and $21299, %r14
mov $89, %rcx
rep movsl
xor $8032, %rsi
lea addresses_WT_ht+0x1723e, %r14
and %r15, %r15
movw $0x6162, (%r14)
nop
sub $2874, %rdi
lea addresses_UC_ht+0x19a16, %rsi
nop
dec %r12
movb (%rsi), %cl
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x13b26, %rsi
lea addresses_normal_ht+0xaa3e, %rdi
clflush (%rdi)
and $64487, %r12
mov $18, %rcx
rep movsw
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0xd672, %rsi
lea addresses_UC_ht+0xad72, %rdi
nop
dec %r15
mov $125, %rcx
rep movsl
nop
nop
nop
nop
sub $46872, %rdi
lea addresses_normal_ht+0x6fa6, %rcx
nop
nop
nop
nop
nop
cmp $2220, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0xf426, %rsi
nop
nop
nop
nop
nop
add %r15, %r15
movb (%rsi), %r14b
nop
nop
dec %r12
lea addresses_WC_ht+0x12086, %r8
add $51366, %rdi
mov (%r8), %r14d
and $32112, %rdi
lea addresses_A_ht+0x3ba6, %r15
nop
nop
nop
sub %r14, %r14
movb (%r15), %r8b
nop
nop
nop
nop
dec %r14
lea addresses_A_ht+0x1686, %r14
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm3
and $0xffffffffffffffc0, %r14
movaps %xmm3, (%r14)
nop
nop
nop
sub %r8, %r8
lea addresses_UC_ht+0xbd56, %rdi
clflush (%rdi)
nop
nop
and %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%rdi)
nop
xor %rdi, %rdi
lea addresses_A_ht+0x3a97, %rsi
lea addresses_WC_ht+0x11526, %rdi
nop
nop
nop
and $49610, %rax
mov $100, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x1ff26, %rsi
nop
nop
nop
xor $29342, %r10
movl $0x51525354, (%rsi)
nop
nop
dec %rsi

// Faulty Load
lea addresses_US+0x12526, %rcx
sub $46516, %rdi
mov (%rcx), %r9
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'00': 68}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
