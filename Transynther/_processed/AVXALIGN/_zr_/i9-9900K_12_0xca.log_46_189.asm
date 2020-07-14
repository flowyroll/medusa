.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rax
push %rbp

// Faulty Load
lea addresses_A+0x10fa8, %r10
clflush (%r10)
nop
nop
add %rax, %rax
vmovaps (%r10), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r15
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 46}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
