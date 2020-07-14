.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rax
push %rbp
push %rbx
push %rdi
push %rdx
lea addresses_WC_ht+0x3211, %r10
nop
nop
nop
nop
nop
xor $19749, %rbx
movups (%r10), %xmm5
vpextrq $1, %xmm5, %rdi
xor %rdx, %rdx
lea addresses_A_ht+0x3d41, %rbp
clflush (%rbp)
nop
nop
nop
xor $46557, %rax
movb $0x61, (%rbp)
nop
and %rax, %rax
lea addresses_D_ht+0x15400, %rbp
nop
nop
cmp $49433, %r15
movb (%rbp), %r10b
nop
nop
nop
nop
nop
add $31528, %rbp
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rax
push %rdi

// Faulty Load
lea addresses_A+0x4a11, %r8
nop
cmp %rdi, %rdi
vmovups (%r8), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r13
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
