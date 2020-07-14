.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1360e, %rdx
dec %r10
mov $0x6162636465666768, %r14
movq %r14, %xmm3
and $0xffffffffffffffc0, %rdx
vmovaps %ymm3, (%rdx)
dec %r14
lea addresses_WC_ht+0x684c, %r10
nop
nop
nop
nop
nop
add $3655, %rbp
mov (%r10), %rax
nop
nop
nop
dec %rax
lea addresses_WT_ht+0x1eca8, %rcx
nop
nop
nop
nop
nop
dec %r8
mov (%rcx), %rbp
nop
cmp %r10, %r10
lea addresses_D_ht+0x1746e, %rcx
clflush (%rcx)
nop
and %r14, %r14
movb (%rcx), %r8b
nop
sub %r10, %r10
lea addresses_UC_ht+0xd2c6, %rbp
nop
nop
nop
nop
cmp %r10, %r10
mov $0x6162636465666768, %rdx
movq %rdx, (%rbp)
nop
nop
nop
nop
sub $17875, %r8
lea addresses_WC_ht+0x11048, %rsi
lea addresses_normal_ht+0xce5c, %rdi
nop
xor %r8, %r8
mov $104, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_D_ht+0x13fac, %r10
sub %r8, %r8
movb (%r10), %r14b
nop
nop
nop
nop
nop
sub $18562, %rsi
lea addresses_WC_ht+0x16c98, %r14
clflush (%r14)
nop
nop
nop
nop
nop
xor $25735, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%r14)
nop
nop
nop
nop
nop
xor $61164, %r10
lea addresses_A_ht+0x13084, %rcx
add %rdx, %rdx
mov (%rcx), %r14d
nop
nop
cmp $57428, %rbp
lea addresses_A_ht+0x1384c, %rdi
nop
nop
and $8805, %r8
movw $0x6162, (%rdi)
xor $18949, %rsi
lea addresses_A_ht+0xb047, %r8
add %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_A_ht+0x143a0, %rcx
add $14858, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm5
movups %xmm5, (%rcx)
lfence
lea addresses_D_ht+0x1748c, %rsi
lea addresses_WT_ht+0x142bc, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %r10
mov $92, %rcx
rep movsq
nop
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0xfc86, %rdx
nop
nop
xor %r14, %r14
movw $0x6162, (%rdx)
and $51815, %rdx
lea addresses_normal_ht+0x934c, %rax
nop
nop
cmp $21683, %r14
movups (%rax), %xmm1
vpextrq $0, %xmm1, %rdx
nop
nop
nop
nop
xor %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rbx
push %rsi

// Store
lea addresses_WT+0x1bb24, %rbx
nop
nop
dec %r12
movl $0x51525354, (%rbx)
nop
nop
add %rbx, %rbx

// Store
lea addresses_A+0x610c, %r11
nop
and %rsi, %rsi
movb $0x51, (%r11)
nop
nop
nop
nop
nop
sub $14204, %r12

// Store
lea addresses_WC+0xc44c, %rsi
clflush (%rsi)
nop
add %r10, %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm0
vmovups %ymm0, (%rsi)
cmp $8844, %r12

// Faulty Load
mov $0xc4c, %r8
nop
nop
nop
nop
nop
cmp $3343, %r9
mov (%r8), %r10
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rsi
pop %rbx
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 166}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
