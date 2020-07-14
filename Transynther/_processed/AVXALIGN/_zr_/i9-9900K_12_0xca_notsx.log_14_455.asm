.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rsi

// Store
lea addresses_WC+0x15b4e, %r14
sub $57366, %r13
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovaps %ymm1, (%r14)
nop
nop
and %r13, %r13

// Faulty Load
lea addresses_D+0x734e, %r15
nop
nop
nop
nop
xor %r8, %r8
movaps (%r15), %xmm2
vpextrq $0, %xmm2, %r14
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rsi
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': True, 'AVXalign': True, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 14}
00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
