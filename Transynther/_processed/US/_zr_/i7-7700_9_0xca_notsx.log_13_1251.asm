.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rdx

// Store
lea addresses_UC+0xbc35, %r8
clflush (%r8)
cmp %rbp, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movups %xmm7, (%r8)
nop
nop
add $17016, %r9

// Faulty Load
lea addresses_US+0x1c7c, %rbp
nop
nop
nop
nop
cmp $55669, %rdx
mov (%rbp), %r9w
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 13}
00 00 00 00 00 00 00 00 00 00 00 00 00
*/
