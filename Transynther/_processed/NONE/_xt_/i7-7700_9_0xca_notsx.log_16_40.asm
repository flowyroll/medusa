.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rbx
push %rsi

// Store
mov $0x32e52f00000002c5, %rax
nop
nop
nop
nop
nop
sub $31498, %r14
mov $0x5152535455565758, %r11
movq %r11, (%rax)
nop
nop
nop
xor $54337, %rsi

// Faulty Load
lea addresses_RW+0x1120, %rbx
xor $9376, %r8
movb (%rbx), %al
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'32': 16}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
