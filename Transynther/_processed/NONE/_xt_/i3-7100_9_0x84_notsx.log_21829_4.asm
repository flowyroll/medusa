.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x595d, %rsi
lea addresses_UC_ht+0x6b4d, %rdi
clflush (%rsi)
nop
nop
nop
xor $54692, %r10
mov $93, %rcx
rep movsl
and %rcx, %rcx
lea addresses_WT_ht+0x1bd4d, %rbp
nop
nop
nop
sub $18039, %rdx
mov (%rbp), %r13
xor $46366, %rdx
lea addresses_UC_ht+0xe94d, %rdx
clflush (%rdx)
nop
nop
nop
nop
add $52652, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm6
and $0xffffffffffffffc0, %rdx
vmovntdq %ymm6, (%rdx)
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_WC_ht+0x908d, %rdi
nop
nop
nop
nop
nop
xor $52210, %rbp
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
cmp $12713, %rcx
lea addresses_UC_ht+0x1cd, %rsi
lea addresses_A_ht+0xbc8d, %rdi
nop
nop
nop
nop
sub $14884, %rdx
mov $30, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_WC_ht+0xdd4d, %rsi
lea addresses_normal_ht+0x1634d, %rdi
clflush (%rsi)
nop
dec %rbp
mov $125, %rcx
rep movsw
nop
nop
nop
nop
dec %rsi
lea addresses_A_ht+0xb1dd, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
sub %rbp, %rbp
movb $0x61, (%rdx)
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0x4967, %rbp
nop
nop
sub $59691, %rdx
and $0xffffffffffffffc0, %rbp
vmovntdqa (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r13
cmp $8764, %r13
lea addresses_UC_ht+0xac4d, %rbp
nop
nop
nop
inc %rsi
mov (%rbp), %di
and $14157, %r13
lea addresses_D_ht+0x10509, %r13
clflush (%r13)
nop
nop
nop
nop
and %rdx, %rdx
vmovups (%r13), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
cmp $22448, %rdx
lea addresses_normal_ht+0x90cd, %rdx
nop
add %r13, %r13
mov (%rdx), %ecx
nop
nop
nop
nop
and $6224, %rdx
lea addresses_WT_ht+0x15a4d, %rsi
lea addresses_WC_ht+0x1874d, %rdi
nop
nop
nop
nop
and %r10, %r10
mov $51, %rcx
rep movsq
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x1bb4d, %rdi
nop
xor $29883, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
nop
nop
and $11471, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0xa54d, %r8
nop
nop
nop
add %r14, %r14
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_A+0x1ee4d, %rbp
nop
nop
xor $18715, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovups %ymm3, (%rbp)
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_UC+0xaecd, %r9
nop
nop
nop
nop
and $41007, %rdx
movl $0x51525354, (%r9)
nop
nop
nop
nop
add $34572, %r14

// Store
lea addresses_A+0x1498d, %r9
nop
nop
nop
nop
nop
mfence
movw $0x5152, (%r9)
nop
nop
and $57887, %r9

// Store
lea addresses_PSE+0x10d63, %rcx
nop
nop
nop
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %rbp
movq %rbp, (%rcx)
nop
nop
nop
nop
nop
xor $52022, %rcx

// REPMOV
lea addresses_D+0x90cd, %rsi
lea addresses_A+0x151fd, %rdi
nop
nop
nop
nop
and $6014, %r8
mov $84, %rcx
rep movsw
nop
nop
and %rbp, %rbp

// REPMOV
lea addresses_WT+0xf94d, %rsi
lea addresses_WC+0x1b5cd, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %rbp
mov $0, %rcx
rep movsb
nop
nop
add %rdi, %rdi

// Store
lea addresses_D+0x8d4d, %rcx
nop
nop
nop
xor $11058, %rsi
movw $0x5152, (%rcx)
nop
dec %r14

// Store
lea addresses_D+0x2641, %r9
nop
nop
xor $26310, %rcx
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
add $21087, %rdi

// Faulty Load
lea addresses_A+0xa54d, %rdi
add %r8, %r8
movups (%rdi), %xmm0
vpextrq $1, %xmm0, %r9
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
