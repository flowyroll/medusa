.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x12405, %rbx
nop
nop
nop
nop
add $13046, %r12
movw $0x6162, (%rbx)
nop
nop
add $14541, %r8
lea addresses_WC_ht+0x9805, %rsi
lea addresses_WT_ht+0x1c805, %rdi
nop
nop
nop
add $54946, %rbx
mov $113, %rcx
rep movsw
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x95, %rbx
nop
nop
sub %r8, %r8
movups (%rbx), %xmm7
vpextrq $0, %xmm7, %rdx
sub %rbx, %rbx
lea addresses_A_ht+0x17b4b, %rbx
nop
nop
nop
nop
dec %r12
movb (%rbx), %dl
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x122f5, %rsi
lea addresses_A_ht+0x12405, %rdi
clflush (%rsi)
nop
sub $3575, %r14
mov $60, %rcx
rep movsq
add $4762, %rcx
lea addresses_UC_ht+0x2405, %rsi
lea addresses_D_ht+0x7405, %rdi
nop
nop
and $15599, %r12
mov $33, %rcx
rep movsq
add $18947, %r12
lea addresses_A_ht+0x5c7d, %rsi
nop
add %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_WC_ht+0xd95d, %rsi
lea addresses_normal_ht+0x6695, %rdi
clflush (%rsi)
nop
nop
nop
and $38453, %r12
mov $127, %rcx
rep movsb
xor $39481, %rsi
lea addresses_D_ht+0x4605, %rdi
nop
nop
nop
nop
nop
add $54156, %rdx
mov (%rdi), %rcx
nop
nop
inc %rcx
lea addresses_WT_ht+0x17a3d, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %r14, %r14
movl $0x61626364, (%rdi)
and $31672, %r14
lea addresses_A_ht+0x1d82d, %rdi
nop
nop
nop
nop
xor %r14, %r14
movw $0x6162, (%rdi)
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x13eb3, %rsi
lea addresses_A_ht+0x16795, %rdi
xor %rbx, %rbx
mov $74, %rcx
rep movsw
nop
nop
nop
nop
nop
and $15879, %rsi
lea addresses_UC_ht+0x10f95, %r14
nop
sub %rcx, %rcx
mov (%r14), %ebx
nop
nop
cmp $49869, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x10a05, %r14
nop
nop
nop
nop
sub %rsi, %rsi
movw $0x5152, (%r14)
nop
and $50376, %rsi

// Store
lea addresses_PSE+0x189a5, %r10
cmp $57771, %r13
mov $0x5152535455565758, %r12
movq %r12, %xmm5
vmovups %ymm5, (%r10)
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_PSE+0x1e66d, %rbp
nop
nop
nop
nop
inc %r13
mov $0x5152535455565758, %r12
movq %r12, (%rbp)
nop
nop
and $51196, %rsi

// Store
lea addresses_A+0x148b1, %rsi
inc %r10
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
cmp $61215, %rbp

// REPMOV
lea addresses_A+0x19805, %rsi
lea addresses_D+0xcfbd, %rdi
nop
nop
sub %r14, %r14
mov $65, %rcx
rep movsb
nop
nop
nop
add $4925, %r10

// Load
lea addresses_US+0x7505, %rbp
nop
nop
nop
nop
nop
cmp $48935, %r10
movups (%rbp), %xmm0
vpextrq $0, %xmm0, %r14
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_RW+0x4785, %rsi
nop
nop
nop
nop
nop
and $14034, %rbp
mov $0x5152535455565758, %r10
movq %r10, (%rsi)
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_WC+0x1f505, %r10
nop
xor $20691, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
nop
sub $59136, %r12

// Store
lea addresses_normal+0x18465, %rbx
nop
nop
nop
nop
nop
cmp $32906, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%rbx)
nop
nop
xor %r12, %r12

// Store
lea addresses_normal+0x9005, %rbp
nop
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovups %ymm3, (%rbp)
nop
nop
nop
nop
inc %r14

// Store
lea addresses_PSE+0x1ea63, %rbp
nop
nop
add $36298, %rbx
movw $0x5152, (%rbp)

// Exception!!!
nop
mov (0), %rcx
nop
nop
dec %r10

// Store
lea addresses_WT+0x5805, %r10
nop
nop
nop
nop
add $403, %rbx
movw $0x5152, (%r10)
nop
nop
and $58669, %rbp

// Store
lea addresses_normal+0x19a05, %rdi
clflush (%rdi)
nop
nop
nop
sub $29704, %r13
mov $0x5152535455565758, %r14
movq %r14, (%rdi)
sub $58215, %rcx

// Faulty Load
lea addresses_normal+0x9005, %r13
clflush (%r13)
nop
nop
cmp %rcx, %rcx
movups (%r13), %xmm4
vpextrq $1, %xmm4, %rbp
lea oracles, %r13
and $0xff, %rbp
shlq $12, %rbp
mov (%r13,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 14249}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
