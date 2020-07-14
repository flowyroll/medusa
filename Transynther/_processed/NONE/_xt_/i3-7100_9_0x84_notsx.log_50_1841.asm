.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x5cf1, %rsi
lea addresses_D_ht+0x4ee1, %rdi
cmp $25406, %rdx
mov $81, %rcx
rep movsq
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0x1816f, %r9
nop
nop
nop
cmp %r11, %r11
mov (%r9), %dx
nop
nop
nop
nop
nop
add $2161, %rdi
lea addresses_WC_ht+0x1861, %r11
nop
nop
nop
nop
nop
cmp %r13, %r13
and $0xffffffffffffffc0, %r11
movaps (%r11), %xmm0
vpextrq $1, %xmm0, %rdx
nop
xor $13282, %r9
lea addresses_UC_ht+0x1e957, %r13
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm6
vmovups %ymm6, (%r13)
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x1daf1, %rdi
nop
nop
cmp $3771, %r13
movl $0x61626364, (%rdi)
nop
nop
xor %r11, %r11
lea addresses_D_ht+0x14ee1, %r13
nop
nop
nop
nop
nop
and %r11, %r11
movb $0x61, (%r13)
nop
cmp $33484, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi

// Load
mov $0x5b8c420000000061, %r11
nop
nop
add $15622, %rcx
vmovups (%r11), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
and %r11, %r11

// Store
lea addresses_US+0x190b3, %r8
nop
nop
nop
nop
add $18784, %rcx
movb $0x51, (%r8)
nop
nop
nop
and %r8, %r8

// Store
lea addresses_WC+0x14041, %r8
nop
nop
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %r11
movq %r11, %xmm0
movups %xmm0, (%r8)
nop
inc %rcx

// Load
lea addresses_UC+0x17f61, %r8
nop
nop
nop
nop
nop
add %rcx, %rcx
vmovaps (%r8), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
nop
nop
nop
nop
add $31028, %r11

// Faulty Load
lea addresses_RW+0x5861, %rcx
nop
and $61227, %r8
mov (%rcx), %r14
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'32': 50}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
