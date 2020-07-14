.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x185eb, %rsi
lea addresses_A_ht+0xd78b, %rdi
nop
sub %r11, %r11
mov $50, %rcx
rep movsw
xor $688, %r12
lea addresses_WT_ht+0x1ceeb, %r8
nop
cmp $59600, %rsi
movb (%r8), %r12b
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x19d83, %rcx
nop
nop
nop
nop
xor $49971, %r9
mov $0x6162636465666768, %r11
movq %r11, (%rcx)
add $50134, %r11
lea addresses_D_ht+0x1498, %rcx
dec %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
and $37180, %rsi
lea addresses_A_ht+0x33eb, %rdi
nop
nop
nop
nop
add $31913, %rcx
mov (%rdi), %esi
nop
sub $16440, %r8
lea addresses_normal_ht+0xb51b, %rsi
lea addresses_UC_ht+0xf1eb, %rdi
nop
nop
nop
nop
cmp $52848, %r11
mov $38, %rcx
rep movsq
nop
nop
cmp $34027, %r11
lea addresses_A_ht+0x29eb, %rsi
lea addresses_A_ht+0x1ed6b, %rdi
nop
cmp $12442, %r15
mov $77, %rcx
rep movsq
nop
nop
dec %r8
lea addresses_WT_ht+0x35eb, %rsi
lea addresses_D_ht+0x18c47, %rdi
nop
nop
nop
nop
add %r15, %r15
mov $52, %rcx
rep movsw
nop
nop
nop
nop
and $1689, %rdi
lea addresses_A_ht+0x5cb, %r15
nop
nop
nop
nop
add %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
sub $4198, %r12
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r9
push %rbp
push %rdi

// Store
mov $0x7876440000000aeb, %r14
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %rdi
movq %rdi, (%r14)
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_WC+0x346d, %r12
nop
sub $22475, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movups %xmm5, (%r12)
nop
sub %r11, %r11

// Store
mov $0x7739ae00000005eb, %r11
sub %rbp, %rbp
movl $0x51525354, (%r11)
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_D+0xedeb, %r13
clflush (%r13)
nop
nop
sub %r12, %r12
movb $0x51, (%r13)
cmp %r11, %r11

