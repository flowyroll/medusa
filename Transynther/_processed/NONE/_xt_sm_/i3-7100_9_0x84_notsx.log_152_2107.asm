.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xbe6e, %rbp
nop
nop
nop
cmp $48949, %r13
movups (%rbp), %xmm3
vpextrq $0, %xmm3, %rax
nop
nop
nop
nop
nop
add $59636, %rsi
lea addresses_UC_ht+0xcfb6, %rsi
lea addresses_A_ht+0x1d522, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $89, %rcx
rep movsb
nop
nop
add $54802, %rdi
lea addresses_UC_ht+0xccc6, %r13
cmp %rax, %rax
movb (%r13), %r14b
nop
nop
nop
cmp $43172, %rax
lea addresses_UC_ht+0x17846, %r14
nop
nop
nop
nop
inc %rsi
movb (%r14), %al
add %rsi, %rsi
lea addresses_normal_ht+0x1246, %r14
nop
nop
nop
nop
xor $13196, %rbp
movb (%r14), %al
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0xd7c6, %r14
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%r14)
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x10f46, %rsi
lea addresses_normal_ht+0xb15a, %rdi
nop
nop
nop
and $53645, %r10
mov $37, %rcx
rep movsq
nop
nop
nop
mfence
lea addresses_WT_ht+0x1a85a, %rsi
lea addresses_D_ht+0x20ce, %rdi
nop
nop
nop
add %rbp, %rbp
mov $117, %rcx
rep movsb
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WT+0x1ca46, %rcx
nop
nop
nop
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
movups %xmm7, (%rcx)
nop
nop
nop
nop
add $3243, %rcx

// Store
lea addresses_A+0xed56, %r9
nop
nop
nop
nop
nop
add $42325, %r12
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Load
lea addresses_RW+0x10846, %rsi
and $12631, %r9
vmovups (%rsi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdx
dec %rdx

// Store
lea addresses_RW+0x12046, %r10
xor $18478, %r12
movl $0x51525354, (%r10)
nop
nop
nop
nop
dec %r10

// Store
lea addresses_D+0x19646, %rbp
nop
nop
nop
nop
sub $59243, %rsi
movb $0x51, (%rbp)
nop
nop
dec %r12

// Store
lea addresses_D+0x7e46, %r12
nop
nop
nop
nop
nop
and $9921, %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movntdq %xmm4, (%r12)
nop
nop
nop
nop
cmp $55183, %r10

// Store
lea addresses_WC+0x3ba6, %rbp
nop
nop
nop
nop
and $64301, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm7
vmovups %ymm7, (%rbp)
nop
nop
nop
nop
nop
sub %rdx, %rdx

// Faulty Load
lea addresses_WT+0x1ca46, %r12
nop
nop
nop
add %rbp, %rbp
mov (%r12), %rsi
lea oracles, %r12
and $0xff, %rsi
shlq $12, %rsi
mov (%r12,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'58': 152}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
