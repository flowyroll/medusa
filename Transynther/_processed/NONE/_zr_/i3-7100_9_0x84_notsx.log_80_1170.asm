.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x12cc5, %rsi
lea addresses_WC_ht+0x8b38, %rdi
nop
nop
dec %rdx
mov $30, %rcx
rep movsb
inc %rbp
lea addresses_WC_ht+0x17d0d, %rcx
nop
nop
nop
nop
nop
sub $29552, %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
cmp $16838, %r8
lea addresses_WT_ht+0x117a5, %rsi
lea addresses_A_ht+0x13b7b, %rdi
nop
nop
nop
sub $141, %r12
mov $51, %rcx
rep movsw
nop
nop
inc %r12
lea addresses_D_ht+0x4645, %rcx
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
nop
sub %r8, %r8
lea addresses_WC_ht+0x1bd45, %rdx
dec %rdi
vmovups (%rdx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
xor $57064, %rdx
lea addresses_normal_ht+0xaec5, %rsi
lea addresses_D_ht+0x18e45, %rdi
dec %r15
mov $78, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_D_ht+0xbe6d, %rcx
nop
and %r15, %r15
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0xc975, %rsi
lea addresses_A_ht+0x1ac45, %rdi
nop
nop
nop
nop
nop
xor $42559, %r15
mov $71, %rcx
rep movsw
nop
cmp $3669, %r12
lea addresses_D_ht+0x6d45, %r12
nop
nop
nop
and %rdi, %rdi
movups (%r12), %xmm7
vpextrq $0, %xmm7, %r8
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x19483, %r15
add %rcx, %rcx
vmovups (%r15), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdx
dec %r12
lea addresses_WT_ht+0x2945, %rbp
nop
and $46351, %r15
movl $0x61626364, (%rbp)
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x18e79, %r8
add $44117, %r15
movb $0x61, (%r8)
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_D_ht+0x4f15, %rbp
and %r12, %r12
movb (%rbp), %r15b
nop
nop
and $583, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x12045, %rbp
and %r10, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movaps %xmm2, (%rbp)
nop
nop
nop
xor $60034, %r10

// Load
lea addresses_A+0x12fc5, %rdi
nop
nop
nop
nop
nop
dec %rax
mov (%rdi), %ebx
nop
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_D+0xf4a5, %rbx
xor $10683, %rdi
movl $0x51525354, (%rbx)
nop
nop
nop
nop
xor $11575, %rbp

// Store
lea addresses_UC+0x5f45, %rcx
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %r10
movq %r10, (%rcx)
cmp $26278, %rbp

// Faulty Load
lea addresses_A+0x16545, %rax
nop
nop
xor $53728, %rsi
movb (%rax), %bl
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 80}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
