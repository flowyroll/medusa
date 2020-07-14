.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x148e7, %r15
sub $15668, %r8
movb $0x61, (%r15)
nop
nop
nop
nop
xor $54737, %r12
lea addresses_normal_ht+0x1d0e7, %rsi
nop
nop
nop
sub $40152, %r12
mov (%rsi), %rbp
nop
cmp %r8, %r8
lea addresses_normal_ht+0x17fa7, %rbp
clflush (%rbp)
nop
nop
cmp %r12, %r12
movb (%rbp), %r15b
nop
nop
nop
nop
add %r8, %r8
lea addresses_D_ht+0xd8e7, %r12
nop
cmp %r14, %r14
movb $0x61, (%r12)
add $64734, %r15
lea addresses_normal_ht+0x184e7, %rsi
lea addresses_D_ht+0x32b7, %rdi
nop
xor %r15, %r15
mov $111, %rcx
rep movsl
nop
nop
nop
nop
dec %r12
lea addresses_A_ht+0xcfdf, %r12
xor %r15, %r15
movw $0x6162, (%r12)
nop
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x100e7, %r8
nop
nop
nop
cmp %rdi, %rdi
movups (%r8), %xmm0
vpextrq $1, %xmm0, %r15
nop
nop
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0xdce7, %r8
nop
nop
nop
add $53465, %r12
movl $0x61626364, (%r8)
nop
nop
nop
xor $43916, %rdi
lea addresses_WT_ht+0x131bc, %rcx
nop
nop
sub %rsi, %rsi
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
and $8666, %rcx
lea addresses_D_ht+0xd6e7, %rcx
cmp %r14, %r14
vmovups (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
nop
nop
add $20202, %r12
lea addresses_A_ht+0x1a901, %rsi
lea addresses_UC_ht+0x1c7a7, %rdi
nop
nop
nop
nop
nop
xor %r12, %r12
mov $31, %rcx
rep movsq
nop
xor $48465, %r12
lea addresses_A_ht+0xd167, %rsi
lea addresses_normal_ht+0x9f47, %rdi
nop
nop
nop
nop
sub %r8, %r8
mov $102, %rcx
rep movsw
nop
add $17262, %r12
lea addresses_normal_ht+0xe2e7, %r15
clflush (%r15)
nop
nop
nop
nop
and $50600, %r14
and $0xffffffffffffffc0, %r15
vmovaps (%r15), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
sub $26534, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0xcce7, %rsi
lea addresses_WT+0x1de67, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $63515, %r15
mov $17, %rcx
rep movsl
and $16563, %r15

// Store
lea addresses_normal+0x18ce7, %r10
nop
nop
nop
add %rdi, %rdi
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
add %r9, %r9

// Load
lea addresses_A+0x138e7, %r15
nop
nop
nop
add $5073, %rsi
movb (%r15), %r8b
nop
dec %r15

// Store
lea addresses_WC+0x14a97, %r10
clflush (%r10)
nop
nop
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r10)
nop
xor %r15, %r15

// Store
lea addresses_D+0xb9b7, %r9
nop
nop
nop
nop
nop
sub %r8, %r8
movw $0x5152, (%r9)

// Exception!!!
nop
mov (0), %rdi
nop
nop
nop
nop
nop
add $6254, %rcx

// Store
lea addresses_WC+0x75e7, %rdi
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm7
movups %xmm7, (%rdi)
nop
nop
and %rdi, %rdi

// Store
lea addresses_WC+0xde7, %rcx
dec %r8
movl $0x51525354, (%rcx)
nop
nop
nop
add %r9, %r9

// Store
lea addresses_UC+0x114e7, %rcx
nop
nop
nop
sub %r15, %r15
movw $0x5152, (%rcx)
nop
nop
add $57007, %r9

// Store
mov $0x3de7f40000000947, %rdi
nop
nop
nop
and %r15, %r15
movl $0x51525354, (%rdi)
nop
nop
nop
cmp $30537, %rcx

// Faulty Load
lea addresses_A+0x138e7, %r15
nop
nop
sub $12940, %r9
movb (%r15), %r8b
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
