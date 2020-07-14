.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x88d7, %rsi
lea addresses_D_ht+0x60d7, %rdi
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $25, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r13
lea addresses_normal_ht+0x1bcd7, %rdx
nop
and $18428, %rbx
mov (%rdx), %r12d
cmp $64027, %rbx
lea addresses_D_ht+0x1dba7, %rcx
nop
nop
nop
and $43266, %r13
mov (%rcx), %edx
nop
add $36541, %rsi
lea addresses_WT_ht+0xa8d7, %rsi
lea addresses_normal_ht+0x16a33, %rdi
clflush (%rsi)
nop
sub $50320, %rax
mov $62, %rcx
rep movsw
sub $10543, %rcx
lea addresses_A_ht+0xb0d7, %r13
nop
nop
nop
nop
sub %r12, %r12
movw $0x6162, (%r13)
nop
nop
nop
nop
sub $57180, %rdx
lea addresses_UC_ht+0x35e2, %rsi
lea addresses_WC_ht+0x8277, %rdi
add $14395, %rax
mov $6, %rcx
rep movsb
add %rbx, %rbx
lea addresses_UC_ht+0xd1d7, %r12
nop
nop
nop
sub %r13, %r13
mov (%r12), %rsi
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0x19cd7, %rdx
nop
nop
nop
sub $26424, %rsi
vmovups (%rdx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rax
nop
sub %r12, %r12
lea addresses_UC_ht+0x12cd7, %r12
clflush (%r12)
and %r13, %r13
mov (%r12), %ebx
nop
nop
nop
cmp $55896, %rcx
lea addresses_UC_ht+0x8ed7, %r13
nop
nop
xor $10908, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r13)
nop
mfence
lea addresses_D_ht+0xa557, %rsi
lea addresses_normal_ht+0x98d7, %rdi
nop
nop
xor $63803, %rdx
mov $123, %rcx
rep movsw
nop
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0x14ef7, %rbx
nop
nop
nop
nop
xor %rdi, %rdi
mov (%rbx), %r13d
nop
nop
nop
nop
nop
inc %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WC+0x5860, %r15
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
nop
add $61743, %r15

// Store
lea addresses_RW+0x3357, %rcx
nop
add %rsi, %rsi
movb $0x51, (%rcx)
nop
nop
nop
xor $59751, %r15

// Load
lea addresses_UC+0x1f6da, %rbx
nop
xor %rdx, %rdx
movb (%rbx), %r15b
nop
nop
nop
nop
nop
inc %r15

// Store
mov $0xaf7, %r8
clflush (%r8)
nop
nop
and %r14, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r8)
and %rcx, %rcx

// Store
lea addresses_US+0x1cf97, %rcx
clflush (%rcx)
nop
nop
and $22295, %r15
movl $0x51525354, (%rcx)
nop
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_WC+0x6f77, %rdx
nop
nop
nop
cmp $57245, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%rdx)
nop
nop
nop
inc %rdx

// Store
lea addresses_A+0x377, %r8
clflush (%r8)
nop
and %r15, %r15
movb $0x51, (%r8)
sub %r15, %r15

// Store
lea addresses_A+0x188d7, %r8
nop
nop
nop
nop
add $44004, %rcx
movw $0x5152, (%r8)
nop
nop
dec %r14

// Store
lea addresses_WC+0xaa17, %rdx
sub %r8, %r8
mov $0x5152535455565758, %rcx
movq %rcx, (%rdx)
nop
xor $33573, %rdx

// Store
lea addresses_PSE+0x1ec93, %rbx
nop
and %r8, %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
inc %r14

// Faulty Load
lea addresses_A+0x188d7, %r14
clflush (%r14)
nop
add $43464, %rdx
mov (%r14), %si
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'52': 3}
52 52 52
*/
