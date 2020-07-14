.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x184f7, %r8
nop
nop
nop
nop
add %r15, %r15
mov (%r8), %r12w
nop
cmp $23459, %r9
lea addresses_normal_ht+0xe093, %r13
nop
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %rdx
movq %rdx, (%r13)
nop
cmp $24269, %r13
lea addresses_WC_ht+0x189a3, %r13
nop
nop
add %rax, %rax
movb (%r13), %r8b
nop
nop
nop
nop
nop
inc %rax
lea addresses_UC_ht+0x11db7, %rsi
lea addresses_normal_ht+0x5f7f, %rdi
clflush (%rsi)
clflush (%rdi)
and %r8, %r8
mov $22, %rcx
rep movsl
nop
cmp %rax, %rax
lea addresses_A_ht+0x1582f, %rax
nop
nop
nop
nop
add $10025, %r9
mov (%rax), %r15d
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x1402f, %rsi
lea addresses_UC_ht+0x10dd9, %rdi
add %r15, %r15
mov $23, %rcx
rep movsb
xor $16059, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rbx

// Store
lea addresses_RW+0xc523, %rbp
nop
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %r10
movq %r10, (%rbp)
nop
sub $15289, %r9

// Store
lea addresses_WT+0x1f31a, %rax
clflush (%rax)
nop
add %rbx, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
movups %xmm7, (%rax)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r10
cmp %r10, %r10

// Store
lea addresses_PSE+0xba6f, %r10
nop
nop
nop
add $37019, %rbp
movw $0x5152, (%r10)
nop
nop
and $29735, %r14

// Store
lea addresses_PSE+0x1117, %rax
nop
dec %r12
mov $0x5152535455565758, %r9
movq %r9, (%rax)
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_WC+0x228d, %rbx
nop
nop
nop
nop
nop
sub $3642, %r10
mov $0x5152535455565758, %r14
movq %r14, (%rbx)
nop
nop
nop
nop
nop
cmp $10945, %r9

// Store
lea addresses_normal+0xcacd, %r12
nop
nop
nop
nop
dec %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
movups %xmm3, (%r12)
nop
nop
nop
add %rax, %rax

// Load
lea addresses_normal+0x196af, %rax
nop
nop
nop
and $36255, %rbp
mov (%rax), %r12d
xor $20680, %r9

// Load
lea addresses_RW+0xe76f, %rbx
nop
nop
nop
sub $36970, %r9
mov (%rbx), %r14d
nop
nop
nop
and %r12, %r12

// Store
lea addresses_UC+0x1f957, %rax
nop
nop
lfence
movw $0x5152, (%rax)
nop
inc %r12

// Store
lea addresses_PSE+0x1c42f, %rax
clflush (%rax)
nop
nop
add $25861, %r10
movl $0x51525354, (%rax)
xor %r12, %r12

// Load
lea addresses_A+0xd02b, %rbp
nop
nop
nop
xor %r9, %r9
movaps (%rbp), %xmm3
vpextrq $1, %xmm3, %rbx
nop
nop
mfence

// Store
lea addresses_US+0x1ec2f, %rbp
nop
nop
nop
and $22531, %r12
mov $0x5152535455565758, %rax
movq %rax, (%rbp)
nop
nop
nop
inc %r14

// Faulty Load
lea addresses_US+0x1ec2f, %rbx
nop
nop
nop
and %r12, %r12
mov (%rbx), %r14d
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'b0': 1}
b0
*/
