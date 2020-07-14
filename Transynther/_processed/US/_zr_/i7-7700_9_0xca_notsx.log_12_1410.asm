.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xfa4d, %rdx
nop
sub %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
and $0xffffffffffffffc0, %rdx
vmovaps %ymm7, (%rdx)
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0x1244d, %r8
nop
nop
nop
cmp $55982, %rbp
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_D_ht+0xeeb9, %rcx
nop
xor $30569, %rdi
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %rax
nop
nop
nop
xor $28528, %rdx
lea addresses_UC_ht+0x113d, %rsi
lea addresses_normal_ht+0x794d, %rdi
nop
nop
nop
xor %r14, %r14
mov $127, %rcx
rep movsl
nop
nop
add %r14, %r14
lea addresses_D_ht+0x15ddd, %rcx
add %rdi, %rdi
mov (%rcx), %r8d
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_A_ht+0x1cc4d, %rsi
lea addresses_UC_ht+0x38d, %rdi
nop
nop
nop
nop
nop
add $41159, %rax
mov $68, %rcx
rep movsq
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0x1480d, %rcx
dec %r8
mov (%rcx), %r14d
nop
nop
nop
and $41015, %r8
lea addresses_WC_ht+0x85ad, %rsi
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm5
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm5, (%rsi)
nop
nop
cmp $18629, %r8
lea addresses_WC_ht+0x1998d, %rdx
cmp $53869, %rcx
movb $0x61, (%rdx)
cmp $15794, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rcx
push %rdi

// Faulty Load
lea addresses_US+0x1444d, %r10
nop
nop
and $35846, %rdi
mov (%r10), %r12
lea oracles, %rcx
and $0xff, %r12
shlq $12, %r12
mov (%rcx,%r12,1), %r12
pop %rdi
pop %rcx
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': True, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
