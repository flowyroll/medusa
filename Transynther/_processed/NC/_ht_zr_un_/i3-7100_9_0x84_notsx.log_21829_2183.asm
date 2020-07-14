.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x16666, %rsi
lea addresses_UC_ht+0x1e1ae, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add %r12, %r12
mov $120, %rcx
rep movsl
nop
nop
nop
and $49432, %rax
lea addresses_D_ht+0xeae6, %rsi
lea addresses_UC_ht+0xffa6, %rdi
nop
xor %r9, %r9
mov $10, %rcx
rep movsl
nop
nop
nop
nop
xor $9957, %rdi
lea addresses_WC_ht+0x19fe6, %rsi
nop
nop
nop
nop
nop
lfence
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r12
nop
nop
inc %rsi
lea addresses_WC_ht+0x6be6, %rdi
nop
nop
nop
nop
nop
xor %rcx, %rcx
movw $0x6162, (%rdi)
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x1e026, %rsi
lea addresses_A_ht+0x11a6, %rdi
nop
nop
nop
nop
nop
dec %rdx
mov $124, %rcx
rep movsl
nop
xor $55691, %r13
lea addresses_WC_ht+0x16f26, %rsi
lea addresses_UC_ht+0xaf26, %rdi
nop
and %rax, %rax
mov $41, %rcx
rep movsw
nop
nop
nop
inc %r12
lea addresses_D_ht+0x59b3, %rax
nop
nop
nop
nop
nop
and $64544, %r9
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rax)
add $57739, %rdi
lea addresses_WC_ht+0xddbe, %r13
nop
nop
nop
cmp $2633, %rsi
vmovups (%r13), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdi
nop
and %r12, %r12
lea addresses_normal_ht+0x14f26, %rdx
nop
nop
nop
nop
nop
cmp $57545, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rdx)
nop
and %rdx, %rdx
lea addresses_normal_ht+0x7d06, %r13
clflush (%r13)
nop
nop
dec %rdi
movups (%r13), %xmm4
vpextrq $1, %xmm4, %r12
nop
nop
nop
cmp $12358, %rsi
lea addresses_UC_ht+0xf426, %rsi
lea addresses_WC_ht+0x1cf26, %rdi
clflush (%rdi)
nop
nop
nop
xor %rax, %rax
mov $35, %rcx
rep movsb
nop
cmp %r12, %r12
lea addresses_normal_ht+0x1625e, %rax
nop
cmp $49386, %rdi
movb (%rax), %r13b
nop
nop
nop
nop
nop
xor $56257, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rdi
push %rsi

// Store
lea addresses_A+0x4326, %r15
nop
nop
nop
nop
sub $14669, %r10
movl $0x51525354, (%r15)
nop
nop
nop
nop
lfence

// Load
lea addresses_WC+0x8426, %rdi
nop
nop
and $59663, %rsi
mov (%rdi), %r13

// Exception!!!
nop
nop
nop
mov (0), %r8
nop
nop
nop
nop
nop
xor $6337, %r13

// Store
lea addresses_US+0x4916, %r12
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %r15
movq %r15, (%r12)
dec %r12

