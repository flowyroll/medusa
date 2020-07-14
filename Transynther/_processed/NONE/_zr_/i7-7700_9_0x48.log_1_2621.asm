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
push %rax
push %rsi

// Store
lea addresses_UC+0x12c83, %r13
nop
sub $22708, %r15
movb $0x51, (%r13)
nop
nop
nop
nop
and $44297, %r14

// Store
lea addresses_UC+0x18bfb, %r11
nop
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %rsi
movq %rsi, (%r11)
nop
nop
nop
add $45583, %r14

// Store
lea addresses_A+0x19498, %r11
nop
cmp $39021, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movntdq %xmm4, (%r11)
nop
nop
nop
nop
sub $34482, %r15

// Load
lea addresses_UC+0x15e43, %r14
nop
sub %r13, %r13
movb (%r14), %al
nop
nop
nop
nop
nop
cmp %r14, %r14

// Faulty Load
lea addresses_WC+0x1fe43, %r15
nop
nop
cmp $28898, %r11
movups (%r15), %xmm7
vpextrq $0, %xmm7, %r13
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rsi
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'00': 1}
00
*/
