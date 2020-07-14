.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %r9

// Faulty Load
lea addresses_A+0x1dc78, %r14
nop
add $6275, %r12
movups (%r14), %xmm6
vpextrq $0, %xmm6, %r11
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'53': 1, 'b2': 1, '3c': 3258, 'bd': 1, '00': 181, 'b4': 1, 'ff': 18385, '2b': 1}
ff ff ff 3c 3c ff 3c ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c 3c 3c 3c ff ff ff ff 3c ff ff ff 3c ff ff ff ff ff ff 3c 3c 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff 3c ff ff 3c ff ff ff ff 3c 3c 3c ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff 3c 3c ff 3c ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c 3c 3c ff ff ff ff 3c ff 3c ff 3c ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c 3c 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff 3c ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff 3c ff ff 3c ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff 3c ff 3c ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff 3c 3c ff ff ff 3c ff ff ff 3c ff 3c 3c ff ff 3c ff ff 3c ff ff ff ff ff ff 3c 3c 3c 3c 3c 3c ff ff ff ff ff ff ff ff ff 3c 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c 00 3c ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff 3c ff ff 3c ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c 00 ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff 3c 3c ff ff 3c ff 3c 3c 3c 3c 3c 3c ff 3c ff 3c ff ff ff ff ff 3c ff ff ff 3c ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff 3c 00 ff ff ff ff ff ff 3c ff ff ff ff 3c ff ff ff ff 3c ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff 3c 00 ff ff ff 3c ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff 3c 3c ff ff ff 3c ff ff ff ff ff ff 3c 3c 3c ff ff ff ff 3c ff ff ff ff ff ff ff ff 3c ff ff 3c 3c ff ff 3c ff ff ff ff ff ff ff 3c 3c ff 3c 3c ff ff 3c 3c 3c 3c 3c ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff 3c ff ff ff ff ff ff ff ff 3c 3c ff ff ff ff ff ff ff ff 3c 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff 3c 3c ff ff ff 3c ff ff ff ff ff ff ff ff ff ff 3c 3c ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c 3c ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff 3c ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff ff 3c ff ff 3c ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3c ff ff ff 3c
*/
