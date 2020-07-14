.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1ba31, %r14
clflush (%r14)
nop
nop
add %rsi, %rsi
movl $0x61626364, (%r14)
nop
xor %r8, %r8
lea addresses_A_ht+0x83c5, %rsi
lea addresses_A_ht+0xada1, %rdi
clflush (%rdi)
nop
xor $35816, %rdx
mov $28, %rcx
rep movsl
nop
and $46939, %rdi
lea addresses_D_ht+0x6a51, %rsi
lea addresses_WT_ht+0x3f1, %rdi
nop
nop
inc %r15
mov $30, %rcx
rep movsb
nop
and $8299, %rcx
lea addresses_D_ht+0xf421, %rsi
nop
nop
nop
and %r15, %r15
mov (%rsi), %ecx
nop
nop
inc %r8
lea addresses_normal_ht+0xbc11, %r14
dec %r15
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
movups %xmm2, (%r14)
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x9af7, %rcx
sub $29414, %r8
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdx
nop
xor %r14, %r14
lea addresses_A_ht+0x1d089, %r14
nop
and %rbp, %rbp
movb $0x61, (%r14)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x93e1, %rdi
nop
nop
add %rcx, %rcx
movb (%rdi), %r15b
xor $34887, %rsi
lea addresses_A_ht+0xb5f1, %rsi
lea addresses_normal_ht+0x29f1, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $18, %rcx
rep movsb
cmp %r8, %r8
lea addresses_A_ht+0x11a86, %rsi
lea addresses_D_ht+0x3931, %rdi
nop
nop
sub $4686, %r8
mov $17, %rcx
rep movsq
nop
xor $26206, %rsi
lea addresses_WC_ht+0x1d8a5, %r8
nop
nop
nop
inc %r15
movb (%r8), %cl
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x1b1f1, %rsi
nop
nop
nop
sub $15583, %rdx
movups (%rsi), %xmm0
vpextrq $0, %xmm0, %r8
nop
nop
nop
nop
and $45573, %rsi
lea addresses_D_ht+0x10c55, %rsi
nop
nop
nop
nop
inc %r15
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
add $25705, %rdi
lea addresses_WC_ht+0x77d1, %rsi
lea addresses_UC_ht+0xa911, %rdi
nop
nop
nop
inc %rdx
mov $122, %rcx
rep movsw
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0xd241, %rdi
nop
nop
nop
nop
nop
sub $549, %r15
mov (%rdi), %rdx
nop
add %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x1f2bf, %rsi
clflush (%rsi)
nop
nop
cmp $9470, %r15
movb $0x51, (%rsi)
nop
nop
lfence

// REPMOV
lea addresses_UC+0x18a69, %rsi
lea addresses_WC+0xfe71, %rdi
nop
nop
nop
nop
cmp $21175, %r9
mov $28, %rcx
rep movsq
sub $9715, %r15

// Store
lea addresses_A+0x1f1f1, %r11
nop
add %rsi, %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm5
movups %xmm5, (%r11)
and %rsi, %rsi

// Store
lea addresses_WC+0x13771, %r13
nop
nop
nop
nop
and %rdi, %rdi
movl $0x51525354, (%r13)
nop
nop
nop
nop
inc %rdi

// Load
lea addresses_normal+0x3bb1, %rcx
nop
nop
nop
cmp $34530, %r15
mov (%rcx), %r11d
nop
xor %rsi, %rsi

// Store
lea addresses_US+0x19f1f, %r11
nop
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm3
vmovntdq %ymm3, (%r11)
nop
nop
nop
nop
nop
and $65355, %r9

// Load
lea addresses_WC+0x2df1, %r9
and $31388, %rcx
mov (%r9), %r15
nop
nop
nop
xor $37414, %rsi

// Faulty Load
lea addresses_A+0x1f1f1, %r9
xor %r11, %r11
mov (%r9), %r15d
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': True, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
