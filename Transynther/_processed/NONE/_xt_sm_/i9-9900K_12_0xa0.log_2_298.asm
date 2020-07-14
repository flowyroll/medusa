.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_UC+0xd3d0, %rbp
nop
nop
nop
nop
xor $22104, %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%rbp)
nop
nop
cmp %r10, %r10

// Store
lea addresses_US+0x603a, %rbp
xor %r10, %r10
movb $0x51, (%rbp)
xor %rbp, %rbp

// Store
lea addresses_WC+0x1a9d0, %r15
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%r15)
cmp %r15, %r15

// Store
lea addresses_PSE+0x17dd0, %rbp
cmp $59190, %r11
movl $0x51525354, (%rbp)
nop
nop
nop
and $27264, %r11

// Faulty Load
lea addresses_WC+0x1a9d0, %r15
nop
xor %r10, %r10
mov (%r15), %cx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'58': 2}
58 58
*/
