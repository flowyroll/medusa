.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rsi

// Faulty Load
lea addresses_A+0x19a41, %r15
nop
nop
nop
nop
nop
and $63739, %r13
vmovaps (%r15), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rsi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'3b': 1, 'b4': 1, 'ac': 1, 'fa': 2, '88': 15}
88 fa fa 88 88 88 88 ac 3b 88 88 88 88 88 b4 88 88 88 88 88
*/
