.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdx

// Store
lea addresses_D+0x1ef5f, %r12
nop
nop
nop
nop
nop
inc %r8
movl $0x51525354, (%r12)
nop
nop
nop
add %r12, %r12

// Store
lea addresses_RW+0x1bcb7, %rdx
nop
nop
nop
dec %r14
movw $0x5152, (%rdx)
nop
nop
dec %r14

// Store
lea addresses_A+0x178b3, %r9
nop
nop
sub $27046, %rdx
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
add %r9, %r9

// Store
lea addresses_WC+0xe58f, %r9
nop
nop
nop
sub $6697, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovaps %ymm2, (%r9)
nop
nop
nop
nop
add $55910, %r12

// Store
lea addresses_US+0xbaac, %r9
nop
nop
nop
nop
nop
add $1303, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movups %xmm2, (%r9)
nop
nop
nop
nop
nop
dec %r14

// Store
lea addresses_WT+0x11833, %r9
dec %r8
mov $0x5152535455565758, %rbx
movq %rbx, (%r9)
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_WT+0x11833, %r14
nop
and $50919, %rbx
mov (%r14), %r12d
lea oracles, %rbx
and $0xff, %r12
shlq $12, %r12
mov (%rbx,%r12,1), %r12
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'58': 1}
58
*/
