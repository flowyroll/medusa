.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xe206, %rsi
lea addresses_A_ht+0x16806, %rdi
nop
nop
nop
cmp %rdx, %rdx
mov $52, %rcx
rep movsw
nop
nop
nop
nop
cmp $2347, %r9
lea addresses_WT_ht+0x1b406, %rsi
lea addresses_D_ht+0x1eb0a, %rdi
nop
cmp %r11, %r11
mov $60, %rcx
rep movsb
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0x1b006, %rdi
cmp $31803, %r10
mov (%rdi), %r9w
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0xc06, %r11
and %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
and $0xffffffffffffffc0, %r11
vmovaps %ymm1, (%r11)
nop
cmp %r9, %r9
lea addresses_WT_ht+0x5406, %rdi
nop
nop
nop
xor $18353, %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm4
movups %xmm4, (%rdi)
nop
nop
sub $22046, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %rcx
push %rdi
push %rdx

// Faulty Load
lea addresses_US+0x1f406, %rcx
nop
nop
nop
xor $26320, %rdi
mov (%rcx), %dx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 45}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
