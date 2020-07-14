.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rax
push %rdi
push %rsi
lea addresses_A_ht+0xdcd1, %r9
sub %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r9)
nop
cmp %r8, %r8
lea addresses_normal_ht+0xf6d1, %r8
nop
nop
nop
nop
xor $61138, %r11
movw $0x6162, (%r8)
nop
nop
nop
nop
dec %rax
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rbp
push %rdx
push %rsi

// Store
mov $0xe01, %r13
nop
add $45996, %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm7
movntdq %xmm7, (%r13)
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_UC+0x6591, %r13
nop
nop
nop
nop
nop
cmp %r11, %r11
movw $0x5152, (%r13)
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_A+0x148d1, %r13
add %rdx, %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%r13)
nop
nop
add %r15, %r15

// Store
mov $0xf51, %rsi
nop
sub %r14, %r14
movl $0x51525354, (%rsi)
nop
nop
nop
nop
inc %r15

// Faulty Load
mov $0x2d1, %r13
sub $36143, %r14
vmovaps (%r13), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r11
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rsi
pop %rdx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'ec': 1, '00': 86, '88': 1, '40': 1, '08': 3}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 88 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 40 00 00 00 00 ec 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
