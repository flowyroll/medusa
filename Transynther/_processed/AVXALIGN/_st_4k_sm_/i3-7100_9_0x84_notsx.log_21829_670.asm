.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x511, %rsi
lea addresses_D_ht+0xfd2d, %rdi
clflush (%rdi)
and %r12, %r12
mov $69, %rcx
rep movsw
nop
cmp $21628, %r14
lea addresses_WT_ht+0x1cf2d, %r11
nop
nop
nop
nop
nop
xor %r13, %r13
mov (%r11), %esi
nop
nop
nop
nop
inc %r12
lea addresses_A_ht+0x1520d, %rdi
nop
nop
nop
nop
nop
and $14032, %rcx
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %r12
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0x152ed, %rdi
nop
nop
and $1118, %rcx
movb (%rdi), %r14b
nop
nop
nop
nop
sub $47631, %rsi
lea addresses_WT_ht+0x9ac5, %rsi
lea addresses_A_ht+0x1662d, %rdi
nop
nop
nop
nop
inc %r8
mov $71, %rcx
rep movsq
cmp %r11, %r11
lea addresses_WC_ht+0x16211, %r14
nop
nop
add $48781, %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm6
and $0xffffffffffffffc0, %r14
movntdq %xmm6, (%r14)
nop
nop
nop
add %r14, %r14
lea addresses_WC_ht+0x1200d, %rsi
lea addresses_WT_ht+0xbf6d, %rdi
nop
nop
nop
nop
and $57816, %r13
mov $50, %rcx
rep movsl
nop
nop
nop
add $33684, %rdi
lea addresses_WC_ht+0xdfad, %rsi
nop
sub %r12, %r12
mov $0x6162636465666768, %r14
movq %r14, (%rsi)
nop
nop
nop
and $45048, %r11
lea addresses_D_ht+0x1a62d, %r14
and %r8, %r8
movb (%r14), %r11b
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rax
push %rcx

// Store
lea addresses_PSE+0x8e31, %r8
nop
nop
nop
nop
cmp $47312, %r11
mov $0x5152535455565758, %rcx
movq %rcx, (%r8)
nop
nop
nop
and %r12, %r12

// Load
lea addresses_A+0x166e7, %r13
nop
xor $55914, %r14
mov (%r13), %r12
nop
nop
cmp $36317, %r12

// Store
lea addresses_normal+0x1542d, %r14
nop
nop
nop
nop
nop
add $58529, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r14)
nop
nop
nop
nop
and $32196, %r14

// Store
lea addresses_PSE+0x442d, %r12
nop
nop
nop
nop
nop
cmp %r14, %r14
movw $0x5152, (%r12)
nop
nop
cmp %r14, %r14

// Store
lea addresses_A+0xd4ab, %r11
nop
nop
nop
xor %r8, %r8
movb $0x51, (%r11)
nop
nop
nop
nop
nop
and $12779, %r11

// Store
lea addresses_US+0xd22d, %r11
clflush (%r11)
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r8
movq %r8, (%r11)
dec %rax

// Store
mov $0x56c2a9000000022d, %rcx
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %r13
movq %r13, (%rcx)
nop
xor %r11, %r11

// Store
lea addresses_WC+0x1842d, %r8
nop
nop
nop
nop
nop
cmp $32849, %r13
mov $0x5152535455565758, %rax
movq %rax, (%r8)
nop
add %rax, %rax

// Store
lea addresses_UC+0xbc2d, %rcx
nop
nop
cmp $62887, %r14
mov $0x5152535455565758, %r13
movq %r13, (%rcx)
nop
add %r14, %r14

// Store
lea addresses_PSE+0x442d, %r12
nop
nop
nop
inc %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovups %ymm5, (%r12)
nop
xor %r12, %r12

// Load
lea addresses_PSE+0xe8ad, %r11
nop
nop
nop
cmp %r14, %r14
movb (%r11), %al
nop
nop
nop
add $53125, %r11

// Faulty Load
lea addresses_PSE+0x442d, %r8
nop
and $16856, %rcx
movb (%r8), %r14b
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
