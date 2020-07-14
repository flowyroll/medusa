.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rax
push %rbx
push %rdx
lea addresses_normal_ht+0x6180, %rdx
nop
nop
nop
nop
nop
and $62786, %r8
mov (%rdx), %r15w
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x2a5c, %rax
nop
nop
nop
nop
nop
add $3841, %r12
vmovups (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r8
nop
nop
and $5690, %rax
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rbp
push %rdx

// Load
lea addresses_normal+0x19e5c, %r10
nop
nop
nop
nop
nop
inc %r12
mov (%r10), %ebp
and %r9, %r9

// Load
lea addresses_PSE+0x1c5b4, %r10
nop
nop
nop
inc %r14
movaps (%r10), %xmm7
vpextrq $0, %xmm7, %rdx
nop
nop
nop
nop
nop
xor $51564, %rbp

// Store
lea addresses_WC+0xfb5c, %rbp
and $17087, %r9
movw $0x5152, (%rbp)
nop
nop
sub %rbp, %rbp

// Faulty Load
lea addresses_normal+0xe25c, %r12
nop
xor %r13, %r13
mov (%r12), %ebp
lea oracles, %rdx
and $0xff, %rbp
shlq $12, %rbp
mov (%rdx,%rbp,1), %rbp
pop %rdx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'34': 25}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
