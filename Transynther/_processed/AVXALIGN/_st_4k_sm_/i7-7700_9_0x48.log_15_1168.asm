.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rsi

// Store
mov $0xb59, %r11
nop
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %r9
movq %r9, (%r11)
nop
nop
sub %r9, %r9

// Store
lea addresses_WC+0x7359, %r8
xor %rcx, %rcx
mov $0x5152535455565758, %r11
movq %r11, (%r8)
nop
nop
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_A+0x118f8, %r8
nop
nop
nop
nop
nop
dec %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
and $0xffffffffffffffc0, %r8
vmovaps %ymm5, (%r8)
nop
nop
nop
nop
add $45153, %r15

// Load
lea addresses_PSE+0x17f59, %r8
nop
xor %rcx, %rcx
movups (%r8), %xmm1
vpextrq $1, %xmm1, %r9
nop
and %r9, %r9

// Store
lea addresses_UC+0xb59, %r12
nop
cmp %r15, %r15
movw $0x5152, (%r12)
nop
xor %r9, %r9

// Load
lea addresses_PSE+0x10e77, %r11
nop
nop
and %rsi, %rsi
mov (%r11), %r9
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_PSE+0xdf69, %r11
nop
nop
sub $8, %rsi
movw $0x5152, (%r11)
nop
nop
cmp $64209, %rsi

// Faulty Load
lea addresses_WC+0x7359, %rsi
cmp $7059, %r8
movb (%rsi), %r11b
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rsi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'58': 15}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
