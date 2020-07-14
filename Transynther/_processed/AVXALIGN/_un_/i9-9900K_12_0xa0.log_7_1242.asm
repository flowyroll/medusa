.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %rbp
push %rbx
push %rcx

// Store
lea addresses_D+0x8efb, %r12
nop
xor %r15, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm3
movups %xmm3, (%r12)
nop
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_US+0x121d3, %rbp
nop
nop
cmp $62528, %rcx
movl $0x51525354, (%rbp)
nop
xor $23508, %rbp

// Store
mov $0x69b, %rbp
nop
nop
nop
and $47681, %r13
movl $0x51525354, (%rbp)
and $56264, %r12

// Store
mov $0x601, %r12
and $57656, %r15
movl $0x51525354, (%r12)
and %r10, %r10

// Store
lea addresses_WC+0xfefb, %rcx
nop
nop
nop
nop
sub $40648, %r13
movl $0x51525354, (%rcx)
nop
nop
nop
nop
sub $3730, %r12

// Store
mov $0x5a9c3f0000000b3b, %r15
nop
nop
and $10778, %r12
mov $0x5152535455565758, %rbx
movq %rbx, (%r15)
dec %r15

// Store
mov $0xdd3, %rcx
cmp %rbp, %rbp
movb $0x51, (%rcx)
cmp $40691, %rcx

// Faulty Load
mov $0x6c20f000000002fb, %r15
and $53387, %rbp
vmovntdqa (%r15), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_US', 'AVXalign': True, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_P', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_P', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'88': 1, 'a8': 1, '08': 4, '26': 1}
a8 08 08 88 08 08 26
*/
