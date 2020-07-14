.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r8
push %r9
push %rsi

// Store
lea addresses_WC+0x19a47, %r10
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movups %xmm7, (%r10)
nop
dec %rsi

// Store
lea addresses_US+0xb9ff, %r8
nop
nop
nop
and %r14, %r14
movb $0x51, (%r8)
and $10709, %r9

// Store
lea addresses_US+0x1c36f, %r9
nop
add $31790, %r15
movb $0x51, (%r9)
nop
nop
nop
nop
nop
and %r15, %r15

// Store
lea addresses_US+0x193ff, %rsi
nop
and $39486, %r15
movw $0x5152, (%rsi)
xor $56431, %r14

// Store
lea addresses_WT+0x13fff, %r11
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %r9
movq %r9, (%r11)
inc %r9

// Store
lea addresses_RW+0x10acd, %r10
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm1
movups %xmm1, (%r10)
nop
nop
inc %r9

// Faulty Load
lea addresses_WT+0x103ff, %r10
clflush (%r10)
add $7650, %r15
mov (%r10), %r14w
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rsi
pop %r9
pop %r8
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'52': 48}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
