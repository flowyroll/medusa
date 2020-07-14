.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1ca52, %rsi
lea addresses_A_ht+0xdbcf, %rdi
inc %rbx
mov $126, %rcx
rep movsq
nop
cmp $51503, %r13
lea addresses_A_ht+0xb5df, %rsi
nop
nop
and $55950, %rbx
movl $0x61626364, (%rsi)
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x1977f, %r13
nop
nop
nop
add %r8, %r8
movw $0x6162, (%r13)
nop
nop
nop
nop
add $25202, %r13
lea addresses_UC_ht+0xf6bf, %rdi
nop
nop
nop
dec %r14
movw $0x6162, (%rdi)
nop
inc %rbx
lea addresses_normal_ht+0x91df, %r13
dec %rcx
and $0xffffffffffffffc0, %r13
vmovntdqa (%r13), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbx
nop
nop
nop
nop
nop
mfence
lea addresses_A_ht+0x18f63, %r14
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x16fdf, %r14
nop
nop
nop
nop
cmp $55788, %rdi
and $0xffffffffffffffc0, %r14
vmovaps (%r14), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbx
nop
nop
nop
inc %rbx
lea addresses_D_ht+0x1a1df, %rsi
lea addresses_normal_ht+0xa9df, %rdi
nop
nop
nop
sub %r10, %r10
mov $101, %rcx
rep movsb
nop
nop
nop
nop
sub $23741, %rsi
lea addresses_UC_ht+0xdd99, %rdi
nop
nop
nop
nop
nop
sub $46358, %r8
movl $0x61626364, (%rdi)
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x192a9, %rbx
nop
nop
xor $51007, %r8
movl $0x61626364, (%rbx)
nop
inc %r13
lea addresses_UC_ht+0x1e83b, %rsi
lea addresses_A_ht+0x161df, %rdi
and $41580, %r10
mov $48, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $40134, %rbx
lea addresses_D_ht+0xcb86, %r8
clflush (%r8)
nop
nop
nop
nop
xor %rdi, %rdi
movb (%r8), %r14b
nop
nop
nop
nop
nop
add $7525, %r8
lea addresses_WT_ht+0xf7df, %rsi
lea addresses_A_ht+0x1dddf, %rdi
nop
nop
nop
nop
and $51265, %r8
mov $1, %rcx
rep movsl
nop
dec %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rsi

// Load
mov $0x9bc9700000005b7, %r10
nop
cmp %rsi, %rsi
vmovups (%r10), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbx
nop
sub %r13, %r13

// Store
mov $0xdaf, %rcx
nop
sub %rbx, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, (%rcx)
nop
add $9262, %rdi

// Faulty Load
lea addresses_WT+0x1cddf, %rdi
and %r12, %r12
vmovups (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'39': 104}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
