.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x12ac7, %rsi
lea addresses_WT_ht+0xc302, %rdi
nop
nop
xor %rax, %rax
mov $107, %rcx
rep movsq
nop
nop
inc %r13
lea addresses_D_ht+0x1363a, %r10
clflush (%r10)
nop
inc %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm4
movups %xmm4, (%r10)
nop
nop
cmp $17177, %rdi
lea addresses_UC_ht+0x9b0a, %rax
nop
nop
sub $23847, %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%rax)
nop
nop
cmp $14710, %rax
lea addresses_WT_ht+0x5915, %rsi
nop
nop
and %r13, %r13
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0xe63a, %rsi
nop
nop
nop
nop
nop
cmp $49483, %rbp
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm7
vpextrq $1, %xmm7, %rdi
dec %rcx
lea addresses_UC_ht+0x113fa, %rcx
sub %rsi, %rsi
movb (%rcx), %r13b
nop
nop
cmp $58139, %rax
lea addresses_UC_ht+0x168fa, %rsi
lea addresses_UC_ht+0x7359, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov $115, %rcx
rep movsl
nop
sub $45569, %rbp
lea addresses_WC_ht+0x6138, %rsi
lea addresses_D_ht+0x203a, %rdi
nop
nop
nop
nop
add %rax, %rax
mov $21, %rcx
rep movsb
nop
nop
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x79a, %rsi
lea addresses_WC_ht+0x13206, %rdi
clflush (%rdi)
nop
dec %rax
mov $33, %rcx
rep movsq
nop
nop
add $16709, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rbp
push %rbx
push %rsi

// Store
lea addresses_normal+0x1e3a, %r12
sub %rbx, %rbx
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_D+0x10122, %r10
nop
nop
and $4167, %rsi
mov $0x5152535455565758, %r14
movq %r14, (%r10)
nop
nop
nop
nop
xor %r12, %r12

// Load
lea addresses_US+0xb63a, %rsi
nop
nop
nop
nop
nop
add %r9, %r9
mov (%rsi), %r12w
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_normal+0x1873a, %r10
clflush (%r10)
nop
nop
and $2211, %r14
movl $0x51525354, (%r10)
nop
nop
nop
sub $13129, %rsi

// Load
mov $0x63a, %r12
nop
nop
cmp %r9, %r9
mov (%r12), %r10w
nop
dec %r10

// Store
lea addresses_WC+0x1f63a, %r12
cmp $46740, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
vmovups %ymm2, (%r12)
nop
nop
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_A+0x19b3a, %r14
nop
nop
nop
sub %r10, %r10
movw $0x5152, (%r14)
inc %r14

// Store
lea addresses_A+0x15a3a, %rbx
nop
nop
nop
nop
nop
cmp $13963, %rsi
mov $0x5152535455565758, %r9
movq %r9, (%rbx)
nop
sub %rsi, %rsi

// Store
lea addresses_D+0x11aa6, %rbp
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovntdq %ymm1, (%rbp)
nop
xor %r12, %r12

// Faulty Load
lea addresses_US+0xb63a, %r14
nop
nop
nop
nop
sub $43419, %r12
mov (%r14), %bx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'58': 33}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
