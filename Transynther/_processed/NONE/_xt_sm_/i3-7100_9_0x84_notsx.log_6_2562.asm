.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1adb8, %r12
nop
nop
nop
nop
nop
add $8222, %r10
mov $0x6162636465666768, %r13
movq %r13, %xmm1
movups %xmm1, (%r12)
nop
nop
nop
and %r10, %r10
lea addresses_normal_ht+0x6db8, %r12
xor %r11, %r11
mov $0x6162636465666768, %r9
movq %r9, %xmm3
vmovups %ymm3, (%r12)
nop
xor %r11, %r11
lea addresses_WC_ht+0x1b7de, %r12
nop
nop
sub $4351, %rax
movb (%r12), %r9b
nop
nop
nop
and $18480, %r13
lea addresses_UC_ht+0xa704, %rsi
lea addresses_A_ht+0x1a570, %rdi
and %r13, %r13
mov $50, %rcx
rep movsl
nop
nop
nop
nop
xor %r12, %r12
lea addresses_A_ht+0x595e, %rsi
lea addresses_WC_ht+0x12fb8, %rdi
nop
nop
nop
nop
nop
cmp $64801, %r11
mov $58, %rcx
rep movsw
dec %rcx
lea addresses_WC_ht+0x15da2, %r12
nop
sub %r13, %r13
movb $0x61, (%r12)
nop
nop
nop
nop
nop
xor $61744, %rcx
lea addresses_D_ht+0x1034c, %r9
nop
nop
nop
nop
cmp $46588, %rcx
mov (%r9), %rsi
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x1d5b8, %rcx
nop
nop
nop
and %r9, %r9
movb (%rcx), %r10b
nop
nop
nop
nop
add $239, %r12
lea addresses_A_ht+0xd408, %rsi
lea addresses_A_ht+0x11296, %rdi
clflush (%rsi)
nop
nop
nop
cmp %r12, %r12
mov $82, %rcx
rep movsb
nop
nop
nop
nop
and $46319, %r12
lea addresses_A_ht+0x1b7bb, %rsi
nop
nop
nop
nop
nop
add $56242, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rsi)
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r8
push %r9
push %rbp

// Store
lea addresses_RW+0x155b8, %r11
nop
nop
nop
nop
nop
and %r13, %r13
mov $0x5152535455565758, %r9
movq %r9, %xmm3
vmovups %ymm3, (%r11)
add $61097, %r8

// Store
lea addresses_D+0x1d68c, %r14
nop
dec %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm0
movups %xmm0, (%r14)
inc %r8

// Store
lea addresses_WT+0x8db8, %r9
nop
and %r13, %r13
mov $0x5152535455565758, %r8
movq %r8, %xmm0
movups %xmm0, (%r9)
nop
nop
xor %r8, %r8

// Store
mov $0x438, %r9
nop
nop
dec %rbp
movb $0x51, (%r9)
nop
nop
add %r14, %r14

// Store
mov $0x39248f0000000f28, %rbp
nop
nop
nop
nop
nop
xor %r8, %r8
movw $0x5152, (%rbp)
nop
nop
nop
nop
xor $37024, %r12

// Load
lea addresses_RW+0x155b8, %r11
nop
sub $45153, %r13
movups (%r11), %xmm3
vpextrq $1, %xmm3, %r12
nop
nop
nop
and $19515, %r8

// Faulty Load
lea addresses_RW+0x155b8, %r13
nop
nop
nop
nop
add %r8, %r8
mov (%r13), %ebp
lea oracles, %r11
and $0xff, %rbp
shlq $12, %rbp
mov (%r11,%rbp,1), %rbp
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 6}
58 58 58 58 58 58
*/
