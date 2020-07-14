.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x3fcb, %rbx
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm7
movups %xmm7, (%rbx)
nop
nop
nop
inc %r12
lea addresses_D_ht+0x13853, %rbp
clflush (%rbp)
nop
xor %rdi, %rdi
movw $0x6162, (%rbp)
nop
nop
sub %r13, %r13
lea addresses_D_ht+0x22eb, %rsi
lea addresses_WC_ht+0x54d3, %rdi
nop
nop
nop
nop
cmp $692, %r14
mov $120, %rcx
rep movsq
nop
nop
nop
nop
and %r13, %r13
lea addresses_A_ht+0x4613, %r14
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_WC_ht+0x9993, %r14
nop
nop
and %rbx, %rbx
movb (%r14), %r12b
nop
nop
nop
nop
nop
and $29110, %rsi
lea addresses_A_ht+0xb5cb, %rsi
lea addresses_WC_ht+0x15142, %rdi
nop
nop
nop
and %rbp, %rbp
mov $49, %rcx
rep movsq
xor %r13, %r13
lea addresses_A_ht+0x10813, %r13
nop
nop
nop
nop
add $46280, %r12
mov (%r13), %esi
nop
add %rdi, %rdi
lea addresses_WC_ht+0x13853, %rbx
add $61691, %r12
mov (%rbx), %di
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0xa3b3, %rdi
nop
nop
add $58420, %rbx
movb (%rdi), %r12b
nop
nop
nop
xor $62109, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_RW+0x194d3, %rsi
lea addresses_WC+0x4d3, %rdi
nop
nop
inc %rdx
mov $94, %rcx
rep movsq
cmp $57544, %rdi

// Store
lea addresses_normal+0x6cd3, %rbx
nop
nop
nop
nop
xor %r10, %r10
movw $0x5152, (%rbx)
nop
nop
nop
dec %rax

// Store
lea addresses_PSE+0x5cd3, %rdi
nop
add $33774, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, (%rdi)
nop
nop
nop
nop
xor $43658, %rsi

// Faulty Load
lea addresses_US+0xfcd3, %rax
nop
nop
nop
nop
sub $27463, %rbx
mov (%rax), %di
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'00': 67, '58': 115}
00 00 58 58 58 00 00 00 58 00 00 00 00 00 00 58 58 58 58 58 58 58 58 58 00 58 58 00 58 00 00 58 00 00 00 00 00 58 58 58 00 00 00 00 00 58 00 00 00 00 58 58 58 58 58 58 58 58 58 58 00 00 58 58 00 00 00 00 58 00 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 00 00 00 58 58 00 58 58 58 58 58 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 58 58 58 58 58 58 58 00 00 00
*/
