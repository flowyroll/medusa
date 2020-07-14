.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rax
push %rbx
push %rsi
lea addresses_WC_ht+0x955a, %rbx
nop
nop
sub %r10, %r10
mov (%rbx), %si
nop
nop
sub %rax, %rax
pop %rsi
pop %rbx
pop %rax
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_UC+0x1ba3a, %rsi
mov $0x4eb7ba0000000712, %rdi
nop
nop
nop
dec %rdx
mov $74, %rcx
rep movsw
xor %rcx, %rcx

// Faulty Load
mov $0x53387c0000000a3a, %rdi
nop
nop
nop
and $18567, %r15
movaps (%rdi), %xmm4
vpextrq $0, %xmm4, %rcx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'00': 1}
00
*/
