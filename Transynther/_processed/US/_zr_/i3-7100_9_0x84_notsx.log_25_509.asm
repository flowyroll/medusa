.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xdea, %rsi
lea addresses_A_ht+0x37ea, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $31, %rcx
rep movsw
nop
nop
nop
dec %rdx
lea addresses_A_ht+0x492a, %r12
nop
nop
nop
nop
xor %r13, %r13
mov (%r12), %r8d
nop
nop
nop
nop
nop
xor $25722, %rdx
lea addresses_normal_ht+0xd9ea, %rcx
nop
nop
nop
nop
xor %r13, %r13
mov (%rcx), %r12d
nop
add %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_RW+0xc772, %rcx
nop
nop
nop
nop
cmp $6446, %rdx
movb (%rcx), %r9b
nop
nop
dec %rdx

// REPMOV
lea addresses_WT+0x4eea, %rsi
lea addresses_A+0x1b5ea, %rdi
nop
nop
and $58966, %r9
mov $52, %rcx
rep movsw
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_UC+0x11eab, %rdi
nop
nop
nop
nop
nop
dec %rax
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
dec %r9

// Faulty Load
lea addresses_US+0x1f5ea, %r9
nop
nop
nop
nop
nop
inc %rcx
movb (%r9), %r10b
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 25}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
