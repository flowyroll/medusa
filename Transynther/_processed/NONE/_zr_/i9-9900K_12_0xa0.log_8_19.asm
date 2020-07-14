.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rbp
push %rdi
push %rsi

// Store
lea addresses_US+0x1afb3, %rbp
nop
nop
nop
nop
nop
inc %r10
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovaps %ymm6, (%rbp)
nop
nop
nop
nop
nop
xor $21623, %r12

// Faulty Load
lea addresses_WC+0x104f3, %rdi
nop
nop
nop
nop
and $37006, %r12
mov (%rdi), %r14w
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rsi
pop %rdi
pop %rbp
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_US', 'AVXalign': True, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 8}
00 00 00 00 00 00 00 00
*/
