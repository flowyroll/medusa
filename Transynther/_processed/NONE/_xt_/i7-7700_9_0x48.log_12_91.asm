.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rax
push %rbx

// Store
lea addresses_A+0xd2e7, %r9
xor %rbx, %rbx
movb $0x51, (%r9)
nop
dec %r12

// Store
lea addresses_RW+0x3627, %r11
clflush (%r11)
nop
nop
nop
xor $35786, %r15
movb $0x51, (%r11)
nop
nop
nop
nop
nop
dec %r12

// Store
lea addresses_normal+0x48b7, %r15
nop
nop
nop
nop
nop
sub %r11, %r11
movw $0x5152, (%r15)
nop
inc %r9

// Store
mov $0x857, %r10
nop
nop
xor $65127, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm7
movups %xmm7, (%r10)
nop
inc %r9

// Load
mov $0xc27, %r12
clflush (%r12)
nop
nop
cmp %r9, %r9
mov (%r12), %r10d
nop
nop
nop
nop
nop
add $31956, %r10

// Faulty Load
lea addresses_normal+0x1bc27, %r9
clflush (%r9)
nop
nop
nop
and $31713, %rax
movb (%r9), %r15b
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 9, 'size': 4, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'34': 12}
34 34 34 34 34 34 34 34 34 34 34 34
*/
