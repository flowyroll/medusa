.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r8
push %rbx
push %rdx

// Store
lea addresses_US+0x9683, %r8
nop
nop
add $52126, %r14
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
dec %r12

// Store
lea addresses_UC+0x145c3, %r13
nop
nop
sub $64615, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovups %ymm2, (%r13)
nop
nop
nop
nop
xor $9602, %r10

// Faulty Load
lea addresses_A+0x15f03, %r10
nop
nop
nop
dec %rbx
mov (%r10), %edx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 4}
00 00 00 00
*/
