.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
lea addresses_D_ht+0xedcd, %r14
nop
add $26953, %r15
mov (%r14), %r13d
nop
nop
nop
nop
nop
xor %r15, %r15
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rax
push %rbx
push %rdi
push %rsi

// Faulty Load
lea addresses_WT+0x314d, %rax
sub %rsi, %rsi
vmovups (%rax), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': True, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'71': 1, '2f': 1, '08': 4, '1a': 3}
2f 71 1a 1a 1a 08 08 08 08
*/
