.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rax
push %rdi

// Store
lea addresses_PSE+0x19a9e, %r15
nop
nop
nop
nop
sub $61070, %rax
movw $0x5152, (%r15)
nop
nop
xor $51041, %r13

// Store
lea addresses_D+0x7e1e, %r9
nop
sub %rax, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm1
movups %xmm1, (%r9)
nop
nop
xor %r10, %r10

// Faulty Load
mov $0xc1e, %rax
nop
xor $49830, %r8
vmovntdqa (%rax), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r13
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'92': 1, 'ff': 1, '2c': 2, 'f8': 1, '08': 7}
f8 08 08 08 08 92 08 ff 08 08 2c 2c
*/
