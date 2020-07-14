.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r15
push %r9
push %rsi

// Store
mov $0x27f498000000020e, %r10
nop
nop
and $7034, %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%r10)
nop
cmp $21725, %r9

// Faulty Load
lea addresses_RW+0xd04e, %r15
xor %r11, %r11
vmovaps (%r15), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r9
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rsi
pop %r9
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
