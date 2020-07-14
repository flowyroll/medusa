.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x154c3, %rsi
lea addresses_WT_ht+0x1272a, %rdi
nop
nop
nop
sub $44797, %r8
mov $10, %rcx
rep movsb
nop
nop
add $13309, %rcx
lea addresses_D_ht+0xaec3, %rsi
lea addresses_D_ht+0x1aa13, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $52526, %rdx
mov $100, %rcx
rep movsw
nop
nop
add $54264, %rdx
lea addresses_D_ht+0x1d38b, %rsi
lea addresses_normal_ht+0x12cc3, %rdi
nop
nop
nop
and $6695, %r11
mov $69, %rcx
rep movsl
nop
nop
nop
xor $10467, %r11
lea addresses_WT_ht+0x9263, %rsi
lea addresses_WC_ht+0x97a7, %rdi
nop
nop
nop
nop
add %rdx, %rdx
mov $19, %rcx
rep movsb
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0xba2f, %rsi
lea addresses_normal_ht+0x12ec3, %rdi
nop
nop
nop
nop
and $31724, %r13
mov $17, %rcx
rep movsb
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_A_ht+0x14e75, %rsi
lea addresses_UC_ht+0x153c3, %rdi
sub $9909, %r13
mov $73, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x1be73, %rcx
nop
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %r8
movq %r8, %xmm2
vmovups %ymm2, (%rcx)
nop
cmp $57709, %r13
lea addresses_UC_ht+0x8ec3, %rsi
nop
nop
nop
add %r13, %r13
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
add $17849, %rdi
lea addresses_D_ht+0x191c3, %r8
nop
nop
dec %r13
mov (%r8), %r11
nop
sub $42249, %r8
lea addresses_normal_ht+0x8e93, %rdi
nop
dec %rdx
and $0xffffffffffffffc0, %rdi
movntdqa (%rdi), %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0x4ec3, %rdi
nop
nop
nop
inc %rdx
mov (%rdi), %cx
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x1e23b, %rdx
sub %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, (%rdx)
cmp $63937, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x146c3, %rbp
nop
nop
nop
and $41375, %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm1
movups %xmm1, (%rbp)
nop
nop
nop
nop
nop
xor %r8, %r8

// REPMOV
lea addresses_WT+0x146c3, %rsi
lea addresses_UC+0x57f7, %rdi
nop
nop
sub $6169, %rbp
mov $51, %rcx
rep movsw
nop
and %r13, %r13

// REPMOV
lea addresses_WC+0x85d6, %rsi
lea addresses_normal+0x13aa3, %rdi
nop
and $52069, %rax
mov $56, %rcx
rep movsq
nop
nop
nop
cmp %r8, %r8

// REPMOV
lea addresses_UC+0x116c3, %rsi
lea addresses_WC+0x123c3, %rdi
nop
nop
nop
nop
and $14068, %rbp
mov $73, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $27930, %r14

// Store
lea addresses_US+0x1ed83, %r13
cmp $60508, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovaps %ymm3, (%r13)
nop
nop
nop
nop
inc %rax

// Store
lea addresses_normal+0x14ec3, %rdi
xor %rbp, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm0
movups %xmm0, (%rdi)
sub $17239, %rcx

// Faulty Load
lea addresses_WT+0x146c3, %rsi
nop
nop
nop
xor %r13, %r13
mov (%rsi), %rax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_UC', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
