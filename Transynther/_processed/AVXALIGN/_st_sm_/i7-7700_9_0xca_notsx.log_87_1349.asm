.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rbx

// Store
lea addresses_RW+0x7208, %r13
nop
nop
nop
nop
nop
and %rbx, %rbx
movb $0x51, (%r13)
nop
nop
add $253, %rbx

// Store
lea addresses_normal+0x1d508, %r11
nop
and $65117, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%r11)
nop
and $37883, %rbx

// Store
lea addresses_UC+0xd808, %rbp
and $7303, %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
movups %xmm3, (%rbp)
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_D+0x4508, %r14
nop
add $63493, %rbx
mov $0x5152535455565758, %r11
movq %r11, %xmm4
vmovups %ymm4, (%r14)
nop
nop
nop
nop
and %r11, %r11

// Faulty Load
lea addresses_D+0x4508, %rax
nop
inc %rbp
mov (%rax), %r13
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'58': 87}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
