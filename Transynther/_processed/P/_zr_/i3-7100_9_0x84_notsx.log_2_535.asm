.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xb9c6, %r14
clflush (%r14)
mfence
movl $0x61626364, (%r14)
nop
add %r13, %r13
lea addresses_WC_ht+0x1d4e6, %rdx
nop
and $44508, %rbp
movw $0x6162, (%rdx)
sub $62921, %r14
lea addresses_WT_ht+0x8fc6, %rsi
lea addresses_WC_ht+0x1dbc6, %rdi
nop
nop
add %r13, %r13
mov $88, %rcx
rep movsq
nop
nop
nop
and $29841, %rdx
lea addresses_A_ht+0xa7c6, %rsi
lea addresses_D_ht+0x172c6, %rdi
nop
nop
nop
xor %r13, %r13
mov $43, %rcx
rep movsq
nop
nop
nop
nop
add $34782, %rdx
lea addresses_normal_ht+0x606, %rcx
nop
nop
nop
nop
sub $61582, %rbp
movl $0x61626364, (%rcx)
nop
nop
nop
inc %rdx
lea addresses_UC_ht+0x1b7c6, %rsi
clflush (%rsi)
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm6
and $0xffffffffffffffc0, %rsi
movaps %xmm6, (%rsi)
cmp %r15, %r15
lea addresses_WT_ht+0xe2a6, %r14
nop
nop
nop
sub %r8, %r8
mov (%r14), %r15w
xor $5951, %r8
lea addresses_UC_ht+0x1e9e6, %rcx
nop
nop
nop
dec %rdi
movb (%rcx), %r13b
nop
nop
nop
xor %rbp, %rbp
lea addresses_D_ht+0x1c13e, %rsi
lea addresses_UC_ht+0x1a746, %rdi
nop
nop
add %r14, %r14
mov $74, %rcx
rep movsb
and %r14, %r14
lea addresses_A_ht+0x3d06, %rsi
lea addresses_UC_ht+0x163c6, %rdi
clflush (%rsi)
nop
dec %r8
mov $28, %rcx
rep movsw
nop
nop
xor $61504, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_A+0x1f5c6, %rax
nop
nop
nop
add %rbp, %rbp
movw $0x5152, (%rax)
nop
nop
nop
nop
cmp $8928, %rax

// Faulty Load
mov $0xfc6, %rcx
nop
nop
nop
sub $1516, %r10
mov (%rcx), %edx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'00': 2}
00 00
*/
