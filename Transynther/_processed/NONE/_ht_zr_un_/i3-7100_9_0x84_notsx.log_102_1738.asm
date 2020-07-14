.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1129, %rdi
nop
nop
nop
nop
cmp $47910, %r10
movb (%rdi), %r13b
nop
nop
inc %r15
lea addresses_D_ht+0xeec9, %rbp
nop
nop
and %r13, %r13
movw $0x6162, (%rbp)
nop
nop
nop
sub %r10, %r10
lea addresses_normal_ht+0x7479, %rsi
lea addresses_WC_ht+0x19e79, %rdi
nop
nop
nop
nop
nop
add %r13, %r13
mov $21, %rcx
rep movsw
nop
nop
nop
nop
dec %r13
lea addresses_D_ht+0xae99, %r10
clflush (%r10)
nop
nop
nop
nop
nop
cmp $43890, %r15
movb $0x61, (%r10)
nop
nop
nop
nop
add $12924, %rdi
lea addresses_WT_ht+0x1a379, %r13
nop
nop
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
movups %xmm1, (%r13)
sub $56250, %rsi
lea addresses_D_ht+0x13299, %rbp
nop
nop
nop
nop
nop
cmp %r13, %r13
movw $0x6162, (%rbp)
nop
and $44300, %r13
lea addresses_WC_ht+0xd1b7, %rsi
lea addresses_A_ht+0x722d, %rdi
nop
nop
and %r12, %r12
mov $49, %rcx
rep movsl
nop
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0xcb39, %rcx
nop
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
nop
nop
sub $62231, %rsi
lea addresses_D_ht+0x118f9, %rsi
lea addresses_WT_ht+0x7ddf, %rdi
nop
xor $28842, %r13
mov $9, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x148d9, %rdi
nop
cmp %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
xor $9461, %rsi
lea addresses_normal_ht+0x12679, %rsi
lea addresses_WT_ht+0x14af9, %rdi
nop
sub $3939, %r12
mov $50, %rcx
rep movsw
nop
xor %r10, %r10
lea addresses_normal_ht+0x1e479, %rsi
nop
nop
nop
nop
nop
inc %r12
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %r13
nop
sub %rcx, %rcx
lea addresses_D_ht+0x6b17, %rsi
lea addresses_WC_ht+0x7739, %rdi
nop
nop
nop
nop
nop
dec %rbp
mov $21, %rcx
rep movsb
nop
inc %rdi
lea addresses_A_ht+0xa79, %r15
nop
nop
nop
nop
nop
sub $34968, %rcx
mov (%r15), %r13d
nop
nop
nop
nop
nop
inc %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x3479, %r14
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm5
movups %xmm5, (%r14)
nop
nop
cmp $17796, %r8

// REPMOV
lea addresses_US+0x1a803, %rsi
lea addresses_PSE+0x138b9, %rdi
nop
nop
sub $31737, %rbp
mov $30, %rcx
rep movsl
nop
nop
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_A+0x6c79, %rbp
sub $30249, %rdi
movups (%rbp), %xmm1
vpextrq $0, %xmm1, %r10
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'28': 8, '00': 85, '48': 3, '47': 1, '44': 5}
00 00 00 00 00 00 00 44 00 44 00 28 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 28 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 28 00 00 44 00 48 00 00 00 00 00 00 00 00 00 00 00 00 28 00 44 00 00 00 28 00 00 47 00 00 00 28 00 00 00 28 00 00 00 00 00 00 00 28 00 44 00 00 00 00 00 00 00 00 00 48 00
*/
