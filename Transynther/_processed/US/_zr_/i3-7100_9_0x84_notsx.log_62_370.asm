.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xd54, %rsi
lea addresses_WC_ht+0x10254, %rdi
add %rdx, %rdx
mov $53, %rcx
rep movsw
nop
add %rbp, %rbp
lea addresses_A_ht+0x4034, %rsi
lea addresses_WC_ht+0x9554, %rdi
nop
nop
nop
nop
nop
and %r11, %r11
mov $48, %rcx
rep movsb
nop
nop
lfence
lea addresses_D_ht+0xcdac, %rsi
lea addresses_WC_ht+0x10854, %rdi
nop
nop
nop
nop
nop
add %r8, %r8
mov $83, %rcx
rep movsq
and $52533, %rdi
lea addresses_D_ht+0x13d54, %rsi
lea addresses_A_ht+0x8154, %rdi
nop
nop
nop
nop
nop
cmp $39594, %r8
mov $12, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $8019, %rbp
lea addresses_normal_ht+0x8254, %rsi
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rsi)
nop
and $334, %rdi
lea addresses_UC_ht+0x16734, %rdi
nop
nop
xor $35088, %r11
mov (%rdi), %r8d
nop
nop
nop
nop
nop
sub $52318, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %rax
push %rdi
push %rdx
push %rsi

// Faulty Load
lea addresses_US+0x1bd54, %rax
nop
nop
nop
nop
nop
inc %rdi
mov (%rax), %rsi
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 62}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
