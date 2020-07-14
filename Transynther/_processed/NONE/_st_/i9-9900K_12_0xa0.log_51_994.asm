.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_RW+0x18886, %rsi
mov $0x632, %rdi
inc %rdx
mov $63, %rcx
rep movsw

// Exception!!!
nop
mov (0), %rdx
nop
nop
xor %rcx, %rcx

// Store
lea addresses_US+0x15232, %rsi
clflush (%rsi)
nop
and %r14, %r14
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
nop
nop
add %r12, %r12

// Faulty Load
lea addresses_A+0x7632, %rsi
nop
nop
inc %rdx
mov (%rsi), %r14
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_RW'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'32': 51}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
