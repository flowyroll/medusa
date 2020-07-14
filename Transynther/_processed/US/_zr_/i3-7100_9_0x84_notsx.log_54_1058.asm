.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1c255, %rsi
lea addresses_A_ht+0x1b15, %rdi
nop
nop
sub %rbx, %rbx
mov $30, %rcx
rep movsq
nop
nop
nop
nop
xor $18798, %r13
lea addresses_WC_ht+0xd2a5, %rsi
nop
cmp $12279, %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
nop
and $10299, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rbp
push %rcx
push %rsi

// Faulty Load
lea addresses_US+0xf315, %rcx
nop
nop
nop
nop
nop
xor %r8, %r8
movb (%rcx), %r10b
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rsi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 54}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
