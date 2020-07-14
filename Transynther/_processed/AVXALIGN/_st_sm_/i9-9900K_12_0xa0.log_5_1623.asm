.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r8
push %r9
push %rax

// Store
lea addresses_UC+0x36dd, %r8
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %r11
movq %r11, (%r8)
nop
nop
nop
nop
xor %rax, %rax

// Store
mov $0x1e61df0000000d59, %r14
nop
nop
nop
sub %r9, %r9
movl $0x51525354, (%r14)
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_RW+0x9e5d, %r12
nop
cmp %r15, %r15
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movups %xmm2, (%r12)

// Exception!!!
mov (0), %r8
dec %r8

// Store
lea addresses_PSE+0x35dd, %r8
nop
nop
nop
nop
nop
sub $48336, %r9
movl $0x51525354, (%r8)
inc %r12

// Store
lea addresses_RW+0x16ddd, %r14
nop
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%r14)
nop
sub $49698, %r12

// Store
lea addresses_normal+0xce8d, %r12
nop
nop
nop
nop
nop
xor %rax, %rax
movb $0x51, (%r12)
nop
nop
nop
nop
nop
dec %rax

// Faulty Load
lea addresses_RW+0x16ddd, %r12
nop
and $17674, %r9
mov (%r12), %r8
lea oracles, %r11
and $0xff, %r8
shlq $12, %r8
mov (%r11,%r8,1), %r8
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_UC', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'58': 5}
58 58 58 58 58
*/
