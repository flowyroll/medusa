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
lea addresses_WT_ht+0x13ddd, %rdx
nop
nop
sub %rax, %rax
movups (%rdx), %xmm0
vpextrq $0, %xmm0, %r13
nop
nop
nop
dec %r12
lea addresses_WT_ht+0x19d01, %rsi
nop
nop
nop
nop
xor $42404, %rcx
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %r8
nop
nop
nop
nop
nop
cmp $60116, %rax
lea addresses_D_ht+0x221, %rsi
lea addresses_normal_ht+0x1b0ad, %rdi
add $28785, %rdx
mov $72, %rcx
rep movsl
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x5c79, %r8
and %rdi, %rdi
mov (%r8), %rcx
nop
and %r8, %r8
lea addresses_normal_ht+0x7601, %r8
nop
cmp %rdi, %rdi
mov (%r8), %rax
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_normal_ht+0x16df3, %rsi
clflush (%rsi)
nop
nop
and $13934, %r8
movw $0x6162, (%rsi)
nop
nop
nop
nop
and $50755, %rsi
lea addresses_normal_ht+0xde18, %rax
nop
nop
nop
and $15304, %rdx
movb (%rax), %cl
nop
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0xec61, %rsi
lea addresses_D_ht+0x4f11, %rdi
nop
nop
nop
add $36360, %rax
mov $47, %rcx
rep movsl
nop
inc %rsi
lea addresses_D_ht+0x4b59, %rdx
nop
nop
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %r8
movq %r8, %xmm4
movups %xmm4, (%rdx)
nop
nop
nop
nop
nop
cmp $34418, %r12
lea addresses_normal_ht+0x12101, %rsi
lea addresses_D_ht+0x4b41, %rdi
clflush (%rdi)
cmp $23554, %r8
mov $35, %rcx
rep movsq
sub $49647, %rsi
lea addresses_A_ht+0x15819, %rsi
lea addresses_WC_ht+0x5aa5, %rdi
cmp $30251, %rax
mov $96, %rcx
rep movsl
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_WT_ht+0x110c1, %rax
nop
add %rdi, %rdi
and $0xffffffffffffffc0, %rax
vmovaps (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x5241, %rdx
nop
nop
nop
nop
and %r13, %r13
movups (%rdx), %xmm5
vpextrq $1, %xmm5, %r8
nop
nop
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x1ad39, %rdx
nop
nop
nop
nop
nop
cmp $44706, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%rdx)
nop
nop
nop
nop
nop
xor $16888, %r12
lea addresses_WT_ht+0x2501, %r13
nop
add %r8, %r8
movw $0x6162, (%r13)
nop
nop
nop
xor $51754, %rsi
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
push %r10
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x1ed49, %rcx
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%rcx)
nop
sub %rdx, %rdx

// Load
lea addresses_WT+0x17201, %r10
nop
nop
dec %r8
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
nop
nop
sub $18707, %r13

// Store
lea addresses_WT+0x1b901, %rdi
nop
nop
nop
nop
nop
and $23673, %rsi
mov $0x5152535455565758, %r13
movq %r13, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
nop
cmp $63256, %rdi

// Store
lea addresses_WT+0xafe9, %rdx
nop
nop
nop
xor $18324, %rcx
movl $0x51525354, (%rdx)
nop
nop
nop
nop
cmp %r13, %r13

// Load
lea addresses_RW+0x18bc9, %rdx
clflush (%rdx)
nop
nop
nop
nop
xor $7128, %r8
mov (%rdx), %rdi
nop
nop
xor %r13, %r13

// Store
lea addresses_normal+0x7d01, %rsi
cmp %r13, %r13
movl $0x51525354, (%rsi)
nop
add %rcx, %rcx

// Faulty Load
lea addresses_WC+0x6501, %r13
nop
nop
sub %rcx, %rcx
mov (%r13), %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'38': 21829}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
