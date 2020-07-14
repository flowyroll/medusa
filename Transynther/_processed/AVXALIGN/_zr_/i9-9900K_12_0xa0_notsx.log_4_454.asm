.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rsi

// Store
lea addresses_RW+0x3008, %r11
nop
nop
nop
and $25482, %r9
mov $0x5152535455565758, %rsi
movq %rsi, (%r11)
nop
nop
nop
add %r11, %r11

// Load
lea addresses_A+0x1d488, %rbp
nop
nop
sub $15403, %r13
mov (%rbp), %r14d
nop
nop
nop
sub %rsi, %rsi

// Load
lea addresses_normal+0x6288, %r11
nop
nop
nop
nop
inc %r15
mov (%r11), %r9d
nop
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_A+0x191fc, %rbp
nop
nop
nop
nop
add $38025, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
nop
nop
nop
add $35004, %r9

// Store
lea addresses_WT+0x1fa30, %r15
nop
nop
nop
nop
nop
dec %rsi
movl $0x51525354, (%r15)
nop
dec %rbp

// Store
lea addresses_WC+0x18848, %r14
nop
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%r14)
xor $13756, %r9

// Load
lea addresses_WT+0xc08, %rbp
nop
add %r13, %r13
mov (%rbp), %r14d
nop
nop
nop
dec %rbp

// Faulty Load
mov $0x7625a70000000e88, %rsi
nop
nop
nop
nop
add %r11, %r11
mov (%rsi), %r14
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rsi
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': True, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 4}
00 00 00 00
*/
