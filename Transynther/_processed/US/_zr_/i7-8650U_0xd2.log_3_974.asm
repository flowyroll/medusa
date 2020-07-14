.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r15
push %r9
push %rax

// Load
lea addresses_PSE+0x4ea4, %rax
nop
nop
nop
nop
xor %r15, %r15
movb (%rax), %r13b
nop
add $55087, %r12

// Store
lea addresses_D+0x1e594, %r10
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovups %ymm3, (%r10)
sub %r15, %r15

// Store
lea addresses_A+0x15124, %r12
nop
nop
nop
nop
add $45794, %r9
movb $0x51, (%r12)
nop
nop
and %r13, %r13

// Store
lea addresses_normal+0x18904, %r15
nop
nop
nop
nop
and %r13, %r13
movb $0x51, (%r15)
nop
nop
nop
nop
nop
dec %r15

// Faulty Load
lea addresses_US+0x17124, %r14
cmp %r15, %r15
movups (%r14), %xmm4
vpextrq $1, %xmm4, %r12
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'00': 3}
00 00 00
*/
