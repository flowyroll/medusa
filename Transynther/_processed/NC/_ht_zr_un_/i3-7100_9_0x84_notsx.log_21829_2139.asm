.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xd939, %r10
nop
nop
nop
nop
dec %r8
movb $0x61, (%r10)
nop
sub $9196, %r15
lea addresses_normal_ht+0x11b39, %rsi
lea addresses_normal_ht+0x148d9, %rdi
nop
cmp %rdx, %rdx
mov $55, %rcx
rep movsl
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0xf806, %r15
nop
nop
nop
add $22359, %rcx
movups (%r15), %xmm6
vpextrq $1, %xmm6, %rdi
nop
dec %rsi
lea addresses_UC_ht+0x175b9, %rcx
clflush (%rcx)
nop
nop
inc %r10
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
sub $34854, %r8
lea addresses_D_ht+0x1c2f, %rsi
lea addresses_A_ht+0x4739, %rdi
nop
nop
nop
cmp $56915, %r8
mov $29, %rcx
rep movsb
nop
nop
nop
sub %r15, %r15
lea addresses_UC_ht+0xce69, %rdx
and %r15, %r15
mov $0x6162636465666768, %r10
movq %r10, (%rdx)
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x1d939, %rsi
lea addresses_D_ht+0x7339, %rdi
clflush (%rdi)
nop
sub $36221, %r9
mov $56, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x13f9, %rsi
lea addresses_UC_ht+0xf839, %rdi
nop
cmp %r15, %r15
mov $51, %rcx
rep movsl
nop
nop
dec %rsi
lea addresses_A_ht+0x12339, %rdx
nop
nop
nop
nop
nop
add $60125, %rsi
mov (%rdx), %r8
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x164f9, %r15
cmp %rdi, %rdi
movw $0x6162, (%r15)
nop
nop
and %rdx, %rdx
lea addresses_WT_ht+0x2739, %r9
nop
nop
inc %rsi
movl $0x61626364, (%r9)
nop
nop
nop
nop
xor %r9, %r9
lea addresses_normal_ht+0xab39, %r10
nop
nop
cmp %rdx, %rdx
movl $0x61626364, (%r10)
nop
nop
nop
nop
add %r15, %r15
lea addresses_WC_ht+0x7f4d, %rcx
nop
nop
nop
nop
add $63451, %rdx
mov (%rcx), %rsi
nop
nop
sub $35293, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rax
push %rdi

// Store
lea addresses_RW+0x145b9, %r8
nop
nop
nop
nop
nop
cmp $31257, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movntdq %xmm7, (%r8)
add %r13, %r13

// Store
lea addresses_WT+0x1c339, %r15
nop
nop
nop
nop
nop
xor %rdi, %rdi
movl $0x51525354, (%r15)
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
mov $0x443de10000000339, %r15
nop
nop
nop
nop
and $42940, %r13
vmovups (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'49': 2, '7d': 8, '44': 61, '46': 645, '00': 21066, 'ff': 7, 'ae': 1, '08': 39}
00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 44 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 7d 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
