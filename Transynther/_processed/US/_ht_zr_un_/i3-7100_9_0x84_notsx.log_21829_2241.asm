.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1be7c, %r11
and %r13, %r13
movb $0x61, (%r11)
nop
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x1d3c, %rsi
nop
nop
nop
xor $40897, %r10
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm5
vpextrq $1, %xmm5, %r8
and $59110, %r13
lea addresses_WT_ht+0x467c, %rsi
lea addresses_normal_ht+0x377c, %rdi
nop
xor %rbp, %rbp
mov $98, %rcx
rep movsw
nop
nop
nop
mfence
lea addresses_A_ht+0x4894, %rsi
lea addresses_WC_ht+0xc7ac, %rdi
nop
nop
nop
nop
xor $27399, %r12
mov $55, %rcx
rep movsl
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0x17290, %rsi
lea addresses_WT_ht+0x1c7c, %rdi
nop
nop
nop
nop
add $12551, %rbp
mov $63, %rcx
rep movsb
sub %r13, %r13
lea addresses_WC_ht+0x1467c, %rsi
lea addresses_normal_ht+0x8c, %rdi
nop
nop
nop
nop
inc %r8
mov $18, %rcx
rep movsq
nop
nop
nop
nop
nop
add $50239, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rbp
push %rbx
push %rsi

// Store
lea addresses_WT+0x809c, %r13
nop
nop
nop
nop
nop
sub $23777, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, (%r13)
nop
nop
nop
nop
nop
add %r13, %r13

// Load
lea addresses_WC+0x5a7c, %r9
nop
xor $64483, %rbp
mov (%r9), %r13d
nop
nop
inc %r14

// Store
lea addresses_UC+0x1e784, %rsi
nop
nop
add $4181, %r13
movl $0x51525354, (%rsi)
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_RW+0x1c1bc, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
and $38189, %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movntdq %xmm5, (%rbp)
nop
nop
nop
nop
dec %r13

// Faulty Load
lea addresses_US+0xea7c, %r13
nop
nop
nop
dec %rsi
movups (%r13), %xmm6
vpextrq $1, %xmm6, %r14
lea oracles, %r10
and $0xff, %r14
shlq $12, %r14
mov (%r10,%r14,1), %r14
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'47': 77, '48': 812, '49': 331, '00': 19435, '09': 1, '45': 1172, '08': 1}
00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 45 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 45 00 00 00 00 00 00 00 48 00 00 49 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 48 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 48 00 00 48 00 00 45 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 49 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 48 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 48 00 00 45 00 00 00 00 48 00 00 45 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 48 00 00 49 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 48 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 48 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 45 00 00 00 00 00 00 00 49 00 00 45 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 48 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 48 00 00 45 00 00 00 00 00 00 00 00 00 00 48 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 49 00 00 45 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00
*/
