.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xe414, %r14
nop
nop
nop
nop
inc %r12
movw $0x6162, (%r14)
nop
nop
nop
xor $15417, %r13
lea addresses_A_ht+0xb83c, %rsi
lea addresses_WC_ht+0x158a8, %rdi
nop
nop
nop
nop
nop
add $12499, %rbx
mov $74, %rcx
rep movsq
cmp %rsi, %rsi
lea addresses_D_ht+0x3714, %rsi
lea addresses_WC_ht+0x19204, %rdi
nop
sub $27837, %r13
mov $24, %rcx
rep movsb
add $24938, %r14
lea addresses_WC_ht+0xded4, %r12
nop
nop
nop
and %rsi, %rsi
mov (%r12), %r13
nop
dec %r12
lea addresses_WT_ht+0x1ef3c, %rbx
nop
nop
nop
nop
xor %rcx, %rcx
vmovups (%rbx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r13
add $12029, %rsi
lea addresses_WC_ht+0x2114, %rsi
lea addresses_normal_ht+0xe814, %rdi
nop
nop
nop
nop
add $29236, %rdx
mov $22, %rcx
rep movsb
xor $56703, %rcx
lea addresses_A_ht+0x190bc, %r14
nop
nop
nop
nop
cmp %rcx, %rcx
movw $0x6162, (%r14)
nop
nop
nop
nop
nop
dec %rdx
lea addresses_UC_ht+0xf824, %rsi
lea addresses_UC_ht+0x17d14, %rdi
clflush (%rsi)
nop
nop
nop
and $18837, %r13
mov $77, %rcx
rep movsq
nop
nop
nop
xor $30941, %rdi
lea addresses_UC_ht+0x197d4, %rsi
lea addresses_A_ht+0x9914, %rdi
nop
nop
nop
sub %r12, %r12
mov $84, %rcx
rep movsb
nop
cmp $60242, %rbx
lea addresses_normal_ht+0x2294, %r14
nop
nop
nop
nop
dec %rsi
movups (%r14), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
add $34956, %r13
lea addresses_A_ht+0xb4d4, %rdi
nop
nop
nop
inc %r12
movb $0x61, (%rdi)
nop
nop
nop
nop
inc %rdx
lea addresses_WC_ht+0x14c54, %r14
nop
nop
nop
nop
cmp %rdx, %rdx
movw $0x6162, (%r14)
nop
nop
nop
nop
nop
sub $38935, %rcx
lea addresses_D_ht+0x7c50, %rsi
lea addresses_WC_ht+0x1db14, %rdi
nop
and $47687, %r13
mov $37, %rcx
rep movsq
nop
cmp $63146, %rdx
lea addresses_WC_ht+0x6a14, %rsi
nop
nop
nop
nop
nop
sub $11658, %rdi
mov (%rsi), %r13
nop
and $15982, %rcx
lea addresses_WC_ht+0x1a514, %rsi
lea addresses_D_ht+0x7494, %rdi
nop
nop
nop
nop
nop
and $52028, %rbx
mov $17, %rcx
rep movsq
nop
nop
nop
add %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x6494, %rax
nop
nop
nop
sub $13929, %rcx
movw $0x5152, (%rax)
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_D+0x14254, %r15
cmp $4056, %rbx
movb $0x51, (%r15)
nop
nop
nop
nop
nop
cmp $11990, %r15

// REPMOV
lea addresses_US+0x14914, %rsi
lea addresses_UC+0x1dc14, %rdi
nop
nop
nop
dec %r13
mov $81, %rcx
rep movsw
cmp $55433, %rcx

// Store
lea addresses_WC+0x1514c, %rax
nop
nop
add %rcx, %rcx
movw $0x5152, (%rax)
dec %rbx

// Faulty Load
lea addresses_A+0x1d514, %r11
nop
nop
nop
nop
dec %rbx
movb (%r11), %r15b
lea oracles, %rax
and $0xff, %r15
shlq $12, %r15
mov (%rax,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'00': 122}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
