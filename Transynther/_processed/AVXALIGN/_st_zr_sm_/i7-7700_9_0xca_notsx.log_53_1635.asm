.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rax
lea addresses_UC_ht+0x735e, %r8
nop
and %rax, %rax
mov $0x6162636465666768, %r14
movq %r14, %xmm2
movups %xmm2, (%r8)
nop
nop
sub %r10, %r10
pop %rax
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rbx
push %rcx
push %rsi

// Store
mov $0xf9e, %r13
nop
nop
nop
and $34034, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm0
movups %xmm0, (%r13)
nop
nop
nop
add $37007, %rsi

// Faulty Load
mov $0xf9e, %r9
nop
nop
xor %r10, %r10
vmovntdqa (%r9), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r13
lea oracles, %rbx
and $0xff, %r13
shlq $12, %r13
mov (%rbx,%r13,1), %r13
pop %rsi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'00': 20, '58': 33}
58 00 58 00 58 58 58 00 00 00 58 58 00 00 00 58 58 58 58 58 58 58 58 00 58 00 00 00 58 00 00 58 58 58 58 58 00 58 00 58 58 58 58 58 00 58 58 58 58 58 00 00 00
*/
