.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdx

// Store
lea addresses_normal+0x1ef42, %rax
clflush (%rax)
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%rax)
nop
nop
nop
nop
add %r13, %r13

// Faulty Load
lea addresses_US+0x15d71, %rcx
nop
nop
nop
nop
and $20081, %rbp
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %r12
lea oracles, %rcx
and $0xff, %r12
shlq $12, %r12
mov (%rcx,%r12,1), %r12
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 2}
00 00
*/
