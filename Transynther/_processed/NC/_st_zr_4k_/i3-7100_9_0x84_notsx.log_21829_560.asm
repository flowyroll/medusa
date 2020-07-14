.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x4f0a, %rsi
lea addresses_normal_ht+0x1530a, %rdi
nop
nop
nop
and %rdx, %rdx
mov $126, %rcx
rep movsw
nop
nop
sub $34165, %r13
lea addresses_A_ht+0x1f2a, %rdi
cmp %r12, %r12
mov (%rdi), %rcx
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x1e70a, %rsi
lea addresses_WT_ht+0x2f0a, %rdi
nop
nop
nop
dec %r15
mov $71, %rcx
rep movsw
nop
nop
mfence
lea addresses_WT_ht+0x1592, %rsi
lea addresses_normal_ht+0x1742, %rdi
nop
nop
nop
nop
nop
and %r13, %r13
mov $9, %rcx
rep movsb
xor %r13, %r13
lea addresses_UC_ht+0x858a, %r15
dec %rdx
movups (%r15), %xmm2
vpextrq $1, %xmm2, %r12
nop
nop
add $39935, %r12
lea addresses_D_ht+0x138ca, %rsi
lea addresses_D_ht+0x164f6, %rdi
nop
nop
nop
cmp %rbx, %rbx
mov $32, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x10a0a, %rsi
lea addresses_A_ht+0x880a, %rdi
clflush (%rsi)
nop
nop
xor %r12, %r12
mov $46, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %r9
push %rdi

// Store
lea addresses_RW+0x470a, %r14
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovups %ymm0, (%r14)
nop
nop
cmp %r13, %r13

// Store
lea addresses_RW+0x840a, %r15
sub $215, %r9
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
add %r8, %r8

// Load
lea addresses_normal+0x1ce56, %r15
nop
nop
nop
nop
and $58256, %rdi
movb (%r15), %r8b
nop
add %r9, %r9

// Load
lea addresses_RW+0xcbca, %r8
nop
nop
nop
dec %rdi
movups (%r8), %xmm4
vpextrq $1, %xmm4, %r15
nop
nop
nop
nop
nop
sub $40495, %r8

// Faulty Load
mov $0x74228f000000070a, %r9
nop
add $63208, %r13
mov (%r9), %r15
lea oracles, %r10
and $0xff, %r15
shlq $12, %r15
mov (%r10,%r15,1), %r15
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'54': 1, '00': 3532, '58': 18296}
58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 00 58 58 58 58 00 00 58 00 58 58 00 58 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 00 58 58 58 00 00 58 58 00 58 58 58 00 58 58 58 58 58 58 58 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 00 58 00 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 00 58 58 00 00 58 58 58 58 00 58 00 58 00 58 00 58 58 58 58 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 00 58 58 58 00 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 00 00 58 58 00 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 00 00 00 58 58 58 58 00 58 58 58 00 58 58 00 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 00 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 00 58 58 58 00 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 00 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58
*/
