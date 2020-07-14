.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1cbd2, %rsi
lea addresses_D_ht+0x14612, %rdi
nop
nop
nop
nop
nop
sub $51781, %r13
mov $52, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r14
lea addresses_UC_ht+0x9ed2, %rsi
lea addresses_WC_ht+0x15c72, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $24, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_normal_ht+0x1b882, %rcx
nop
xor %r12, %r12
vmovups (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdx
nop
nop
nop
cmp $6592, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi

// Store
lea addresses_UC+0x180d2, %rdi
nop
nop
nop
sub $6591, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
dec %r10

// Store
lea addresses_WT+0x3b02, %r8
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %rdi
movq %rdi, (%r8)
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_D+0x1d352, %r9
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovups %ymm6, (%r9)
nop
lfence

// Store
lea addresses_D+0x9cd2, %r8
nop
nop
nop
add %rcx, %rcx
movl $0x51525354, (%r8)
nop
nop
nop
nop
xor $42895, %r15

// Faulty Load
lea addresses_US+0x16bd2, %r14
nop
nop
nop
add %rdi, %rdi
movups (%r14), %xmm3
vpextrq $1, %xmm3, %r10
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'00': 1}
00
*/
