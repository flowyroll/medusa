.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x8bc9, %rsi
nop
nop
sub $5209, %r12
mov (%rsi), %r15w
nop
and %r15, %r15
lea addresses_UC_ht+0x181ab, %r15
nop
nop
nop
add $9585, %rdi
movb (%r15), %dl
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0xb2c9, %rsi
lea addresses_WC_ht+0xefc9, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $18167, %rbx
mov $104, %rcx
rep movsl
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x115b9, %rdx
and %rdi, %rdi
movw $0x6162, (%rdx)
nop
nop
inc %rdx
lea addresses_WT_ht+0x25c9, %r15
nop
nop
nop
nop
nop
inc %rbx
mov (%r15), %r12d
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0xe249, %rsi
lea addresses_WT_ht+0x34c9, %rdi
nop
nop
nop
nop
dec %r12
mov $31, %rcx
rep movsb
nop
nop
sub %r15, %r15
lea addresses_A_ht+0x16009, %r15
clflush (%r15)
nop
nop
nop
nop
sub %rsi, %rsi
vmovups (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdx
xor %r15, %r15
lea addresses_normal_ht+0x197c9, %rbx
nop
nop
nop
nop
and $52359, %r15
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
cmp $2906, %rcx
lea addresses_WT_ht+0x10861, %r15
nop
xor %rcx, %rcx
vmovups (%r15), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x139aa, %rbx
clflush (%rbx)
nop
nop
nop
and $55748, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm0
vmovups %ymm0, (%rbx)
cmp %r15, %r15
lea addresses_normal_ht+0x139f1, %rbx
nop
nop
nop
nop
cmp $6523, %rcx
mov (%rbx), %r15
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x2fc9, %rcx
nop
nop
nop
nop
sub %r15, %r15
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbx
cmp $44814, %r15
lea addresses_A_ht+0xbab9, %rsi
lea addresses_D_ht+0x186f9, %rdi
nop
nop
and %r12, %r12
mov $61, %rcx
rep movsl
nop
nop
nop
add $1060, %rdi
lea addresses_normal_ht+0x1549, %rsi
lea addresses_WT_ht+0x10aa1, %rdi
cmp %r9, %r9
mov $125, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $15397, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rsi

// Store
lea addresses_normal+0x1e35, %rcx
nop
nop
nop
xor $10670, %rbp
movb $0x51, (%rcx)
nop
nop
nop
inc %rbp

// Store
mov $0x537f2500000003c9, %r10
nop
nop
nop
nop
cmp $14026, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm4
vmovaps %ymm4, (%r10)
sub $33247, %rax

// Load
lea addresses_US+0x10571, %rcx
nop
add $1748, %r10
movups (%rcx), %xmm1
vpextrq $1, %xmm1, %rbp
nop
nop
nop
nop
inc %rsi

// Load
lea addresses_A+0x167c9, %r15
nop
nop
nop
sub %rbp, %rbp
vmovups (%r15), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rax
nop
nop
nop
nop
nop
sub %r15, %r15

// Store
mov $0x24fce0000000753, %rsi
add %rcx, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm0
movups %xmm0, (%rsi)
cmp %rsi, %rsi

// Store
lea addresses_RW+0xe1c9, %rbp
nop
nop
add $43962, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm2
movups %xmm2, (%rbp)
nop
nop
add $11860, %rax

// Faulty Load
lea addresses_D+0x12fc9, %r10
nop
nop
and %rsi, %rsi
movntdqa (%r10), %xmm2
vpextrq $1, %xmm2, %rcx
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'49': 4, '00': 15, '48': 7, '45': 28, '44': 5}
00 45 45 44 45 49 45 44 44 45 48 00 45 45 45 45 44 48 00 45 49 45 45 45 45 00 48 45 45 00 00 45 45 48 49 00 45 45 45 45 49 00 00 48 00 00 00 00 48 45 45 45 00 45 48 45 45 44 00
*/
