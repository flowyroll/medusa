.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x2aec, %rsi
lea addresses_WC_ht+0x18d10, %rdi
nop
add $34620, %rbx
mov $1, %rcx
rep movsl
nop
nop
nop
nop
nop
add $16417, %r9
lea addresses_A_ht+0xe948, %rsi
lea addresses_UC_ht+0x3868, %rdi
nop
nop
dec %rbx
mov $34, %rcx
rep movsq
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x13168, %rax
nop
nop
nop
and $233, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
and $0xffffffffffffffc0, %rax
movaps %xmm7, (%rax)
nop
nop
nop
nop
nop
dec %r9
lea addresses_D_ht+0x3392, %rbx
nop
nop
nop
nop
xor %rax, %rax
mov (%rbx), %rcx
nop
nop
nop
xor $27889, %rbx
lea addresses_WT_ht+0x1bf48, %rsi
lea addresses_A_ht+0x13d28, %rdi
nop
nop
nop
and %r10, %r10
mov $43, %rcx
rep movsw
nop
nop
nop
xor $41931, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %r9
push %rbx
push %rdi
push %rsi

// Store
lea addresses_WT+0xd748, %r9
nop
nop
nop
and %r15, %r15
movw $0x5152, (%r9)
nop
nop
nop
nop
inc %r15

// Store
lea addresses_RW+0x1e638, %r15
nop
nop
nop
nop
nop
xor $25596, %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm6
movups %xmm6, (%r15)
nop
add $11095, %r12

// Store
lea addresses_normal+0x2a68, %rsi
nop
nop
nop
nop
nop
and %r15, %r15
movl $0x51525354, (%rsi)
nop
nop
nop
cmp %rdi, %rdi

// Store
mov $0x621acc0000000f68, %r9
nop
and %rsi, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm1
movups %xmm1, (%r9)
dec %r9

// Store
mov $0x568, %rdi
nop
nop
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm3
movups %xmm3, (%rdi)
nop
nop
nop
nop
cmp %r9, %r9

// Store
mov $0x79eee3000000061c, %rdi
nop
nop
nop
nop
nop
xor $42912, %r12
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_A+0xfce6, %r15
nop
nop
nop
nop
and %rbx, %rbx
movw $0x5152, (%r15)
nop
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_US+0x19168, %rsi
cmp %r8, %r8
movl $0x51525354, (%rsi)
nop
nop
nop
xor $45192, %r12

// Store
lea addresses_RW+0xc768, %rdi
nop
cmp $7920, %rbx
mov $0x5152535455565758, %r8
movq %r8, (%rdi)
nop
nop
nop
nop
nop
cmp $10208, %r15

// Faulty Load
lea addresses_A+0x6968, %r15
nop
nop
add $19041, %r9
movb (%r15), %r8b
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
