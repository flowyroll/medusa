.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x734f, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
movb $0x61, (%rdi)
nop
nop
add $24315, %rsi
lea addresses_normal_ht+0x18447, %rbx
nop
nop
and $6166, %rbp
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
cmp $60137, %r12
lea addresses_A_ht+0x348f, %rsi
lea addresses_D_ht+0x14a8f, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r12, %r12
mov $106, %rcx
rep movsb
and $10015, %r15
lea addresses_A_ht+0x710f, %r12
nop
nop
nop
nop
nop
and $23099, %rbx
mov $0x6162636465666768, %r8
movq %r8, %xmm5
movups %xmm5, (%r12)
nop
nop
nop
nop
cmp $44453, %rdi
lea addresses_WT_ht+0xd48f, %r12
nop
nop
sub %rdi, %rdi
mov (%r12), %rsi
sub %rbp, %rbp
lea addresses_UC_ht+0xf08f, %r12
nop
nop
nop
nop
nop
xor $32572, %r15
mov $0x6162636465666768, %rdi
movq %rdi, (%r12)
nop
nop
nop
cmp $37044, %rsi
lea addresses_UC_ht+0x19e8f, %rsi
lea addresses_D_ht+0x180cf, %rdi
nop
nop
sub $13644, %r8
mov $25, %rcx
rep movsw
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0xf6cf, %r8
and $62689, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r8)
nop
nop
nop
nop
nop
sub $7269, %rbx
lea addresses_D_ht+0xdc8f, %rsi
lea addresses_D_ht+0x48f, %rdi
inc %rbx
mov $95, %rcx
rep movsl
xor %rsi, %rsi
lea addresses_WT_ht+0x9e03, %rcx
nop
add $37529, %r12
movl $0x61626364, (%rcx)
nop
nop
cmp $22242, %rbp
lea addresses_WT_ht+0x1408f, %rsi
lea addresses_A_ht+0x14d4f, %rdi
nop
cmp %r8, %r8
mov $43, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_WT_ht+0x4224, %rbp
sub $65299, %rbx
movb (%rbp), %r15b
sub %rbp, %rbp
lea addresses_WT_ht+0x1294f, %r12
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %r15
movq %r15, %xmm0
vmovups %ymm0, (%r12)
nop
nop
nop
nop
dec %rbx
lea addresses_WT_ht+0x1e50f, %rbp
nop
nop
nop
cmp %rbx, %rbx
vmovups (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
nop
nop
cmp $20586, %r12
lea addresses_WT_ht+0xdc8f, %rdi
nop
nop
nop
and $28150, %rbp
movl $0x61626364, (%rdi)
nop
nop
xor %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WT+0xbbff, %rsi
lea addresses_normal+0x1668f, %rdi
nop
cmp $13490, %rdx
mov $113, %rcx
rep movsq
nop
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_WC+0x107b7, %r8
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm1
movups %xmm1, (%r8)
nop
nop
nop
nop
nop
cmp %r15, %r15

// REPMOV
lea addresses_RW+0x1a8f, %rsi
lea addresses_WT+0x1105f, %rdi
nop
nop
nop
nop
cmp %rbp, %rbp
mov $15, %rcx
rep movsb

// Exception!!!
nop
nop
mov (0), %rbp
nop
dec %r8

// Store
mov $0x41744c000000088f, %rcx
nop
nop
nop
nop
sub %rsi, %rsi
movl $0x51525354, (%rcx)
xor %rdx, %rdx

// Load
lea addresses_A+0x1f48f, %rbp
sub %r10, %r10
vmovups (%rbp), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdi
nop
and %r15, %r15

// Store
lea addresses_WT+0x1dd47, %r8
nop
dec %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movaps %xmm2, (%r8)
nop
sub $58083, %rsi

// Faulty Load
lea addresses_A+0x1f48f, %rdx
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov (%rdx), %ebp
lea oracles, %r10
and $0xff, %rbp
shlq $12, %rbp
mov (%r10,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 2, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
