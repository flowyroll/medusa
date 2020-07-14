.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rbp
push %rbx
push %rcx

// Load
mov $0x6fc4180000000b6e, %r8
nop
nop
nop
cmp %rbp, %rbp
movb (%r8), %r13b
sub %rbp, %rbp

// Store
lea addresses_normal+0x1b66e, %r8
nop
nop
inc %rcx
mov $0x5152535455565758, %r13
movq %r13, (%r8)
nop
nop
cmp %r8, %r8

// Faulty Load
lea addresses_RW+0xb56e, %rbp
nop
sub $28868, %r15
mov (%rbp), %cx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'32': 11}
32 32 32 32 32 32 32 32 32 32 32
*/
