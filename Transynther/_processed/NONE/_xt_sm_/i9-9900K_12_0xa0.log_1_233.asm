.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rcx
lea addresses_WT_ht+0x9734, %r14
nop
nop
nop
nop
and $40353, %rcx
mov (%r14), %r9
nop
nop
nop
nop
sub %r13, %r13
pop %rcx
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rax
push %rbx
push %rdx

// Store
lea addresses_D+0xdf34, %rbx
nop
nop
add %r14, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_US+0x1376c, %r12
clflush (%r12)
nop
nop
nop
inc %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%r12)
nop
nop
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_normal+0xeaab, %rax
nop
nop
nop
nop
nop
sub %r9, %r9
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
sub $28641, %rbx

// Store
mov $0x14f240000000634, %rax
nop
sub %r13, %r13
movw $0x5152, (%rax)
nop
nop
nop
nop
and $21797, %r13

// Store
lea addresses_PSE+0xd634, %r14
nop
nop
nop
nop
nop
and $26707, %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovups %ymm1, (%r14)
nop
nop
nop
sub %r12, %r12

// Load
lea addresses_D+0xf2d4, %r13
nop
dec %rax
mov (%r13), %bx
nop
sub $38847, %r9

// Store
lea addresses_WC+0x15334, %r9
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %r13
movq %r13, (%r9)
nop
nop
cmp %rdx, %rdx

// Faulty Load
lea addresses_D+0xdf34, %rbx
nop
nop
nop
nop
xor $15857, %r9
mov (%rbx), %r14w
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'58': 1}
58
*/
