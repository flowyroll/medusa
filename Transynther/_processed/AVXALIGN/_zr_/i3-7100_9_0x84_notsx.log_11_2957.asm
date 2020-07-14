.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %r9
push %rax
push %rbp

// Load
lea addresses_US+0x5fe9, %r12
nop
nop
nop
nop
nop
sub %rax, %rax
mov (%r12), %ebp
nop
nop
sub $63934, %rax

// Store
lea addresses_normal+0x1c9e9, %r8
nop
nop
xor $38356, %r9
movw $0x5152, (%r8)
nop
nop
nop
and %r14, %r14

// Load
lea addresses_US+0x5fe9, %r12
nop
nop
cmp %rax, %rax
movb (%r12), %r8b
nop
nop
add $26946, %rax

// Store
lea addresses_US+0x1cf71, %r14
nop
nop
nop
nop
nop
dec %r8
movw $0x5152, (%r14)
nop
nop
nop
nop
xor $29816, %rax

// Store
mov $0x2e9, %r8
nop
and $1870, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%r8)
nop
nop
xor %r8, %r8

// Store
lea addresses_US+0x1c175, %r13
and %r12, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovups %ymm2, (%r13)
dec %r8

// Faulty Load
lea addresses_US+0x5fe9, %r13
nop
sub $3927, %r8
mov (%r13), %r14
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
