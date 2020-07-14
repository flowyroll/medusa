.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %r9
push %rdx

// Faulty Load
mov $0x93e, %r8
clflush (%r8)
nop
nop
nop
nop
xor %r9, %r9
vmovaps (%r8), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r10
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rdx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_P', 'congruent': 0}}
<gen_prepare_buffer>
{'30': 1, '04': 11, 'a8': 16}
30 a8 a8 a8 a8 04 a8 a8 04 a8 04 04 04 04 a8 04 04 a8 a8 04 a8 a8 a8 a8 04 a8 a8 04
*/
