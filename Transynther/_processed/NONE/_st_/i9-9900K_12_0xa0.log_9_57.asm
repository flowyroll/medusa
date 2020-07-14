.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rdx

// Store
lea addresses_PSE+0xc1c8, %r13
nop
add %r8, %r8
movb $0x51, (%r13)
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_RW+0x5a08, %r15
nop
cmp %r14, %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm2
vmovups %ymm2, (%r15)
xor $2629, %rbx

// Faulty Load
lea addresses_A+0x12a08, %r13
nop
nop
cmp $55020, %rbp
mov (%r13), %r15w
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'58': 9}
58 58 58 58 58 58 58 58 58
*/
