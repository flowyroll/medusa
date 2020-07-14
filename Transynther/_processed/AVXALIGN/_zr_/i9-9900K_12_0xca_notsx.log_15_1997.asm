.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rdi

// Faulty Load
lea addresses_WT+0x14da1, %r11
nop
nop
nop
and %rdi, %rdi
vmovaps (%r11), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r12
lea oracles, %r10
and $0xff, %r12
shlq $12, %r12
mov (%r10,%r12,1), %r12
pop %rdi
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 15}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
