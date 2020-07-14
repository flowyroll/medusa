.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x965f, %rsi
lea addresses_A_ht+0x1aa5f, %rdi
xor $19192, %r14
mov $117, %rcx
rep movsw
nop
nop
nop
and $10359, %r8
lea addresses_D_ht+0x8a38, %rcx
inc %rbx
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x1a25f, %rbx
nop
dec %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
nop
xor $2660, %r14
lea addresses_A_ht+0x8eff, %rsi
lea addresses_A_ht+0x165f, %rdi
sub %r8, %r8
mov $115, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $35403, %r15
lea addresses_WT_ht+0x1fdf, %r15
nop
nop
nop
nop
sub $56007, %rcx
mov (%r15), %r8
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x1c827, %rsi
lea addresses_A_ht+0x1b85f, %rdi
nop
nop
dec %r8
mov $127, %rcx
rep movsq
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_A+0xae5f, %r8
clflush (%r8)
nop
nop
nop
nop
nop
cmp %r14, %r14
movw $0x5152, (%r8)
nop
nop
add %r8, %r8

// Store
mov $0xc8f, %rdi
inc %rax
mov $0x5152535455565758, %r15
movq %r15, %xmm7
vmovups %ymm7, (%rdi)
cmp %r8, %r8

// Store
mov $0x138ed4000000075f, %r14
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movntdq %xmm2, (%r14)
xor $44573, %r8

// Store
lea addresses_A+0x77e7, %rcx
nop
nop
inc %rbp
movl $0x51525354, (%rcx)
nop
xor $38599, %r14

// Faulty Load
lea addresses_US+0x1ee5f, %r14
nop
add $26324, %rcx
mov (%r14), %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'52': 20490, '6d': 1339}
52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 6d 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 6d 52 52 52 52 52 52 6d 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 6d 52 6d 6d 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 6d 52 52 6d 6d 52 52 52 52 52 6d 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
