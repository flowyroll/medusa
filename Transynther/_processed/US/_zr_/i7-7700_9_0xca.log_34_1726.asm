.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x405, %rsi
lea addresses_normal+0x1d661, %rdi
nop
nop
nop
nop
xor %r10, %r10
mov $41, %rcx
rep movsq
nop
nop
nop
nop
nop
and %r12, %r12

// Store
mov $0x5c3af70000000005, %r14
nop
nop
nop
nop
nop
cmp %r10, %r10
movw $0x5152, (%r14)
cmp %r12, %r12

// Faulty Load
lea addresses_US+0x1fe05, %rdi
nop
add %r10, %r10
movb (%rdi), %r14b
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 34}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
