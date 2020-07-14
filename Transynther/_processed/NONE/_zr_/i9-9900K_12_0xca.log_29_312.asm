.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rax
push %rsi

// Store
lea addresses_WC+0x17c21, %rsi
nop
nop
nop
xor $33271, %r14
mov $0x5152535455565758, %r11
movq %r11, (%rsi)
sub %r11, %r11

// Store
lea addresses_RW+0x11ef0, %r9
nop
nop
nop
nop
and $15250, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movntdq %xmm3, (%r9)
nop
add $41529, %r12

// Store
lea addresses_UC+0x13310, %r9
nop
nop
add $11386, %r11
mov $0x5152535455565758, %r12
movq %r12, (%r9)
xor $63902, %rsi

// Store
mov $0xc10, %r11
nop
nop
nop
nop
nop
add %r12, %r12
movb $0x51, (%r11)
nop
nop
nop
inc %rsi

// Faulty Load
lea addresses_WT+0x2110, %rsi
nop
nop
nop
sub $59876, %r12
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r9
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 29}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
