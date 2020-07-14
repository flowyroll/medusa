.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %rbp
push %rdi
push %rsi
lea addresses_WT_ht+0x4a74, %rsi
nop
nop
nop
cmp $4981, %rdi
movw $0x6162, (%rsi)
dec %r14
pop %rsi
pop %rdi
pop %rbp
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rdx

// Load
lea addresses_WT+0x1a32c, %r14
nop
nop
cmp $21842, %rax
movb (%r14), %r13b
nop
nop
cmp $11799, %rax

// Faulty Load
lea addresses_WC+0x12474, %r14
dec %r10
vmovups (%r14), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbp
lea oracles, %r14
and $0xff, %rbp
shlq $12, %rbp
mov (%r14,%rbp,1), %rbp
pop %rdx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'08': 1, 'e5': 2, '07': 1, '2d': 1, 'fe': 1}
07 fe 2d 08 e5 e5
*/
