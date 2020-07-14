.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1c139, %rdi
nop
nop
nop
xor %r8, %r8
movb (%rdi), %bl
nop
nop
sub $30308, %rdi
lea addresses_UC_ht+0x13439, %rsi
sub $27526, %rbp
movups (%rsi), %xmm3
vpextrq $1, %xmm3, %r13
nop
nop
nop
nop
nop
add $24095, %rsi
lea addresses_WT_ht+0x1d507, %rsi
lea addresses_WC_ht+0x15539, %rdi
nop
nop
cmp $15683, %rbx
mov $91, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x3a39, %r13
nop
and $34607, %rcx
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0xf939, %rbp
nop
nop
cmp %rbx, %rbx
and $0xffffffffffffffc0, %rbp
movaps (%rbp), %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
nop
nop
and $61366, %rbp
lea addresses_normal_ht+0x1a139, %r13
nop
nop
nop
nop
and %rbx, %rbx
mov (%r13), %r8d
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x121f9, %rsi
nop
nop
nop
nop
xor %rdi, %rdi
mov (%rsi), %ebx
nop
nop
nop
and $15883, %rbp
lea addresses_normal_ht+0x1234f, %r8
clflush (%r8)
nop
nop
xor $44732, %rbx
movw $0x6162, (%r8)
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0xa539, %rsi
lea addresses_WT_ht+0x186a7, %rdi
sub %r10, %r10
mov $21, %rcx
rep movsb
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x19539, %rdi
nop
nop
cmp $58095, %r10
movw $0x6162, (%rdi)
nop
nop
xor $58931, %rdi
lea addresses_normal_ht+0x2da9, %r13
and %rsi, %rsi
movups (%r13), %xmm1
vpextrq $1, %xmm1, %rbx
nop
nop
nop
nop
nop
xor $19261, %r10
lea addresses_WC_ht+0x1c039, %r10
add $63097, %rbx
movw $0x6162, (%r10)
nop
and %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0xaa5, %rsi
mov $0xb39, %rdi
clflush (%rsi)
nop
sub $45985, %r8
mov $4, %rcx
rep movsw
xor %rdi, %rdi

// Load
lea addresses_UC+0x9339, %r12
nop
nop
cmp $34698, %rbp
mov (%r12), %edi
sub $50604, %rcx

// Faulty Load
lea addresses_US+0x6539, %rdi
nop
nop
nop
nop
nop
xor %r8, %r8
mov (%rdi), %r12w
lea oracles, %r11
and $0xff, %r12
shlq $12, %r12
mov (%r11,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_P', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
