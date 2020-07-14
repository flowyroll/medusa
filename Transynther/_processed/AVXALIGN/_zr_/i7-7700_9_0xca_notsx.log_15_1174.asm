.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rax
push %rbx
push %rcx
push %rdx
lea addresses_WC_ht+0x3d9d, %r13
nop
cmp $10369, %rdx
mov (%r13), %bx
nop
inc %rax
lea addresses_D_ht+0x12b8d, %r10
and %rcx, %rcx
movl $0x61626364, (%r10)
nop
nop
nop
dec %r13
lea addresses_UC_ht+0x1e43d, %rdx
nop
nop
nop
nop
nop
inc %r11
movups (%rdx), %xmm5
vpextrq $0, %xmm5, %rbx
nop
xor %r10, %r10
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rax
push %rdi
push %rdx

// Faulty Load
lea addresses_RW+0x738d, %rdx
nop
inc %r10
vmovntdqa (%rdx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r14
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'00': 15}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
