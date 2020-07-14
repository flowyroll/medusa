.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x7ed8, %r14
nop
nop
nop
sub %r8, %r8
mov (%r14), %r13d
nop
nop
nop
nop
inc %r13
lea addresses_normal_ht+0x1302e, %rsi
lea addresses_A_ht+0x1ac2e, %rdi
clflush (%rsi)
nop
nop
add $20581, %r10
mov $116, %rcx
rep movsl
nop
nop
nop
nop
mfence
lea addresses_WT_ht+0x1e56a, %rsi
lea addresses_UC_ht+0xb7e6, %rdi
nop
nop
nop
cmp $30363, %rdx
mov $46, %rcx
rep movsq
nop
nop
nop
nop
sub $18362, %rdi
lea addresses_A_ht+0xca86, %rsi
lea addresses_normal_ht+0x522e, %rdi
nop
xor %r8, %r8
mov $100, %rcx
rep movsq
nop
nop
nop
nop
sub %r8, %r8
lea addresses_normal_ht+0x1eae, %rsi
lea addresses_A_ht+0x178ee, %rdi
nop
nop
nop
nop
nop
and %r10, %r10
mov $11, %rcx
rep movsb
add $7349, %rdi
lea addresses_WC_ht+0x1deae, %rsi
nop
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
nop
sub %r13, %r13
lea addresses_A_ht+0x1582e, %r14
nop
nop
nop
add $42224, %r13
mov (%r14), %r10d
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x14a2e, %rdi
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%rdi), %r14w
nop
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0x19102, %rdx
cmp $54510, %r10
movb $0x61, (%rdx)
nop
cmp $5810, %r10
lea addresses_normal_ht+0x1649c, %rdi
nop
nop
nop
xor $64286, %r14
mov (%rdi), %esi
xor %r10, %r10
lea addresses_WT_ht+0x142e, %r14
clflush (%r14)
nop
inc %rsi
mov (%r14), %rcx
add %rdi, %rdi
lea addresses_WT_ht+0x3476, %rdx
cmp $764, %rsi
mov $0x6162636465666768, %r8
movq %r8, (%rdx)
nop
nop
nop
nop
nop
add $50036, %r10
lea addresses_UC_ht+0xeb6e, %r14
nop
nop
nop
add $11139, %rdi
mov $0x6162636465666768, %r8
movq %r8, (%r14)
nop
nop
nop
sub $10331, %r13
lea addresses_normal_ht+0x13c5c, %rsi
lea addresses_UC_ht+0x13c4e, %rdi
nop
nop
nop
cmp %r14, %r14
mov $57, %rcx
rep movsq
nop
nop
nop
add %r14, %r14
lea addresses_A_ht+0x9c0a, %r14
nop
nop
nop
nop
nop
and $33842, %r13
and $0xffffffffffffffc0, %r14
movaps (%r14), %xmm3
vpextrq $0, %xmm3, %r10
nop
sub $3824, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_WT+0x1c68e, %r15
nop
nop
nop
nop
nop
add $33336, %r13
movl $0x51525354, (%r15)
nop
nop
nop
nop
xor %rbp, %rbp

// Faulty Load
mov $0x82e, %rdi
nop
nop
nop
cmp $43737, %r14
mov (%rdi), %r13d
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'00': 23}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
