.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1dc49, %rsi
lea addresses_WT_ht+0xadd8, %rdi
nop
cmp $12555, %r13
mov $104, %rcx
rep movsq
nop
nop
and $57581, %rdx
lea addresses_D_ht+0x173c9, %rsi
lea addresses_normal_ht+0x4bc1, %rdi
nop
nop
nop
nop
xor $13115, %rbx
mov $39, %rcx
rep movsl
nop
nop
inc %rdx
lea addresses_WC_ht+0xdae1, %rcx
nop
nop
nop
and %r14, %r14
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
nop
nop
nop
inc %r14
lea addresses_WT_ht+0x1c09, %rsi
lea addresses_UC_ht+0x95c9, %rdi
and $16527, %r10
mov $33, %rcx
rep movsb
nop
nop
xor $27873, %rcx
lea addresses_WC_ht+0x7dc9, %r10
nop
nop
nop
nop
nop
cmp $33216, %r14
movl $0x61626364, (%r10)
nop
nop
cmp %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x11889, %rsi
lea addresses_WT+0xba49, %rdi
nop
nop
nop
cmp $36259, %r14
mov $83, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $42495, %rbp

// Store
lea addresses_RW+0x17d09, %r14
clflush (%r14)
nop
nop
nop
nop
and $43680, %rax
movb $0x51, (%r14)
nop
nop
nop
nop
xor $48961, %rsi

// Store
lea addresses_normal+0xa437, %r14
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r14)
nop
cmp $13348, %rsi

// Store
lea addresses_D+0x1e5c9, %r14
nop
inc %rsi
movl $0x51525354, (%r14)
nop
nop
nop
and $37722, %r14

// Store
lea addresses_normal+0x182c9, %rsi
and $13405, %r14
movl $0x51525354, (%rsi)
and $42233, %rsi

// Faulty Load
mov $0x6460e800000005c9, %r14
nop
nop
nop
and %rbp, %rbp
mov (%r14), %si
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'54': 289, '00': 25}
54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 00 00 54 54 00 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
