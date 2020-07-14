.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x7c6, %rdx
nop
nop
cmp %r13, %r13
vmovups (%rdx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r8
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x14ac6, %rsi
lea addresses_WC_ht+0x18bee, %rdi
nop
and $40640, %rax
mov $108, %rcx
rep movsl
sub $53218, %r13
lea addresses_normal_ht+0x1dc36, %rsi
clflush (%rsi)
nop
nop
nop
nop
xor %rdx, %rdx
movl $0x61626364, (%rsi)
nop
inc %rax
lea addresses_D_ht+0x14466, %rsi
lea addresses_UC_ht+0x16f86, %rdi
clflush (%rdi)
nop
nop
cmp $28813, %r12
mov $106, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x13b17, %rsi
lea addresses_A_ht+0x148bc, %rdi
clflush (%rdi)
nop
nop
cmp %r8, %r8
mov $19, %rcx
rep movsl
nop
nop
and $22310, %rax
lea addresses_A_ht+0x8f42, %rsi
lea addresses_WC_ht+0x1dc56, %rdi
nop
nop
xor %r13, %r13
mov $5, %rcx
rep movsq
nop
nop
nop
nop
and %r8, %r8
lea addresses_D_ht+0x846, %rax
nop
nop
add $38829, %rdx
mov (%rax), %r8d
cmp $63775, %rdi
lea addresses_WC_ht+0x1a46, %rdi
nop
nop
nop
cmp $57176, %r12
movb (%rdi), %cl
nop
nop
nop
sub $7410, %rax
lea addresses_D_ht+0x76c6, %rsi
lea addresses_normal_ht+0x110f6, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %rdx, %rdx
mov $3, %rcx
rep movsl
nop
cmp %r12, %r12
lea addresses_WT_ht+0x18246, %rsi
lea addresses_D_ht+0x5d05, %rdi
nop
nop
nop
nop
nop
cmp $43423, %r8
mov $58, %rcx
rep movsl
nop
nop
cmp $39970, %r13
lea addresses_normal_ht+0x1103f, %rdi
nop
nop
nop
nop
cmp $10797, %rsi
mov (%rdi), %cx
nop
nop
sub %r8, %r8
lea addresses_normal_ht+0x19946, %rsi
lea addresses_normal_ht+0xc946, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %r8, %r8
mov $70, %rcx
rep movsb
nop
nop
nop
add $16538, %r8
lea addresses_WT_ht+0x3c6f, %rsi
lea addresses_UC_ht+0x16886, %rdi
nop
cmp %r13, %r13
mov $47, %rcx
rep movsl
nop
cmp %rsi, %rsi
lea addresses_D_ht+0xf346, %r12
clflush (%r12)
nop
nop
sub $421, %rdx
movw $0x6162, (%r12)
nop
nop
nop
inc %r13
lea addresses_D_ht+0x654e, %rsi
lea addresses_UC_ht+0x11096, %rdi
nop
nop
nop
dec %r8
mov $87, %rcx
rep movsw
sub %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0x7946, %rsi
lea addresses_WT+0x168c6, %rdi
nop
nop
add $39556, %rbx
mov $120, %rcx
rep movsl
nop
nop
nop
nop
xor $16654, %rsi

// Store
lea addresses_WC+0x13146, %r12
nop
nop
nop
nop
cmp $64583, %rbx
movw $0x5152, (%r12)
nop
add $8350, %rbx

// Store
lea addresses_A+0x1ecc, %r12
sub $47437, %rbx
movb $0x51, (%r12)
nop
nop
nop
nop
nop
sub $30208, %r12

// Store
lea addresses_WT+0xf6e6, %r12
nop
nop
nop
sub $17194, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm1
movups %xmm1, (%r12)
nop
nop
sub $16961, %rsi

// Store
lea addresses_RW+0x1e3de, %r12
nop
nop
nop
nop
add $14638, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%r12)
nop
nop
nop
nop
dec %rsi

