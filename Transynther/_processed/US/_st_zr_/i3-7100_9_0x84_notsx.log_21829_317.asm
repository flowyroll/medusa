.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1dd51, %rsi
lea addresses_D_ht+0xd651, %rdi
nop
nop
nop
add %r9, %r9
mov $102, %rcx
rep movsb
nop
nop
nop
sub $54916, %r13
lea addresses_D_ht+0x10f51, %rsi
lea addresses_D_ht+0x19018, %rdi
clflush (%rsi)
nop
nop
sub %rdx, %rdx
mov $100, %rcx
rep movsb
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x12f01, %rsi
lea addresses_WT_ht+0x8871, %rdi
nop
nop
nop
nop
nop
and $45972, %r11
mov $107, %rcx
rep movsq
nop
nop
nop
nop
nop
lfence
lea addresses_normal_ht+0xda49, %r9
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%r9)
nop
xor $42211, %r13
lea addresses_A_ht+0x14f51, %rsi
nop
sub $60306, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
xor $50806, %rdi
lea addresses_normal_ht+0x15941, %rdi
nop
nop
nop
nop
nop
cmp $24635, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
nop
dec %r9
lea addresses_A_ht+0x13b51, %rcx
nop
xor %r9, %r9
vmovups (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
xor %rdx, %rdx
lea addresses_WC_ht+0x146bb, %rsi
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
and $0xffffffffffffffc0, %rsi
movaps %xmm1, (%rsi)
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_normal_ht+0x12b51, %rdi
nop
and %r11, %r11
movb (%rdi), %r13b
nop
nop
nop
nop
nop
and $38907, %rcx
lea addresses_WT_ht+0x1484b, %rsi
nop
nop
nop
nop
nop
add $703, %r9
mov (%rsi), %dx
dec %rdi
lea addresses_A_ht+0xf51, %rcx
nop
add %r11, %r11
mov (%rcx), %rdi
nop
cmp %rcx, %rcx
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
push %r10
push %r11
push %r15
push %rax
push %rbp
push %rbx
push %rsi

// Store
mov $0x581, %r10
clflush (%r10)
nop
nop
nop
nop
and $40852, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, (%r10)
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_normal+0x1d5d1, %r10
sub $61153, %r15
movb $0x51, (%r10)
nop
nop
nop
and %r11, %r11

// Store
lea addresses_RW+0x9211, %rbx
nop
nop
nop
sub %rax, %rax
movb $0x51, (%rbx)
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_WC+0x3a71, %r11
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm3
movups %xmm3, (%r11)
nop
nop
and %r15, %r15

// Load
lea addresses_UC+0x1c271, %rsi
nop
nop
add $59932, %rbp
vmovntdqa (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r10
cmp %r15, %r15

// Store
lea addresses_D+0xb147, %r15
cmp %rsi, %rsi
movw $0x5152, (%r15)
nop
and %rax, %rax

// Store
lea addresses_normal+0x14b51, %rbx
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
movups %xmm5, (%rbx)
nop
nop
nop
nop
inc %r10

// Store
lea addresses_RW+0x13c97, %rsi
nop
cmp $19472, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovaps %ymm3, (%rsi)
nop
nop
nop
nop
add %r15, %r15

// Faulty Load
lea addresses_US+0xab51, %r11
nop
nop
nop
nop
sub $5536, %r10
mov (%r11), %bx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 7, '58': 21822}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
