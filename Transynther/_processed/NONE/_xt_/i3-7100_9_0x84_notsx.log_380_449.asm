.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1d631, %rsi
lea addresses_A_ht+0xe351, %rdi
nop
sub %rax, %rax
mov $20, %rcx
rep movsq
nop
sub $10862, %rbx
lea addresses_WC_ht+0x2c31, %rsi
lea addresses_A_ht+0x4e4d, %rdi
clflush (%rsi)
nop
sub %r9, %r9
mov $99, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x1e3b5, %rcx
cmp %r13, %r13
movups (%rcx), %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
nop
nop
xor $33736, %rbx
lea addresses_D_ht+0x8651, %rsi
lea addresses_A_ht+0x9e31, %rdi
nop
nop
nop
nop
nop
inc %rax
mov $117, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $56730, %rax
lea addresses_A_ht+0x19e31, %rax
nop
nop
dec %rbx
mov (%rax), %rdi
xor %rax, %rax
lea addresses_WC_ht+0x122e1, %rsi
nop
nop
nop
nop
sub $19658, %rax
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x67c1, %rsi
lea addresses_A_ht+0xdef1, %rdi
and %r8, %r8
mov $122, %rcx
rep movsl
nop
xor %rbx, %rbx
lea addresses_normal_ht+0x9f59, %rcx
nop
nop
nop
sub %rdi, %rdi
mov (%rcx), %si
nop
nop
nop
and %rbx, %rbx
lea addresses_WC_ht+0xe231, %rsi
lea addresses_normal_ht+0x2b31, %rdi
clflush (%rsi)
add %r8, %r8
mov $30, %rcx
rep movsw
nop
nop
nop
nop
xor $8288, %rdi
lea addresses_normal_ht+0x1aef1, %rdi
clflush (%rdi)
nop
inc %rsi
movw $0x6162, (%rdi)
nop
nop
add $59961, %r9
lea addresses_D_ht+0xa931, %r9
inc %rbx
movw $0x6162, (%r9)
nop
nop
nop
nop
nop
xor $44904, %r13
lea addresses_WC_ht+0x14631, %rsi
lea addresses_WT_ht+0xcb31, %rdi
nop
and $11760, %rbx
mov $75, %rcx
rep movsb
nop
nop
nop
nop
and %r8, %r8
lea addresses_normal_ht+0x3901, %rsi
lea addresses_D_ht+0x1dd31, %rdi
and $58340, %r9
mov $54, %rcx
rep movsl
nop
nop
nop
and %r8, %r8
lea addresses_WT_ht+0x1e49, %rsi
lea addresses_D_ht+0x15c31, %rdi
nop
nop
nop
nop
nop
inc %rax
mov $90, %rcx
rep movsb
nop
nop
and $45992, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
mov $0x3ff0ca0000000f21, %rsi
nop
nop
inc %rcx
movw $0x5152, (%rsi)
nop
nop
dec %rsi

// Faulty Load
lea addresses_WT+0x18631, %rax
xor %rbx, %rbx
movb (%rax), %cl
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'39': 380}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