// Faulty Load
mov $0x55ba700000005eb, %r13
nop
nop
nop
nop
nop
add $34872, %rbp
mov (%r13), %r14w
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rdi
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'54': 972, '00': 16, 'e0': 469}
00 54 54 e0 e0 54 54 e0 e0 e0 54 54 54 54 54 54 54 e0 54 54 54 e0 54 e0 e0 54 54 54 54 54 54 54 54 e0 54 e0 54 e0 e0 54 54 00 54 54 54 54 e0 54 54 54 00 54 e0 e0 e0 54 e0 54 54 e0 e0 e0 e0 54 54 e0 54 54 54 54 e0 54 54 54 54 54 e0 e0 e0 e0 e0 e0 e0 e0 54 54 e0 54 54 54 54 e0 e0 54 54 54 54 e0 54 54 54 54 54 e0 54 54 00 54 e0 54 e0 54 54 e0 e0 e0 e0 e0 54 e0 e0 e0 54 e0 e0 e0 e0 e0 54 e0 e0 54 54 e0 54 54 e0 54 e0 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 e0 54 54 e0 e0 54 e0 54 54 e0 54 54 54 54 54 54 54 54 54 54 54 54 54 54 e0 e0 e0 54 54 54 e0 54 e0 e0 e0 e0 54 e0 54 e0 54 54 e0 54 54 54 e0 e0 e0 e0 e0 e0 e0 54 e0 54 54 e0 54 54 54 54 54 54 54 54 54 54 e0 54 54 54 e0 e0 e0 54 54 54 54 54 e0 e0 e0 54 e0 54 54 54 54 54 e0 54 54 54 e0 e0 54 e0 54 54 54 54 e0 e0 e0 54 54 54 e0 54 54 e0 54 54 54 e0 e0 54 54 54 54 54 e0 e0 54 54 e0 54 54 54 54 e0 54 54 54 54 54 54 54 54 54 54 54 54 54 54 e0 54 54 54 54 54 e0 54 e0 e0 54 54 e0 54 54 54 e0 54 e0 54 e0 54 e0 54 54 54 54 54 54 e0 e0 54 e0 54 e0 e0 54 e0 e0 54 54 e0 54 54 54 54 54 54 54 54 54 54 e0 54 54 54 54 e0 54 e0 e0 54 54 54 54 54 e0 54 e0 54 e0 54 e0 e0 e0 e0 00 54 54 e0 54 e0 54 54 54 54 54 54 e0 e0 54 54 e0 54 54 54 54 54 e0 e0 54 e0 e0 54 54 e0 e0 e0 e0 e0 54 54 54 e0 e0 54 54 54 e0 54 54 54 e0 54 e0 54 54 e0 e0 54 54 e0 54 54 54 54 e0 54 54 e0 e0 e0 54 54 e0 54 54 54 54 54 54 54 54 e0 54 54 e0 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 e0 54 54 54 54 54 00 54 54 54 54 e0 e0 54 54 54 e0 54 54 54 54 e0 e0 54 54 e0 e0 54 54 54 54 54 e0 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 e0 e0 54 54 e0 54 54 e0 e0 54 54 e0 54 54 e0 54 e0 e0 e0 54 54 54 54 54 54 54 54 54 54 e0 e0 e0 54 54 e0 54 54 54 e0 54 e0 54 54 e0 54 54 54 54 54 54 e0 54 e0 54 54 54 54 e0 54 e0 54 e0 54 e0 e0 54 54 54 e0 54 54 54 54 e0 e0 54 54 e0 54 e0 54 54 54 e0 e0 54 54 e0 54 54 54 e0 e0 54 54 e0 54 e0 e0 54 54 e0 e0 54 e0 54 e0 e0 e0 54 e0 e0 e0 54 e0 54 54 e0 54 e0 e0 e0 e0 e0 54 54 54 54 e0 54 e0 54 54 54 54 54 e0 54 e0 e0 54 e0 54 54 54 54 54 54 54 54 e0 e0 54 e0 e0 e0 e0 e0 54 54 54 54 e0 e0 54 e0 54 54 e0 54 e0 e0 54 54 54 54 e0 54 54 54 54 54 54 54 54 54 54 e0 54 54 54 54 54 54 54 e0 e0 e0 54 54 54 e0 e0 e0 54 54 54 54 54 54 54 54 54 e0 e0 54 54 54 e0 e0 54 54 54 54 e0 e0 54 54 e0 54 54 54 54 54 54 e0 e0 54 54 54 54 54 54 54 e0 54 54 e0 e0 54 54 54 e0 54 54 54 54 54 e0 54 54 e0 54 e0 54 54 e0 54 e0 54 e0 54 54 e0 54 54 e0 54 e0 54 54 54 e0 54 54 54 54 54 e0 e0 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 e0 54 54 54 54 54 54 54 54 54 54 54 54 54 e0 e0 54 54 54 e0 54 54 e0 54 e0 54 54 e0 54 e0 e0 54 e0 54 54 e0 e0 e0 54 54 54 54 54 54 e0 54 54 54 54 54 54 54 54 e0 e0 54 54 54 e0 e0 54 e0 54 e0 54 54 e0 e0 54 54 e0 54 e0 00 e0 e0 54 e0 54 54 54 54 54 54 54 54 54 54 54 54 e0 54 54 54 54 54 54 54 54 54 54 00 e0 54 54 54 54 e0 54 54 54 00 54 e0 e0 54 e0 e0 e0 e0 54 e0 54 54 e0 e0 54 54 54 54 e0 e0 e0 54 54 e0 54
*/
