.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rsi
lea addresses_normal_ht+0xde92, %rsi
nop
nop
nop
nop
nop
and %r14, %r14
mov (%rsi), %r12w
nop
nop
nop
nop
nop
add %r14, %r14
pop %rsi
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rbp
push %rbx
push %rcx

// Faulty Load
mov $0x30d030000000b92, %r14
add $49559, %r10
vmovups (%r14), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbp
lea oracles, %r14
and $0xff, %rbp
shlq $12, %rbp
mov (%r14,%rbp,1), %rbp
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'06': 3, '60': 7, 'f4': 1}
06 60 60 60 60 60 f4 06 60 06 60
*/
