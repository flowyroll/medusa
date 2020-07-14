.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rdx

// Load
lea addresses_WT+0x17f37, %rax
nop
nop
nop
nop
add %rdx, %rdx
movaps (%rax), %xmm1
vpextrq $1, %xmm1, %rbp
nop
nop
nop
nop
and %rdx, %rdx

// Faulty Load
lea addresses_PSE+0x18b49, %r14
clflush (%r14)
nop
nop
add %rbp, %rbp
movups (%r14), %xmm1
vpextrq $1, %xmm1, %r9
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'33': 12}
33 33 33 33 33 33 33 33 33 33 33 33
*/
