.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x49ff, %rbp
nop
cmp $52262, %r9
movb $0x61, (%rbp)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x1e32f, %rsi
lea addresses_A_ht+0x11ac3, %rdi
nop
nop
nop
nop
dec %r15
mov $77, %rcx
rep movsw
inc %r15
lea addresses_UC_ht+0x40f, %rsi
lea addresses_WT_ht+0xf60f, %rdi
nop
nop
nop
add %r12, %r12
mov $38, %rcx
rep movsq
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x724c, %r15
nop
nop
nop
nop
nop
xor $20874, %rcx
mov (%r15), %bp
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_WT_ht+0x1a28f, %rcx
nop
nop
inc %r12
mov (%rcx), %di
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x2d0f, %rdi
nop
nop
cmp %r12, %r12
mov (%rdi), %r9
nop
nop
nop
xor $52931, %rbp
lea addresses_WC_ht+0x6c67, %rsi
lea addresses_UC_ht+0x1cc0f, %rdi
nop
nop
cmp %r9, %r9
mov $91, %rcx
rep movsb
nop
nop
xor %rbp, %rbp
lea addresses_D_ht+0x8f0f, %rsi
lea addresses_UC_ht+0x18a8f, %rdi
nop
nop
nop
nop
xor %r11, %r11
mov $95, %rcx
rep movsw
xor $19294, %rsi
lea addresses_A_ht+0x14dcf, %rcx
nop
nop
nop
nop
nop
add %r9, %r9
mov (%rcx), %rsi
nop
inc %rdi
lea addresses_WC_ht+0xa50f, %r9
nop
nop
sub $5354, %rbp
movups (%r9), %xmm4
vpextrq $0, %xmm4, %r11
nop
nop
nop
nop
nop
and $25988, %r12
lea addresses_D_ht+0xd60f, %r9
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
xor $56528, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rbx

// Store
lea addresses_WC+0xed0f, %rax
nop
nop
nop
nop
dec %rbp
movw $0x5152, (%rax)

// Exception!!!
nop
nop
nop
nop
mov (0), %rbx
nop
nop
add %rax, %rax

// Store
mov $0x20f, %rbp
nop
nop
nop
sub $6692, %r11
movl $0x51525354, (%rbp)
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_WT+0x920f, %rbx
nop
nop
nop
xor %r13, %r13
movb $0x51, (%rbx)
dec %rbp

// Store
lea addresses_UC+0x18f8f, %r14
nop
nop
nop
nop
and $20071, %r13
movl $0x51525354, (%r14)
nop
inc %r11

// Store
lea addresses_US+0xf64f, %r13
cmp %rbp, %rbp
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
sub %r14, %r14

// Faulty Load
lea addresses_A+0x1860f, %r13
nop
nop
nop
nop
nop
dec %r14
movntdqa (%r13), %xmm3
vpextrq $1, %xmm3, %rbp
lea oracles, %r9
and $0xff, %rbp
shlq $12, %rbp
mov (%r9,%rbp,1), %rbp
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'46': 8259, '00': 13562, '48': 8}
00 00 46 46 46 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 46 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 00 46 00 00 46 46 00 00 00 00 00 46 00 00 00 00 00 46 46 00 00 00 00 46 00 00 46 00 00 46 46 46 00 00 00 00 00 46 46 46 00 00 00 46 46 00 00 00 00 46 46 46 00 00 00 00 46 46 00 00 46 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 46 46 00 46 00 00 00 46 46 46 00 00 00 46 46 00 00 00 00 00 46 46 00 46 00 00 46 00 00 46 00 00 46 46 46 00 00 00 00 46 46 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 46 46 46 00 00 00 00 46 46 46 00 00 00 00 46 46 46 00 00 00 46 00 00 00 00 00 46 46 46 00 00 00 46 46 00 00 00 00 46 46 00 00 46 00 46 46 46 46 00 00 00 46 46 46 00 00 00 00 00 46 00 00 00 00 46 46 46 00 46 00 00 46 46 46 00 00 00 00 46 46 00 00 00 00 46 46 46 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 46 46 46 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 46 46 00 00 46 00 00 46 46 00 00 46 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 46 46 46 00 00 00 00 46 46 00 00 00 00 00 46 46 00 46 00 00 00 46 46 00 00 00 00 46 46 46 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 46 46 46 00 00 00 00 46 46 00 00 00 00 00 46 46 46 00 00 00 00 46 46 46 46 00 00 46 46 46 00 00 00 00 46 46 00 00 00 46 46 00 00 00 00 46 46 46 00 00 00 00 46 46 00 00 46 00 46 46 46 00 00 00 00 46 46 00 46 00 00 00 46 00 00 00 00 00 46 46 00 00 00 00 00 00 46 00 00 46 00 00 46 46 46 00 00 00 46 46 46 00 00 00 00 46 46 46 00 46 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 46 46 46 00 46 00 00 46 46 46 00 00 00 00 46 46 46 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 00 00 00 00 00 46 46 00 00 46 00 00 46 46 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 46 46 00 00 46 00 46 46 46 00 00 00 00 46 46 00 00 46 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 46 46 00 00 00 00 00 46 46 46 00 00 00 00 46 46 46 00 46 00 46 00 00 00 00 00 46 00 00 00 00 00 46 46 00 00 00 00 46 00 00 00 00 00 46 46 00 00 00 00 00 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 46 46 46 00 00 46 46 46 46 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 46 46 46 00 00 00 00 46 00 00 46 00 00 46 46 00 00 46 00 00 46 46 46 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 46 46 46 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 46 00 00 46 00 46 46 46 46 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 46 46 00 00 46 00 00 46 46 00 00 00 00 46 46 00 00 46 00 00 00 46 46 00 00 00 00 46 46 46 00 00 00 00 46 46 46 46 00 00 00 46 46 00 00 46 00 46 46 00 00 00 00 00 46 00 00 46 00 46 46 46 46 00 00 00 46 46 46 46 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 46 46 46 00 00 00 00 00 46 00 46 00 00 00 46 46 00 00 00 00 46 46 00 00 00 00 46 00 46 00
*/
