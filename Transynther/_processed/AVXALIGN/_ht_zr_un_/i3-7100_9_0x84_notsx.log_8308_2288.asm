.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1c982, %rsi
lea addresses_UC_ht+0x10d45, %rdi
nop
nop
nop
nop
sub %r15, %r15
mov $79, %rcx
rep movsb
nop
nop
nop
dec %rax
lea addresses_WC_ht+0x1e122, %rdx
nop
nop
nop
nop
inc %rbp
mov (%rdx), %eax
nop
sub %rdi, %rdi
lea addresses_A_ht+0x173f2, %rsi
lea addresses_A_ht+0xc4d6, %rdi
nop
nop
nop
nop
nop
lfence
mov $76, %rcx
rep movsl
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0xaf82, %rcx
nop
cmp %rbp, %rbp
mov (%rcx), %esi
nop
nop
nop
nop
nop
sub %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r8
push %r9
push %rbx

// Load
lea addresses_US+0x2d3d, %r12
nop
nop
and %r15, %r15
mov (%r12), %r10
nop
nop
nop
nop
cmp $57019, %r8

// Load
lea addresses_RW+0x8a92, %r8
nop
nop
nop
nop
dec %r14
movups (%r8), %xmm0
vpextrq $0, %xmm0, %r12
nop
nop
nop
nop
add $26793, %r8

// Store
lea addresses_UC+0x8402, %r15
cmp $3006, %r12
movb $0x51, (%r15)
nop
nop
cmp $58405, %r9

// Store
lea addresses_normal+0x1ce50, %r15
add %rbx, %rbx
movw $0x5152, (%r15)
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_PSE+0x4048, %r14
nop
nop
nop
and $45301, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%r14)
add $62380, %r9

// Store
lea addresses_WT+0x15d02, %r9
nop
nop
nop
inc %r8
mov $0x5152535455565758, %r15
movq %r15, %xmm3
movups %xmm3, (%r9)
nop
nop
nop
cmp %r12, %r12

// Load
lea addresses_normal+0x6a2a, %r9
nop
add %r10, %r10
mov (%r9), %bx
nop
nop
nop
nop
nop
add $31916, %r12

// Store
mov $0x7d8da2000000058a, %r10
clflush (%r10)
nop
nop
nop
inc %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movaps %xmm2, (%r10)
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_normal+0x14882, %r8
nop
nop
nop
and %rbx, %rbx
movw $0x5152, (%r8)
nop
nop
nop
and %r12, %r12

// Faulty Load
lea addresses_US+0x15982, %r12
nop
nop
and %r8, %r8
vmovntdqa (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r9
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'05': 179, '45': 4441, '00': 3673, '7d': 1, '08': 14}
45 45 45 00 45 00 45 00 00 45 45 00 45 00 00 00 00 45 45 45 45 00 45 45 00 45 00 00 45 45 00 45 45 00 45 00 45 00 45 45 00 45 45 45 45 00 45 45 45 45 45 00 45 08 00 00 00 00 00 05 05 45 45 00 05 45 45 00 45 45 00 00 45 45 45 45 00 00 45 00 45 00 45 00 45 45 00 00 00 00 45 00 45 45 05 45 45 45 00 45 45 45 45 00 00 45 00 00 45 45 00 45 00 00 00 00 00 00 45 45 00 45 45 45 45 00 00 45 45 45 45 45 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 45 00 00 00 00 45 00 00 45 45 00 45 45 45 00 45 45 05 45 45 45 00 45 00 00 45 45 45 00 45 00 45 45 00 00 45 45 45 45 45 45 45 00 45 45 00 45 00 45 00 45 45 45 45 00 45 45 45 00 45 00 45 45 45 45 00 00 45 00 45 45 00 45 45 45 45 45 00 45 00 45 00 00 45 00 00 45 00 00 00 45 45 00 45 45 45 00 45 45 00 45 45 00 00 45 00 00 00 45 45 45 45 00 00 45 45 00 45 00 00 45 00 45 45 05 00 45 45 45 45 45 00 45 00 00 00 45 45 45 45 00 00 45 45 00 00 00 45 00 45 45 45 45 00 45 00 45 00 45 45 45 00 45 00 45 00 00 00 00 45 00 00 45 45 45 45 45 45 45 45 00 00 45 45 00 45 00 45 45 00 45 45 00 00 45 00 00 00 45 45 00 45 00 45 45 45 45 45 00 00 00 00 00 45 45 45 00 45 45 45 00 45 00 45 45 00 45 45 45 45 00 00 00 45 45 45 45 00 45 00 00 00 45 45 00 45 00 00 45 45 45 45 00 00 00 00 45 00 45 00 00 00 45 45 00 00 45 45 45 05 45 00 45 45 45 45 00 45 45 05 00 45 00 00 45 45 45 45 00 45 45 45 45 00 00 45 00 45 00 00 45 00 00 45 45 00 00 45 45 00 45 00 00 45 45 45 00 45 45 45 00 00 45 45 45 45 00 00 45 00 00 45 00 45 45 45 00 00 45 45 00 00 00 00 00 45 45 45 45 45 00 45 00 45 00 45 00 00 00 00 00 00 00 00 45 00 00 00 45 00 45 00 45 00 45 45 00 45 00 00 45 45 45 45 45 45 45 00 45 00 45 45 00 00 45 45 45 05 45 00 00 45 00 00 45 45 00 00 45 45 45 45 00 00 45 00 00 00 00 00 45 45 45 00 45 00 00 45 00 00 00 45 00 00 45 00 00 45 00 45 00 00 00 45 00 45 45 00 00 45 00 45 45 45 45 45 45 00 45 00 00 00 45 00 05 45 45 45 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 45 45 00 45 45 05 45 45 45 05 00 00 45 00 00 45 00 00 45 00 45 45 00 00 45 00 00 45 00 00 45 45 00 00 00 00 45 00 45 00 45 45 00 45 00 00 45 00 45 00 00 45 45 45 45 00 45 45 45 00 45 00 45 00 45 45 45 45 45 00 45 45 00 45 05 00 45 00 45 45 45 45 05 05 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 05 45 45 45 00 45 45 45 45 45 45 45 00 45 00 00 45 00 00 45 00 00 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 00 45 45 45 00 45 45 45 00 45 00 00 45 00 45 00 00 45 45 00 45 45 45 45 45 00 45 00 45 05 00 45 05 05 45 45 45 00 45 45 00 00 00 45 45 45 00 45 00 45 00 00 45 45 45 45 00 45 00 45 00 45 00 45 00 00 00 05 45 45 45 45 45 00 45 00 45 00 45 45 45 00 45 00 00 45 05 45 45 45 45 45 45 00 00 45 45 00 45 45 45 00 00 00 45 45 00 00 45 00 45 00 45 45 00 45 45 00 00 00 45 45 00 45 00 45 00 45 00 00 00 00 45 00 45 00 45 45 00 00 05 45 45 45 00 45 45 00 00 05 45 00 45 45 45 45 45 45 00 45 00 00 00 00 45 00 00 45 45 45 00 45 45 00 45 05 45 45 45 45 00 45 00 00 45 45 00 00 00 45 00 00 45 00 45 00 45 45 45 00 45 45 00 45 00 45 00 00 45 00 45 00 45 00 45 45 00 45 00 00 00 45 45 45 00
*/
