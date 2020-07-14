.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rcx

// Store
lea addresses_D+0x10f7e, %rbp
nop
nop
nop
xor $8058, %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
sub $37225, %r14

// Load
lea addresses_US+0x190fe, %rcx
nop
nop
nop
nop
nop
dec %r13
mov (%rcx), %r15
nop
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_RW+0x6e2c, %rbp
nop
nop
nop
nop
and $46793, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rbp)
xor $18122, %rcx

// Faulty Load
lea addresses_PSE+0x1e8fe, %r15
nop
nop
nop
sub $3750, %r10
mov (%r15), %cx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'33': 1}
33
*/
