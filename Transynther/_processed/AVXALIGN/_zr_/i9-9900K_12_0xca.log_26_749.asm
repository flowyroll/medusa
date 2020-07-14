.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rdx

// Store
lea addresses_UC+0xae3d, %rbp
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movups %xmm0, (%rbp)
nop
nop
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_D+0x1e69c, %r15
cmp %r8, %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movups %xmm0, (%r15)
nop
cmp %rbp, %rbp

// Faulty Load
lea addresses_D+0x34a5, %r12
nop
nop
nop
and %r8, %r8
vmovaps (%r12), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r14
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 26}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
