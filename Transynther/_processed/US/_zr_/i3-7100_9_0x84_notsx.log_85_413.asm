.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xe29c, %rsi
lea addresses_UC_ht+0x1cc88, %rdi
nop
nop
nop
nop
nop
xor $20206, %r9
mov $18, %rcx
rep movsw
nop
nop
nop
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rdi
push %rsi

// Faulty Load
lea addresses_US+0x181c, %r13
nop
nop
nop
xor $29920, %rsi
movups (%r13), %xmm5
vpextrq $0, %xmm5, %r14
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rsi
pop %rdi
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'00': 85}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
