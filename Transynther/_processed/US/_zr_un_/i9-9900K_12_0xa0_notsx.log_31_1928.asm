.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %r9
push %rbp

// Store
lea addresses_RW+0x2efc, %r15
add %rbp, %rbp
movl $0x51525354, (%r15)
nop
nop
nop
nop
inc %r9

// Store
lea addresses_PSE+0x7310, %r15
nop
nop
nop
nop
nop
and %r8, %r8
movw $0x5152, (%r15)
nop
nop
xor $4483, %r14

// Store
lea addresses_normal+0x1cf10, %r8
nop
xor $61793, %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
dec %r9

// Store
lea addresses_D+0x654c, %r15
sub $4234, %r9
mov $0x5152535455565758, %r10
movq %r10, %xmm0
vmovups %ymm0, (%r15)
nop
nop
xor $26857, %r14

// Store
lea addresses_WT+0x15250, %r13
nop
nop
nop
nop
and $52252, %r9
movw $0x5152, (%r13)
nop
nop
inc %r10

// Store
lea addresses_D+0x19f10, %r8
nop
nop
nop
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %r13
movq %r13, (%r8)
nop
nop
nop
nop
add %r8, %r8

// Faulty Load
lea addresses_US+0x17710, %r9
nop
nop
inc %r10
mov (%r9), %r15
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'ec': 1, '00': 30}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ec 00 00 00 00 00 00
*/