// Faulty Load
mov $0x2d52b10000000726, %rsi
nop
nop
nop
nop
and %r8, %r8
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %r15
lea oracles, %r10
and $0xff, %r15
shlq $12, %r15
mov (%r10,%r15,1), %r15
pop %rsi
pop %rdi
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'48': 1813, '44': 8406, '46': 760, '00': 10848, 'ff': 1, '8d': 1}
00 44 00 44 44 44 00 44 44 48 00 46 00 48 00 44 44 00 00 00 00 00 44 44 48 44 44 00 00 44 44 48 00 44 44 48 00 44 44 00 00 44 00 48 00 44 00 00 00 44 44 00 44 44 00 44 44 00 00 00 44 00 44 00 48 00 00 00 00 44 00 00 00 00 00 44 48 00 44 00 44 46 44 48 00 44 44 00 00 44 44 48 00 44 44 00 00 44 44 00 00 44 44 48 00 44 48 00 46 48 00 44 00 00 48 48 00 44 00 44 46 44 00 00 44 44 00 00 44 00 00 46 44 00 00 44 44 48 00 44 00 00 44 44 48 00 46 44 00 00 44 44 00 48 44 44 00 00 44 00 00 00 44 44 00 00 44 44 48 00 00 00 00 44 00 44 44 44 00 44 46 44 00 00 44 44 00 00 44 44 00 44 44 44 48 00 44 44 00 00 00 00 00 44 00 44 44 00 00 00 44 44 00 00 48 44 00 44 48 44 00 00 00 44 00 48 00 44 00 00 44 44 48 00 44 44 00 00 44 44 00 00 44 00 00 00 00 00 44 00 00 44 00 00 44 44 48 00 44 00 00 00 44 44 00 00 44 00 48 00 44 44 46 48 44 44 44 48 00 46 48 00 44 48 00 44 44 00 00 44 00 44 44 48 00 44 00 00 44 00 48 00 44 00 00 44 44 00 00 44 00 00 00 44 00 44 00 44 44 44 48 00 46 44 00 00 00 00 44 00 00 00 00 00 44 44 00 44 00 00 44 00 00 46 44 00 00 44 00 00 44 00 00 00 44 00 00 46 44 00 44 44 00 00 44 48 00 00 48 00 00 44 00 00 46 00 00 44 44 48 00 44 44 00 00 44 48 00 44 44 00 00 44 00 44 48 48 00 44 44 00 00 44 00 00 00 44 44 00 00 44 48 00 00 44 00 00 46 44 00 00 44 44 00 00 00 00 00 00 00 44 44 00 00 44 00 44 00 48 00 00 00 00 44 00 44 46 44 00 00 44 00 00 00 44 00 00 44 00 00 00 44 00 00 48 48 00 00 44 48 44 00 44 00 00 46 44 00 44 00 00 00 44 00 00 00 44 00 00 44 44 00 00 44 44 00 00 44 00 00 00 44 44 48 00 00 46 44 00 44 00 00 00 00 00 00 48 44 48 00 00 44 00 00 44 00 44 44 00 00 00 00 44 44 44 00 44 48 00 00 44 00 00 44 44 00 44 46 48 48 44 46 00 00 44 00 46 00 48 00 44 44 00 00 44 00 44 44 48 00 46 44 00 00 44 44 00 00 44 44 00 00 44 48 48 00 44 44 00 00 00 00 00 00 44 00 44 00 00 46 44 00 00 44 44 48 00 44 00 00 44 44 48 00 44 44 00 00 44 44 48 00 44 44 00 00 48 00 00 44 44 00 00 44 00 00 00 00 00 44 00 46 44 00 00 44 44 00 00 44 00 00 44 44 00 00 44 44 00 44 44 00 00 44 44 48 00 44 44 48 00 44 44 00 00 44 00 00 00 44 48 00 00 44 00 00 00 44 00 44 46 44 00 44 00 00 00 44 48 00 44 44 48 44 44 44 00 00 44 44 00 00 44 44 48 00 00 44 00 44 00 44 44 44 48 00 44 00 44 00 00 46 44 00 00 44 44 48 00 00 00 00 44 44 00 00 44 44 00 00 44 48 44 00 44 00 44 44 00 00 44 00 00 44 00 00 44 44 00 00 44 44 00 00 00 00 44 00 46 44 00 00 44 44 00 00 44 44 48 00 44 44 00 00 44 44 48 00 44 44 00 00 44 00 00 44 44 00 00 44 44 48 44 00 44 00 00 44 44 48 00 44 44 00 00 44 48 48 00 44 00 00 46 44 00 00 44 44 48 00 46 44 00 00 44 44 00 00 44 00 00 44 44 00 44 00 00 00 44 48 00 00 44 44 00 00 00 00 00 00 44 44 44 00 00 44 44 00 00 44 00 00 44 00 00 44 44 00 00 46 00 00 44 44 00 00 48 00 46 00 00 00 44 00 00 44 00 44 00 00 46 44 00 44 00 44 44 00 00 00 48 00 44 44 00 00 44 44 00 48 44 00 44 48 00 46 44 00 00 44 44 00 44 48 00 44 44 00 00 46 44 48 00 44 44 00 00 00 00 00 44 44 00 00 44 00 00 44 44 00 00 44 44 48 00 44 44 00 00 44 44 00 00 44 00 44 44 00 44 00 48 44 46 00 44 00 00 44 44 00
*/
