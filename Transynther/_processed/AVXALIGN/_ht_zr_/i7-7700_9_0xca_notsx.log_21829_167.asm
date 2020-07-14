.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1d175, %rax
clflush (%rax)
nop
nop
nop
nop
nop
lfence
mov (%rax), %r12d
nop
cmp $52010, %rsi
lea addresses_normal_ht+0x15125, %rsi
lea addresses_normal_ht+0x15c65, %rdi
nop
nop
nop
nop
sub %rax, %rax
mov $106, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x4b75, %r12
add $57573, %r15
and $0xffffffffffffffc0, %r12
movaps (%r12), %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
and $48628, %rcx
lea addresses_A_ht+0x1adf5, %rcx
xor $38396, %rsi
mov (%rcx), %edi
xor $63788, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rbp
push %rbx
push %rdi
push %rdx

// Load
lea addresses_WT+0xe45a, %r13
clflush (%r13)
nop
nop
nop
nop
nop
add %rdi, %rdi
mov (%r13), %rdx
nop
nop
add %rdx, %rdx

// Faulty Load
lea addresses_A+0x19375, %rbx
nop
nop
nop
nop
nop
dec %r10
movaps (%rbx), %xmm7
vpextrq $1, %xmm7, %rdx
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'49': 2527, '44': 19287, '00': 15}
44 44 44 44 44 44 44 44 49 49 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 49 44 44 49 49 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 49 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 49 44 44 44 44 44 44 44 49 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 49 44 44 44 44 49 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 49 49 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 49 44 44 49 44 44 49 44 44 44 44 44 44 49 49 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 49 49 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 49 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 49 49 44 44 44 44 44 49 44 44 44 44 49 44 49 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 49 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 49 49 44 44 44 49 49 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 49 44 44 44 44 44 49 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 49 49 44 44 44 44 44 44 44 44 49 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 49 44 44 44 44 44 49 49 44 44 44 44 49 49 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 49 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 49 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 49 49 49 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 49 44 44 49 44 44 44 49 44 44 44 44 44 44 49 49 49 49 44 44 44 44 49 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 49 44 44 49 49 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 49 49 44 44 44 44 44 49 49 49 44 44 44 44 44 44 44 44 44 44 44
*/
