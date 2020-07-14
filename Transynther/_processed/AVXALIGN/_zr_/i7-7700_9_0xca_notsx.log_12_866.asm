.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rdx

// Load
lea addresses_A+0x1d5fe, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %rbx, %rbx
movaps (%rdi), %xmm5
vpextrq $0, %xmm5, %rdx
nop
nop
add $40021, %r10

// Faulty Load
lea addresses_US+0x9bfe, %rdx
clflush (%rdx)
nop
nop
nop
nop
add $17804, %r14
mov (%rdx), %cx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
