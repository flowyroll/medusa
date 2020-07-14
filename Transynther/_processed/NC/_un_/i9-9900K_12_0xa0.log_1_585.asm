.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rbx
push %rdi
push %rdx

// Store
lea addresses_PSE+0x94, %r12
nop
nop
nop
nop
nop
and %rdx, %rdx
movw $0x5152, (%r12)
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_WT+0xbd04, %r8
nop
nop
nop
cmp %r13, %r13
movl $0x51525354, (%r8)
nop
nop
and %r8, %r8

// Load
lea addresses_normal+0xd7a2, %rdx
nop
nop
nop
nop
xor $619, %rdi
mov (%rdx), %r12d
nop
and $50274, %r12

// Load
lea addresses_WC+0x1111e, %r8
xor $36997, %r13
movups (%r8), %xmm2
vpextrq $0, %xmm2, %r15
cmp $1043, %r8

// Faulty Load
mov $0x7838630000000f14, %rdi
nop
nop
nop
nop
add %rbx, %rbx
vmovups (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdx
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'08': 1}
08
*/
