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
push %rcx
push %rdx

// Store
lea addresses_WT+0x13280, %r13
add %r8, %r8
mov $0x5152535455565758, %r10
movq %r10, (%r13)
add %r15, %r15

// Store
lea addresses_A+0x1533, %rdx
nop
nop
nop
add %r14, %r14
movl $0x51525354, (%rdx)
nop
nop
nop
and $7656, %r8

// Store
lea addresses_RW+0x6533, %rcx
clflush (%rcx)
nop
nop
sub $19017, %r15
movl $0x51525354, (%rcx)
nop
nop
nop
and $36687, %r15

// Store
lea addresses_WT+0x74f3, %r13
xor $43964, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r13)
nop
nop
nop
and %r14, %r14

// Faulty Load
lea addresses_A+0x17d33, %r10
and %r15, %r15
mov (%r10), %cx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 2}
00 00
*/
