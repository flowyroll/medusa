.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1a539, %rsi
lea addresses_normal_ht+0xab3, %rdi
nop
nop
nop
and $46839, %r15
mov $67, %rcx
rep movsw
xor $3197, %rcx
lea addresses_WC_ht+0x15d43, %rbp
nop
nop
nop
nop
and $27942, %rdi
movl $0x61626364, (%rbp)
nop
nop
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0x8183, %rax
nop
nop
xor $53529, %r13
movb (%rax), %cl
nop
nop
nop
nop
nop
add $49352, %rax
lea addresses_D_ht+0x10ab3, %r13
nop
nop
nop
cmp $38936, %rcx
movups (%r13), %xmm5
vpextrq $1, %xmm5, %rbp
nop
nop
nop
nop
and %rax, %rax
lea addresses_D_ht+0x1e6eb, %rsi
lea addresses_D_ht+0x12997, %rdi
nop
nop
sub $2157, %rdx
mov $96, %rcx
rep movsb
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_D_ht+0x5d13, %rdi
nop
dec %rdx
mov (%rdi), %r13
nop
nop
xor %rbp, %rbp
lea addresses_A_ht+0x174eb, %rbp
nop
nop
nop
dec %rdx
mov (%rbp), %rcx
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x95b3, %r15
nop
nop
sub $21988, %rcx
movl $0x61626364, (%r15)
add %rbp, %rbp
lea addresses_WT_ht+0x17ab3, %rax
nop
nop
and %rsi, %rsi
movb (%rax), %r15b
nop
nop
nop
cmp $58057, %rbp
lea addresses_UC_ht+0x1740f, %rdx
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%rdx)
nop
nop
nop
and $60377, %r15
lea addresses_UC_ht+0x12ab3, %rbp
and $26272, %r13
movl $0x61626364, (%rbp)
nop
xor %r15, %r15
lea addresses_UC_ht+0x1afb3, %rsi
lea addresses_UC_ht+0x6ab3, %rdi
clflush (%rdi)
nop
and %r13, %r13
mov $106, %rcx
rep movsw
nop
nop
nop
sub %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0xf3b3, %rbp
nop
nop
nop
nop
inc %r12
movl $0x51525354, (%rbp)
xor %r8, %r8

// Load
lea addresses_PSE+0x6b3, %r8
nop
nop
nop
nop
nop
cmp %r12, %r12
mov (%r8), %rbp
nop
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_WT+0x18db3, %rsi
nop
nop
and $5892, %r14
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
inc %r14

// Store
lea addresses_PSE+0x7d3, %r8
nop
nop
nop
sub $11927, %r12
movb $0x51, (%r8)
nop
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_normal+0x13ab3, %r8
nop
nop
and $48445, %rsi
mov $0x5152535455565758, %r15
movq %r15, (%r8)
nop
nop
nop
nop
nop
add $31592, %r8

// Store
lea addresses_WC+0x16ab3, %r14
nop
nop
add $53311, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
dec %rsi

// Store
lea addresses_WC+0x1f8db, %rsi
nop
nop
sub $55984, %r8
movb $0x51, (%rsi)
nop
nop
xor $1672, %r10

// Store
lea addresses_WT+0xfab3, %rbp
nop
cmp $4800, %r8
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movups %xmm5, (%rbp)
nop
nop
nop
nop
nop
dec %r10

// Load
lea addresses_WC+0xc8b3, %r12
xor $11893, %rsi
movb (%r12), %r10b
add $52628, %r14

// Store
lea addresses_UC+0x88b3, %r15
nop
nop
nop
xor %r14, %r14
movl $0x51525354, (%r15)
nop
nop
sub %r12, %r12

// REPMOV
mov $0xc91b80000000d73, %rsi
lea addresses_US+0x176d8, %rdi
nop
dec %r14
mov $18, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_WT+0x162b3, %r15
nop
nop
nop
nop
inc %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movups %xmm7, (%r15)
nop
nop
add %r8, %r8

// Faulty Load
lea addresses_normal+0x22b3, %r8
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov (%r8), %r14
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_US', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'34': 12}
34 34 34 34 34 34 34 34 34 34 34 34
*/
