.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x11dcc, %r14
add $11579, %rdx
movb $0x61, (%r14)
nop
nop
xor $3794, %rdi
lea addresses_D_ht+0x13a6c, %r14
nop
nop
nop
nop
and $42367, %rdi
mov (%r14), %r12w
nop
nop
nop
nop
xor $23303, %rdx
lea addresses_WC_ht+0x1272c, %rbp
and $56031, %r13
mov (%rbp), %r14
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_normal_ht+0x10cac, %rbp
nop
nop
nop
nop
inc %r9
movb $0x61, (%rbp)
nop
nop
nop
nop
nop
sub %r9, %r9
lea addresses_A_ht+0xb32c, %rsi
lea addresses_normal_ht+0x344c, %rdi
nop
nop
inc %r12
mov $50, %rcx
rep movsb
nop
inc %rdx
lea addresses_normal_ht+0x8b38, %r12
nop
nop
sub $19498, %r13
movb (%r12), %cl
nop
nop
nop
nop
add $46384, %rdi
lea addresses_D_ht+0x11e6c, %rsi
lea addresses_A_ht+0xca6c, %rdi
nop
nop
nop
nop
nop
sub $33511, %r9
mov $65, %rcx
rep movsl
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x3160, %rsi
lea addresses_WC_ht+0xe06c, %rdi
nop
nop
nop
nop
nop
sub $31983, %r12
mov $42, %rcx
rep movsq
nop
dec %rdx
lea addresses_normal_ht+0x14b6c, %rcx
nop
and $44630, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm3
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm3, (%rcx)
nop
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0xc6ec, %r9
and %r10, %r10
movl $0x51525354, (%r9)
and $29700, %r9

// Faulty Load
mov $0x26c, %rbx
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov (%rbx), %r9w
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'00': 120}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
