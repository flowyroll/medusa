.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r8
push %rbp
push %rbx

// Store
lea addresses_WT+0x1b722, %r8
nop
and %r15, %r15
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
nop
nop
and $57689, %r10

// Store
lea addresses_UC+0x1abac, %r13
xor %rbp, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%r13)
nop
nop
nop
nop
nop
add $17900, %rbp

// Faulty Load
lea addresses_UC+0x1abac, %r10
nop
nop
nop
nop
xor %rbx, %rbx
vmovups (%r10), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r13
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 2}
00 00
*/
