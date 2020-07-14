.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rdi
lea addresses_A_ht+0x77f8, %r15
nop
add %r12, %r12
mov (%r15), %edi
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x14bf8, %r8
nop
nop
nop
cmp %r14, %r14
and $0xffffffffffffffc0, %r8
movntdqa (%r8), %xmm6
vpextrq $0, %xmm6, %rbp
nop
xor $34722, %r12
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rbp
push %rcx
push %rdx

// Faulty Load
lea addresses_US+0x113f8, %r11
nop
nop
nop
cmp %rbp, %rbp
vmovups (%r11), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': True, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'45': 4}
45 45 45 45
*/
