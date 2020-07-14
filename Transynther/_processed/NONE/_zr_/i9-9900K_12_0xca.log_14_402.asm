.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rbx
push %rsi

// Store
lea addresses_normal+0x19554, %rbx
nop
xor $2244, %r10
mov $0x5152535455565758, %r11
movq %r11, (%rbx)
nop
nop
cmp %r10, %r10

// Store
lea addresses_WC+0x19954, %rsi
nop
nop
nop
nop
xor $2647, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
nop
nop
add %r14, %r14

// Faulty Load
lea addresses_UC+0x15154, %r13
nop
nop
dec %r8
vmovups (%r13), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbx
lea oracles, %r14
and $0xff, %rbx
shlq $12, %rbx
mov (%r14,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 14}
00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
