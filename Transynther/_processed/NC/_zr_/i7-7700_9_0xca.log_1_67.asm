.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x13a99, %rsi
mov $0xb6d, %rdi
nop
cmp %r9, %r9
mov $83, %rcx
rep movsb
nop
nop
nop
and %rdi, %rdi

// Faulty Load
mov $0x424a470000000a8f, %r14
nop
nop
xor %rbx, %rbx
mov (%r14), %di
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 1}
00
*/
