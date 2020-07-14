.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x41d6, %rdx
nop
nop
nop
nop
nop
cmp %r9, %r9
movb $0x61, (%rdx)
nop
nop
and $2075, %r10
lea addresses_UC_ht+0x9a96, %rdi
nop
cmp %r12, %r12
mov (%rdi), %ax
xor %r9, %r9
lea addresses_normal_ht+0xa2d6, %rbp
dec %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm4
and $0xffffffffffffffc0, %rbp
vmovaps %ymm4, (%rbp)
nop
nop
nop
nop
add $57738, %r9
lea addresses_D_ht+0xbc56, %rbp
inc %rdi
movups (%rbp), %xmm4
vpextrq $0, %xmm4, %r9
nop
and %rdx, %rdx
lea addresses_normal_ht+0xfb76, %rax
nop
nop
nop
nop
xor $14064, %r9
vmovups (%rax), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdx
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_D_ht+0x9216, %r12
nop
nop
nop
inc %rax
movw $0x6162, (%r12)
nop
nop
nop
nop
and $52289, %rax
lea addresses_D_ht+0x396, %rsi
lea addresses_A_ht+0x1ce2e, %rdi
nop
nop
nop
sub $1315, %rdx
mov $108, %rcx
rep movsw
dec %r10
lea addresses_UC_ht+0x7e62, %r10
nop
nop
nop
nop
dec %rax
movw $0x6162, (%r10)
nop
nop
nop
nop
xor $52068, %rdi
lea addresses_UC_ht+0x1b456, %rax
nop
nop
and %rbp, %rbp
movw $0x6162, (%rax)
nop
inc %rsi
lea addresses_D_ht+0x9b56, %rsi
cmp $27883, %rdi
movl $0x61626364, (%rsi)
nop
sub $16156, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rsi

// Store
lea addresses_RW+0x15b96, %r13
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r13)
nop
nop
nop
nop
nop
dec %rcx

// Faulty Load
lea addresses_UC+0x1e456, %rsi
nop
nop
and %r12, %r12
vmovaps (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r13
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rsi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'44': 19584, '46': 2245}
44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 46 46 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 46 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 46 46 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 46 44 46 44 44 46 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 46 44 44 46 44 44 44 44 44 44 46 44 44 46 44 44 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 46 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 46 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 46 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 46 44 44 44 44 44 44 46 44 46 44 44 44 44 46 44 46 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 46 44 44 44 44 44 46 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 46 44 44 44 44 44 44 46 44 44 44 44 44 44 44 46 44 44 44 44 44 46 44 44 46 44 44 44 44 44 46 44 44 46 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 46 44 44 44 44 46 44 44 44 44 44 46 44 44 44 44 46 44 44 44 44 44 44 46 44 44 44 44 44 44 46 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 46 44 44 44 44 46 44 44 44 44 44 46 44 46 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44
*/
