.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x14700, %r13
nop
nop
nop
inc %r11
movb $0x61, (%r13)
nop
and $62503, %r8
lea addresses_D_ht+0x2444, %rsi
lea addresses_UC_ht+0x266c, %rdi
nop
add $26829, %r8
mov $71, %rcx
rep movsq
nop
nop
nop
nop
add %r8, %r8
lea addresses_WC_ht+0xa436, %r13
nop
nop
nop
nop
nop
add $61343, %rdi
mov (%r13), %si
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x7144, %rsi
nop
sub $29172, %rdi
mov $0x6162636465666768, %r8
movq %r8, (%rsi)
nop
nop
nop
nop
sub $34508, %rdx
lea addresses_WT_ht+0x1ee78, %rsi
lea addresses_normal_ht+0x168a4, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $56, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0xd4df, %rsi
lea addresses_UC_ht+0x7f74, %rdi
nop
cmp $3144, %r13
mov $43, %rcx
rep movsw
nop
nop
nop
nop
nop
and $48918, %r14
lea addresses_WT_ht+0x14a2c, %rsi
lea addresses_UC_ht+0x1ee44, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %r14, %r14
mov $9, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_WT_ht+0x5c44, %r11
nop
nop
nop
nop
nop
xor %rsi, %rsi
movb (%r11), %r13b
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x13904, %rcx
nop
nop
nop
nop
nop
inc %r11
movups (%rcx), %xmm1
vpextrq $0, %xmm1, %r14
nop
nop
nop
nop
sub $4921, %rsi
lea addresses_WT_ht+0x7b84, %rdx
nop
nop
nop
nop
and $199, %r8
movw $0x6162, (%rdx)
nop
nop
sub $21513, %r14
lea addresses_D_ht+0x55f8, %rdi
clflush (%rdi)
inc %r11
movb $0x61, (%rdi)
nop
sub $43524, %rsi
lea addresses_WT_ht+0x3244, %rsi
lea addresses_A_ht+0x1b0f4, %rdi
nop
nop
nop
and %r14, %r14
mov $125, %rcx
rep movsw
add %r11, %r11
lea addresses_UC_ht+0x1ca44, %r13
nop
nop
nop
nop
add %r11, %r11
mov (%r13), %di
nop
nop
sub $2610, %r8
lea addresses_A_ht+0x9a44, %rsi
lea addresses_WT_ht+0x12bd8, %rdi
nop
inc %r14
mov $12, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $14570, %rdx
lea addresses_UC_ht+0x3b44, %rsi
nop
nop
add $6243, %r11
mov (%rsi), %dx
nop
nop
nop
add $64436, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x1fb34, %rsi
lea addresses_A+0xd84, %rdi
nop
nop
nop
xor %r10, %r10
mov $48, %rcx
rep movsb
nop
nop
nop
add $35618, %r10

// Faulty Load
lea addresses_US+0x4a44, %rsi
nop
sub %rbx, %rbx
mov (%rsi), %r10w
lea oracles, %r12
and $0xff, %r10
shlq $12, %r10
mov (%r12,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 108}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
