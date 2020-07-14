.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rax
push %rbp
push %rbx
push %rsi
lea addresses_normal_ht+0x10426, %r13
nop
xor $34710, %r11
movb $0x61, (%r13)
cmp $24506, %r14
lea addresses_A_ht+0x1487f, %rax
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rax)
nop
nop
nop
nop
nop
and $14818, %r11
lea addresses_A_ht+0xc58e, %r11
cmp %rbx, %rbx
movw $0x6162, (%r11)
nop
nop
xor $22781, %rax
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rax
push %rdx
push %rsi

// Faulty Load
lea addresses_US+0x10e26, %rax
cmp %r9, %r9
movups (%rax), %xmm4
vpextrq $0, %xmm4, %r13
lea oracles, %r9
and $0xff, %r13
shlq $12, %r13
mov (%r9,%r13,1), %r13
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'00': 16}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
