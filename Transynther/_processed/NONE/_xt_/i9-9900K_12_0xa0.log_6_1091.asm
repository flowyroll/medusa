.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rax
lea addresses_WT_ht+0xc0ce, %r12
nop
and %r14, %r14
mov (%r12), %rax
nop
nop
nop
and $14363, %r8
pop %rax
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_RW+0x1520e, %rcx
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %r15
movq %r15, %xmm7
vmovups %ymm7, (%rcx)
nop
dec %r15

// Store
lea addresses_US+0xec0e, %r10
nop
nop
and $10398, %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm5
vmovups %ymm5, (%r10)
nop
nop
nop
nop
and %rcx, %rcx

// Faulty Load
lea addresses_D+0x140e, %rsi
nop
nop
nop
and $47407, %r15
mov (%rsi), %r13
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'36': 6}
36 36 36 36 36 36
*/
