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
lea addresses_UC_ht+0x1687d, %rbx
nop
nop
nop
add %rsi, %rsi
mov (%rbx), %r10w
and $18673, %rdi
lea addresses_A_ht+0x1b4fd, %r13
and $7671, %r14
mov (%r13), %r8w
nop
inc %r10
lea addresses_A_ht+0x7391, %rdi
nop
nop
nop
nop
nop
and %rsi, %rsi
mov (%rdi), %r14
nop
cmp %r13, %r13
lea addresses_WC_ht+0x1e9fd, %rsi
lea addresses_normal_ht+0xd73d, %rdi
nop
nop
nop
nop
add $63121, %r13
mov $48, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x1ed1b, %rsi
lea addresses_normal_ht+0x1b0bd, %rdi
nop
nop
nop
nop
xor %r8, %r8
mov $91, %rcx
rep movsl
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0x2fd, %rsi
lea addresses_A_ht+0x7a7d, %rdi
clflush (%rdi)
nop
sub $28024, %r8
mov $75, %rcx
rep movsb
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0xac7d, %rbx
nop
nop
nop
cmp %rcx, %rcx
and $0xffffffffffffffc0, %rbx
vmovaps (%rbx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r10
nop
nop
nop
and $1458, %rsi
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
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0xcbdd, %rcx
nop
nop
nop
nop
xor $3915, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%rcx)
nop
sub $21193, %rcx

// REPMOV
lea addresses_WC+0x1e9fd, %rsi
lea addresses_WC+0x1c605, %rdi
nop
nop
nop
nop
nop
sub $19778, %rdx
mov $102, %rcx
rep movsb
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_normal+0x667d, %rcx
nop
add %rbx, %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm6
movups %xmm6, (%rcx)
nop
nop
xor $61400, %r12

// REPMOV
lea addresses_normal+0x667d, %rsi
lea addresses_D+0x1d75d, %rdi
clflush (%rsi)
nop
nop
nop
nop
and %r14, %r14
mov $13, %rcx
rep movsq
cmp $46665, %rbp

// Load
lea addresses_D+0x80d, %rdx
clflush (%rdx)
nop
nop
nop
inc %r14
mov (%rdx), %bp
nop
nop
nop
sub $23915, %rcx

// Store
lea addresses_WC+0xf785, %rsi
nop
sub %r12, %r12
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_UC+0x1d47d, %rbx
sub %rcx, %rcx
movw $0x5152, (%rbx)
add %rdi, %rdi

// Store
lea addresses_RW+0x1b4fd, %rbp
clflush (%rbp)
nop
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%rbp)
nop
nop
xor $26892, %rbp

// Store
lea addresses_A+0x4abd, %r12
nop
nop
nop
inc %r14
movw $0x5152, (%r12)
nop
sub $52366, %rdx

// Load
lea addresses_WC+0x1365d, %rbp
nop
nop
nop
nop
nop
xor %rcx, %rcx
vmovups (%rbp), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
nop
sub $32602, %r14

// Load
lea addresses_normal+0x667d, %rcx
nop
nop
inc %rbx
mov (%rcx), %r14
nop
nop
nop
sub %r12, %r12

// Faulty Load
lea addresses_normal+0x667d, %r14
nop
nop
nop
nop
sub %rcx, %rcx
movb (%r14), %dl
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'58': 767}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
