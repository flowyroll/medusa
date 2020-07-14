.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r8
push %rcx
push %rdx

// Store
lea addresses_A+0x18255, %r8
nop
cmp %r12, %r12
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
dec %r10

// Store
lea addresses_UC+0x17ef5, %r8
nop
nop
nop
add $42457, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm0
vmovups %ymm0, (%r8)
dec %r12

// Faulty Load
lea addresses_UC+0x1d255, %r10
nop
nop
nop
sub %rcx, %rcx
movups (%r10), %xmm6
vpextrq $1, %xmm6, %rdx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'08': 4, '72': 4, '71': 1, '00': 4, '3e': 1, 'c5': 1, 'ff': 2}
3e 08 00 72 08 08 72 00 71 08 72 72 00 c5 00 ff ff
*/
