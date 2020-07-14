.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x10231, %rsi
lea addresses_WC_ht+0x12c31, %rdi
nop
nop
cmp $16841, %rbx
mov $92, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x49d9, %rsi
lea addresses_normal_ht+0x94b1, %rdi
clflush (%rsi)
nop
nop
nop
and %r10, %r10
mov $26, %rcx
rep movsw
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x1e0d1, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
and $0xffffffffffffffc0, %rdi
movntdq %xmm1, (%rdi)
nop
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rbp
push %rdx
push %rsi

// Faulty Load
lea addresses_US+0x18e31, %rbp
nop
nop
nop
nop
sub %r9, %r9
mov (%rbp), %r11w
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rsi
pop %rdx
pop %rbp
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 68}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
