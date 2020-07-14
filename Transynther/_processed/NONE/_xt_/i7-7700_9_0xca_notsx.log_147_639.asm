.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rcx
lea addresses_UC_ht+0xebcd, %r8
and $33966, %r13
mov (%r8), %rcx
nop
nop
nop
nop
nop
xor $51331, %r15
pop %rcx
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rax
push %rdx

// Store
mov $0x675dcd0000000f99, %r14
nop
nop
nop
nop
sub %rdx, %rdx
movl $0x51525354, (%r14)
inc %r8

// Store
lea addresses_A+0x2a59, %r15
nop
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %r10
movq %r10, (%r15)
nop
nop
nop
nop
xor $32105, %r13

// Faulty Load
lea addresses_D+0x3619, %r8
nop
nop
and %r13, %r13
mov (%r8), %r14w
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rdx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'36': 147}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
