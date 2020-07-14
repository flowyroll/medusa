.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rbx
push %rdx

// Store
lea addresses_US+0xa626, %r12
nop
nop
nop
nop
add %r8, %r8
movw $0x5152, (%r12)
nop
nop
nop
cmp %r13, %r13

// Load
lea addresses_RW+0xadbe, %r14
clflush (%r14)
nop
nop
nop
nop
nop
xor $54743, %r15
mov (%r14), %r13w
nop
inc %r15

// Store
lea addresses_D+0x1bbe6, %rdx
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %r8
movq %r8, (%rdx)
nop
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_D+0x82a6, %r12
clflush (%r12)
nop
nop
nop
nop
nop
sub %r15, %r15
movw $0x5152, (%r12)
nop
nop
nop
cmp $32088, %rdx

// Load
lea addresses_D+0x9c12, %r12
nop
nop
nop
nop
inc %r13
mov (%r12), %r8
nop
nop
nop
nop
xor %r12, %r12

// Faulty Load
lea addresses_US+0x1a626, %rbx
nop
nop
nop
nop
dec %r15
mov (%rbx), %r12d
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rdx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'52': 1}
52
*/
