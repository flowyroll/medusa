.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x172bc, %r15
nop
nop
nop
nop
and %rdi, %rdi
mov (%r15), %r9d
add %rax, %rax
lea addresses_A_ht+0x48bc, %rsi
lea addresses_A_ht+0x5d1c, %rdi
nop
nop
nop
nop
inc %r15
mov $120, %rcx
rep movsq
nop
nop
nop
nop
cmp $44074, %r15
lea addresses_WT_ht+0xfe85, %r15
nop
add $20292, %r13
mov (%r15), %ax
nop
nop
dec %rdi
lea addresses_WT_ht+0x1e44c, %rdi
nop
nop
nop
nop
xor %r9, %r9
mov (%rdi), %r15
nop
nop
nop
nop
nop
cmp %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi

// Load
lea addresses_WT+0x1bbc, %rcx
add %r13, %r13
mov (%rcx), %edi

// Exception!!!
nop
nop
mov (0), %r13
nop
xor %rbp, %rbp

// Load
lea addresses_US+0x7bbc, %r13
nop
nop
sub $33914, %r12
mov (%r13), %r15w
nop
nop
cmp %r13, %r13

// Faulty Load
lea addresses_US+0x7bbc, %rbp
nop
nop
xor %r10, %r10
movups (%rbp), %xmm7
vpextrq $1, %xmm7, %r12
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'45': 18595, '00': 3234}
45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 00 00 45 45 00 45 45 45 00 45 45 45 45 00 45 45 45 45 00 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 00 00 45 45 45 45 45 00 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 00 45 00 45 00 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 00 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 00 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 00 45 00 00 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 00 00 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 00 45
*/
