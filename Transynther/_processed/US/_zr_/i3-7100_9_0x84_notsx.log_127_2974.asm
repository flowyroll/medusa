.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x18a59, %rsi
lea addresses_UC_ht+0x6219, %rdi
nop
nop
nop
nop
xor %rdx, %rdx
mov $85, %rcx
rep movsl
nop
nop
nop
nop
cmp $18531, %r12
lea addresses_A_ht+0x12ce9, %rdi
nop
nop
cmp %r10, %r10
mov (%rdi), %ecx
nop
nop
nop
nop
and $34178, %rdx
lea addresses_UC_ht+0x13599, %r10
nop
nop
nop
nop
nop
add %r15, %r15
and $0xffffffffffffffc0, %r10
movntdqa (%r10), %xmm7
vpextrq $1, %xmm7, %rsi
nop
cmp $3586, %r12
lea addresses_WC_ht+0x437d, %r10
nop
nop
nop
nop
sub $21497, %rdi
movb $0x61, (%r10)
add $30349, %r12
lea addresses_WT_ht+0xfbc7, %rsi
nop
add %r15, %r15
movups (%rsi), %xmm1
vpextrq $1, %xmm1, %r10
nop
nop
cmp $5542, %r12
lea addresses_WC_ht+0x5614, %rsi
sub %r15, %r15
mov (%rsi), %r10
sub %rdi, %rdi
lea addresses_normal_ht+0x3419, %rcx
nop
xor $12366, %rdi
movups (%rcx), %xmm7
vpextrq $0, %xmm7, %r15
nop
nop
nop
xor %r12, %r12
lea addresses_WT_ht+0x13139, %rsi
add $2238, %rdi
movb $0x61, (%rsi)
nop
nop
nop
cmp $62935, %r12
lea addresses_normal_ht+0x10ec5, %rsi
lea addresses_UC_ht+0x1ab19, %rdi
nop
nop
nop
dec %r10
mov $33, %rcx
rep movsl
nop
nop
nop
nop
nop
add $40191, %rdi
lea addresses_WT_ht+0x1392d, %rsi
nop
and %rdx, %rdx
movb (%rsi), %r15b
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x136b0, %rdi
nop
nop
dec %r10
movups (%rdi), %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
nop
nop
nop
cmp $25436, %r10
lea addresses_WT_ht+0x16249, %rsi
lea addresses_WT_ht+0x14ab1, %rdi
nop
nop
nop
and %rdx, %rdx
mov $89, %rcx
rep movsl
nop
nop
nop
and $64490, %r12
lea addresses_D_ht+0xb919, %rcx
nop
nop
add $26579, %r12
movl $0x61626364, (%rcx)
nop
inc %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rdx

// Store
lea addresses_normal+0x12fbf, %rdx
nop
add %rcx, %rcx
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
add %r15, %r15

// Load
lea addresses_RW+0x1764f, %r15
nop
nop
nop
nop
nop
xor $7537, %rdx
mov (%r15), %rcx
nop
nop
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_WC+0x1a41, %r13
nop
nop
nop
dec %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r13)
nop
nop
nop
sub $25533, %rdx

// Faulty Load
lea addresses_US+0x10c19, %r13
nop
and %r11, %r11
mov (%r13), %r15w
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rdx
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 127}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
