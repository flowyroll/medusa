.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r9
push %rcx
push %rsi

// Store
lea addresses_UC+0xad79, %rcx
sub $41114, %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
xor $41536, %r15

// Faulty Load
lea addresses_normal+0x1a8c5, %rsi
and %r11, %r11
movaps (%rsi), %xmm3
vpextrq $1, %xmm3, %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'b0': 18, '08': 91, '00': 28, '40': 16, '71': 19, 'e8': 67, 'ff': 9, '07': 20}
e8 e8 e8 e8 e8 e8 e8 e8 e8 e8 e8 e8 e8 e8 08 e8 e8 e8 e8 e8 e8 e8 08 00 e8 00 00 e8 e8 e8 e8 e8 e8 e8 e8 e8 e8 e8 08 ff 00 00 e8 e8 e8 e8 08 e8 e8 00 e8 e8 08 e8 ff e8 e8 08 e8 e8 00 08 e8 e8 e8 e8 e8 e8 e8 e8 e8 e8 e8 08 e8 e8 e8 00 00 e8 e8 08 e8 e8 08 e8 08 e8 e8 b0 ff b0 08 00 b0 b0 08 00 08 b0 ff 08 08 00 b0 b0 b0 08 08 08 08 08 b0 b0 ff 08 b0 08 b0 00 00 08 b0 08 08 00 00 b0 b0 b0 00 08 08 b0 08 b0 08 ff 00 40 08 08 40 08 40 08 08 08 00 40 40 40 08 08 40 08 08 40 08 08 08 ff 08 40 ff 08 40 08 08 08 40 40 40 08 40 08 08 08 08 40 08 00 08 40 00 00 07 07 07 07 07 08 08 08 08 08 08 08 07 08 00 07 07 08 07 07 07 07 00 07 07 00 07 07 08 07 08 07 08 08 07 07 71 08 71 71 71 08 71 08 00 00 71 08 08 08 71 71 08 71 71 08 71 ff 08 71 08 08 00 71 71 08 71 08 71 08 08 08 08 08 71 08 08 08 08 71 08 71
*/
