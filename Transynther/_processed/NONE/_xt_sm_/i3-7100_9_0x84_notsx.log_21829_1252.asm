.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x148d2, %rsi
lea addresses_D_ht+0x16438, %rdi
clflush (%rdi)
nop
nop
nop
xor %rax, %rax
mov $58, %rcx
rep movsl
nop
nop
nop
cmp %rbp, %rbp
lea addresses_A_ht+0x194f8, %r10
nop
nop
nop
nop
cmp $3037, %r15
movl $0x61626364, (%r10)
nop
nop
inc %r15
lea addresses_WT_ht+0x11a38, %r15
nop
nop
nop
nop
nop
and %rsi, %rsi
mov (%r15), %r10d
nop
nop
nop
nop
and $48025, %rbp
lea addresses_WT_ht+0xc138, %r15
nop
nop
xor %rbp, %rbp
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x59b8, %rsi
lea addresses_WC_ht+0x2438, %rdi
nop
sub %r9, %r9
mov $27, %rcx
rep movsl
nop
nop
cmp $55327, %rcx
lea addresses_WT_ht+0x2358, %rsi
lea addresses_normal_ht+0x2b38, %rdi
nop
nop
nop
nop
dec %r15
mov $89, %rcx
rep movsl
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x24b8, %rsi
lea addresses_A_ht+0x19cc4, %rdi
nop
nop
nop
sub %rbp, %rbp
mov $33, %rcx
rep movsw
nop
sub %rdi, %rdi
lea addresses_WT_ht+0xcf38, %rcx
cmp $4782, %r9
movw $0x6162, (%rcx)
nop
nop
inc %rbp
lea addresses_WC_ht+0x1b706, %rsi
lea addresses_UC_ht+0x3e38, %rdi
sub $12714, %r15
mov $99, %rcx
rep movsq
and $54204, %rbp
lea addresses_D_ht+0xad62, %rdi
nop
nop
nop
nop
nop
dec %rbp
mov $0x6162636465666768, %r9
movq %r9, (%rdi)
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x1ac58, %rcx
nop
nop
nop
add $13136, %r9
mov $0x6162636465666768, %rax
movq %rax, %xmm3
vmovups %ymm3, (%rcx)
nop
inc %r10
lea addresses_A_ht+0xde78, %rsi
lea addresses_WT_ht+0x1e938, %rdi
xor $7150, %r9
mov $21, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_WT_ht+0x1538, %rsi
lea addresses_normal_ht+0x11538, %rdi
nop
nop
dec %r10
mov $40, %rcx
rep movsl
nop
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0xe938, %rbp
nop
nop
nop
nop
add $3137, %rax
mov $0x6162636465666768, %r15
movq %r15, %xmm5
movups %xmm5, (%rbp)
nop
nop
nop
nop
dec %r15
lea addresses_D_ht+0xe038, %rbp
nop
nop
nop
lfence
mov $0x6162636465666768, %r15
movq %r15, %xmm3
movups %xmm3, (%rbp)
nop
nop
nop
nop
inc %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdx

// Store
lea addresses_normal+0x15438, %r12
clflush (%r12)
nop
nop
nop
nop
nop
xor $47601, %r15
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r12)
nop
add $35728, %rax

// Store
lea addresses_WT+0x9a78, %r9
nop
nop
nop
nop
add %rbp, %rbp
movl $0x51525354, (%r9)
nop
nop
nop
and %rdx, %rdx

// Faulty Load
lea addresses_normal+0x15438, %rcx
mfence
movups (%rcx), %xmm0
vpextrq $0, %xmm0, %r15
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
