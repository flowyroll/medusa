.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xeebc, %rsi
lea addresses_A_ht+0x5bf9, %rdi
nop
nop
nop
dec %r10
mov $34, %rcx
rep movsw
nop
nop
nop
xor %r12, %r12
lea addresses_UC_ht+0x1794c, %rdx
nop
nop
xor %r9, %r9
vmovups (%rdx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
sub $24011, %rdi
lea addresses_A_ht+0x1b44c, %r12
nop
add $26779, %r10
vmovups (%r12), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
nop
dec %r10
lea addresses_UC_ht+0xb54c, %rcx
nop
nop
sub %rdx, %rdx
movw $0x6162, (%rcx)
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x19fc5, %r12
nop
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%r12)
nop
add %rdx, %rdx
lea addresses_A_ht+0x12b7c, %r12
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r12)
nop
inc %r12
lea addresses_UC_ht+0x1a72c, %rsi
lea addresses_normal_ht+0x1344c, %rdi
nop
nop
nop
dec %rbx
mov $78, %rcx
rep movsl
nop
cmp %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rsi

// Faulty Load
lea addresses_WC+0x154c, %rbx
nop
add $10016, %rcx
mov (%rbx), %r14w
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rsi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'38': 21829}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
