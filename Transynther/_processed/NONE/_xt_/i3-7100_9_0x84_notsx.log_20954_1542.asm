.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xf8b3, %r12
sub %rdi, %rdi
movb $0x61, (%r12)
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0xbf90, %rdx
clflush (%rdx)
nop
nop
nop
xor $20022, %rbp
mov $0x6162636465666768, %r13
movq %r13, %xmm4
and $0xffffffffffffffc0, %rdx
movaps %xmm4, (%rdx)
nop
and $35093, %rcx
lea addresses_UC_ht+0x3e70, %rsi
lea addresses_WT_ht+0x114c0, %rdi
nop
nop
nop
inc %r12
mov $57, %rcx
rep movsq
nop
sub $442, %r11
lea addresses_D_ht+0x92a0, %rdx
nop
nop
nop
dec %rcx
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
and $3971, %rcx
lea addresses_UC_ht+0x1674, %rsi
lea addresses_WC_ht+0x12e10, %rdi
nop
xor $54449, %rdx
mov $108, %rcx
rep movsw
nop
add %r13, %r13
lea addresses_UC_ht+0x55d0, %rsi
lea addresses_WC_ht+0xf6e8, %rdi
mfence
mov $48, %rcx
rep movsl
nop
sub %rdx, %rdx
lea addresses_WT_ht+0x3248, %rdx
nop
nop
nop
nop
and %r11, %r11
vmovups (%rdx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
lfence
lea addresses_normal_ht+0x16c10, %rsi
lea addresses_A_ht+0x1410, %rdi
nop
add %r13, %r13
mov $103, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_A_ht+0xb730, %r11
nop
xor $25881, %rdi
vmovups (%r11), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
cmp %rdx, %rdx
lea addresses_A_ht+0x154b6, %rsi
lea addresses_WC_ht+0xf155, %rdi
sub $51122, %r12
mov $38, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x11a10, %r11
nop
nop
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r11)
nop
nop
xor %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rax
push %rbp
push %rbx
push %rdi
push %rsi

// Store
mov $0x10, %rdi
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, (%rdi)

// Exception!!!
nop
nop
mov (0), %rbp
nop
nop
nop
nop
nop
cmp $54458, %r11

// Store
lea addresses_UC+0x16338, %r12
nop
and $55334, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, (%r12)
xor %rsi, %rsi

// Store
lea addresses_D+0x1810, %rsi
nop
nop
nop
nop
xor $30966, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm6
vmovaps %ymm6, (%rsi)
nop
nop
cmp $14208, %rsi

// Store
lea addresses_normal+0x13b10, %rbx
nop
nop
nop
add $51082, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movups %xmm7, (%rbx)
inc %rbp

// Store
mov $0xac4fe0000000490, %rdi
nop
nop
nop
nop
add %rax, %rax
movb $0x51, (%rdi)
nop
nop
add $20284, %rdi

// Store
lea addresses_WC+0x18d9a, %rax
nop
xor $40888, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movups %xmm0, (%rax)
inc %rbx

// Store
lea addresses_A+0x9410, %rax
sub %rdi, %rdi
movb $0x51, (%rax)
nop
nop
nop
nop
sub $55877, %rbx

// Store
lea addresses_WC+0x1c910, %rbx
clflush (%rbx)
nop
nop
sub $60376, %r11
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
cmp $13190, %r12

// Load
lea addresses_D+0xec10, %r11
nop
inc %r12
mov (%r11), %rbp
add $18367, %rsi

// Faulty Load
lea addresses_D+0xec10, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
vmovups (%rsi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'36': 20954}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
