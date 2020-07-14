.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r8
push %r9
push %rdx

// Store
lea addresses_UC+0x54ec, %r9
clflush (%r9)
sub %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
sub $30526, %r14

// Store
lea addresses_UC+0x7fac, %r8
clflush (%r8)
nop
nop
nop
nop
nop
add %r11, %r11
movb $0x51, (%r8)
nop
nop
add %r9, %r9

// Faulty Load
lea addresses_UC+0x54ec, %rdx
add %r13, %r13
mov (%rdx), %r12
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rdx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'58': 35}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
