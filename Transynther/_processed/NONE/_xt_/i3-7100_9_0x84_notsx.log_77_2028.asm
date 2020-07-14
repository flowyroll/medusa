.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x12ff2, %rsi
lea addresses_A_ht+0x1cbf2, %rdi
nop
nop
nop
nop
cmp %r8, %r8
mov $10, %rcx
rep movsw
and %r14, %r14
lea addresses_WC_ht+0x2ab2, %r9
nop
nop
dec %rsi
mov (%r9), %cx
nop
nop
xor $63802, %rdi
lea addresses_normal_ht+0xab52, %rsi
lea addresses_A_ht+0x1a142, %rdi
nop
nop
xor $62827, %r9
mov $66, %rcx
rep movsq
nop
cmp $26819, %rdi
lea addresses_normal_ht+0xf72e, %rdi
nop
sub $59223, %r12
movb (%rdi), %r8b
nop
add $38039, %rdi
lea addresses_WT_ht+0x9a72, %rsi
lea addresses_WT_ht+0x1b41a, %rdi
clflush (%rdi)
xor $58477, %rdx
mov $85, %rcx
rep movsl
nop
nop
nop
xor %r14, %r14
lea addresses_WC_ht+0x1afe2, %rsi
lea addresses_WC_ht+0x152f2, %rdi
clflush (%rdi)
nop
nop
inc %r9
mov $123, %rcx
rep movsq
nop
nop
nop
cmp %r8, %r8
lea addresses_WC_ht+0x1e99d, %rdi
nop
nop
nop
dec %r8
movw $0x6162, (%rdi)
add $64796, %r14
lea addresses_D_ht+0x9bf2, %rsi
lea addresses_WC_ht+0x1a7d2, %rdi
nop
nop
add $45661, %rdx
mov $89, %rcx
rep movsb
cmp %rsi, %rsi
lea addresses_WT_ht+0x1ca95, %rsi
lea addresses_normal_ht+0x682a, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $45688, %r12
mov $62, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_A_ht+0x31e5, %rsi
lea addresses_A_ht+0x1145e, %rdi
nop
and %r12, %r12
mov $69, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $5705, %rcx
lea addresses_UC_ht+0xf3aa, %rsi
lea addresses_A_ht+0x15ff2, %rdi
nop
nop
add $50907, %rdx
mov $45, %rcx
rep movsq
nop
nop
nop
nop
sub %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rbp
push %rdx
push %rsi

// Store
lea addresses_A+0x1e48a, %r15
nop
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovntdq %ymm2, (%r15)
nop
and $8740, %rsi

// Faulty Load
lea addresses_RW+0x133f2, %rdx
clflush (%rdx)
nop
nop
nop
sub %r10, %r10
movups (%rdx), %xmm1
vpextrq $1, %xmm1, %r9
lea oracles, %r15
and $0xff, %r9
shlq $12, %r9
mov (%r15,%r9,1), %r9
pop %rsi
pop %rdx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'32': 77}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
