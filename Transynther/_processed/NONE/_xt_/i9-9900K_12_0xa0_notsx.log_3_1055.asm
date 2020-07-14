.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rcx
push %rdx
push %rsi

// Store
mov $0x227df6000000074e, %r8
nop
nop
nop
nop
add %rdx, %rdx
movw $0x5152, (%r8)
nop
nop
sub %r8, %r8

// Faulty Load
lea addresses_WT+0x1649e, %rsi
nop
nop
add $31994, %rcx
mov (%rsi), %r11d
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rsi
pop %rdx
pop %rcx
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'39': 3}
39 39 39
*/