// Faulty Load
lea addresses_normal+0x1f946, %rdi
nop
and $12171, %rcx
vmovntdqa (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC', 'same': True, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'00': 39, '49': 222, '46': 10118, '45': 2426, '44': 3241, '34': 5783}
45 44 46 34 46 45 34 44 45 34 44 45 34 46 34 46 46 34 46 46 34 46 45 34 46 44 34 46 45 46 46 34 46 45 46 34 44 44 34 44 46 34 46 45 46 34 46 46 46 34 44 46 46 44 45 34 46 46 44 46 34 44 46 46 46 46 34 46 46 46 46 46 34 46 34 44 44 46 46 49 45 46 34 49 46 46 34 46 45 34 34 44 34 46 45 34 46 45 46 46 46 46 46 46 34 44 46 46 49 46 45 34 46 45 46 34 44 45 46 34 46 46 46 34 44 46 34 46 34 45 46 34 44 45 46 46 45 34 46 34 34 45 46 34 46 46 34 44 34 46 46 34 46 46 46 46 46 34 46 45 34 46 46 34 44 45 34 45 46 34 44 45 34 44 45 34 46 46 46 34 46 45 46 46 34 46 45 46 34 46 46 34 44 45 46 34 34 44 46 34 46 44 46 34 49 44 46 34 46 45 46 46 46 46 34 44 45 46 44 46 34 44 46 46 46 46 34 44 45 34 44 46 34 46 46 34 44 45 34 44 46 46 46 34 46 46 34 44 34 46 46 34 44 46 34 46 34 46 45 34 46 46 34 46 45 46 34 46 46 34 44 46 34 44 46 46 34 44 34 46 45 34 46 44 34 46 46 34 46 45 34 46 45 46 34 46 44 46 34 44 46 46 46 46 46 46 46 34 46 45 46 34 44 46 34 46 44 34 46 46 46 46 34 44 34 46 45 46 34 46 45 34 44 44 46 46 44 46 49 44 46 46 44 46 34 44 46 46 34 46 45 34 46 45 46 34 44 44 46 49 46 34 46 46 34 46 46 34 46 46 46 46 46 46 34 49 46 46 46 45 46 46 34 45 46 34 46 34 46 46 46 44 46 46 44 45 46 46 46 44 45 34 44 45 34 46 00 34 46 46 46 46 34 46 46 34 44 46 34 46 45 46 44 45 46 34 44 44 46 34 46 44 34 46 46 34 46 45 46 34 34 46 44 45 46 34 46 46 46 44 46 34 46 45 34 44 45 34 49 46 46 46 44 46 34 46 45 34 46 45 46 34 46 44 34 44 46 46 46 34 46 46 34 44 44 46 46 46 46 34 34 46 46 46 46 45 34 46 46 49 44 46 34 44 34 46 45 34 34 44 46 46 46 46 46 46 46 34 44 45 34 44 46 46 49 46 46 34 46 46 44 46 46 46 34 46 45 46 34 46 46 34 34 46 45 34 46 46 34 44 45 34 44 46 46 34 46 46 34 46 46 34 44 46 34 46 46 34 46 45 46 46 34 46 46 34 34 46 45 46 46 46 46 45 34 46 45 46 34 46 46 34 46 44 46 44 46 34 44 46 34 46 46 46 34 46 45 46 49 46 34 46 46 34 46 44 34 46 46 46 34 44 46 34 46 45 34 44 46 34 44 45 34 46 45 46 34 44 46 34 46 46 34 44 45 46 46 49 44 46 34 34 44 46 34 34 46 46 34 46 45 46 34 44 45 34 46 46 46 46 46 34 49 46 46 34 46 46 34 44 46 34 46 46 46 34 44 45 34 44 46 34 46 34 46 45 46 46 44 45 34 44 46 34 46 34 44 46 46 34 44 46 34 46 46 34 46 45 46 34 46 45 46 34 46 46 34 44 46 34 44 45 46 34 44 46 34 44 45 46 34 46 46 34 46 46 46 34 46 46 34 34 44 46 34 44 46 34 44 46 46 45 34 46 46 34 46 45 34 46 45 46 34 49 46 46 34 44 46 46 34 44 46 46 46 46 49 46 46 46 34 44 45 46 34 46 46 46 34 44 46 46 34 44 46 34 44 46 34 44 45 34 44 45 34 46 44 46 34 46 45 46 34 44 46 34 44 44 34 44 34 44 44 34 44 34 46 45 46 34 44 34 46 45 46 34 44 34 46 45 46 34 44 46 34 46 45 34 44 34 46 46 46 46 34 44 45 34 44 45 46 34 44 46 34 46 46 34 44 45 46 46 46 34 46 46 46 44 46 34 44 45 46 34 44 46 49 46 45 46 46 44 46 34 44 45 45 46 34 44 46 34 46 46 34 34 46 46 46 34 46 44 34 49 46 46 34 44 34 46 46 34 44 46 34 46 46 34 46 34 46 44 34 44 34 44 46 34 46 46 44 46 46 34 46 45 46 34 44 45 34 44 45 34 44 46 34 46 46 34 46 45 46 34 46 46 46 34 46 45 46 46 46 34 46 46 34 34 46 46 34 44 46 44 46 34 44 46 49 44
*/
