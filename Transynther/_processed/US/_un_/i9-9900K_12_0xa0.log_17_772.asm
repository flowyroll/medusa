.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rsi

// Load
lea addresses_D+0xedd7, %rcx
nop
nop
inc %r15
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %rbx
nop
nop
nop
dec %rcx

// Faulty Load
lea addresses_US+0x1f939, %rsi
add $63589, %r13
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r8
lea oracles, %r9
and $0xff, %r8
shlq $12, %r8
mov (%r9,%r8,1), %r8
pop %rsi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'08': 8, '72': 8, '06': 1}
06 72 08 72 08 08 08 08 72 72 08 08 72 72 72 72 08
*/
