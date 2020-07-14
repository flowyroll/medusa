.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rbp
push %rdi
push %rdx

// Store
lea addresses_normal+0x12cb2, %rdx
xor %r9, %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
movups %xmm7, (%rdx)
and %r9, %r9

// Faulty Load
mov $0x3eae6600000004b2, %rdi
nop
and $28117, %rbp
vmovups (%rdi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 33}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
