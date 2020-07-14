.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x130c9, %r11
nop
nop
nop
nop
sub $62655, %r9
mov $0x6162636465666768, %rbp
movq %rbp, (%r11)
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0x1c7a9, %r11
nop
nop
nop
sub $37576, %rcx
movw $0x6162, (%r11)
nop
nop
add $16083, %r11
lea addresses_D_ht+0xaf49, %r12
nop
nop
nop
nop
nop
add %r11, %r11
mov $0x6162636465666768, %r8
movq %r8, %xmm5
vmovups %ymm5, (%r12)
and %r8, %r8
lea addresses_normal_ht+0x8429, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
and %rdi, %rdi
mov (%rbp), %r8d
nop
nop
nop
nop
sub $16697, %r8
lea addresses_A_ht+0x1c69, %r11
dec %rbp
mov (%r11), %r9
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_normal_ht+0x193c9, %rdi
nop
nop
nop
sub $37668, %r11
movb $0x61, (%rdi)
nop
nop
sub $27256, %r8
lea addresses_normal_ht+0x1c709, %r8
nop
nop
add $55844, %rbp
mov (%r8), %r9
nop
nop
nop
nop
dec %r8
lea addresses_WT_ht+0xe1c9, %rdi
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %r12
movq %r12, %xmm6
and $0xffffffffffffffc0, %rdi
movntdq %xmm6, (%rdi)
nop
nop
nop
nop
and $7898, %rbp
lea addresses_D_ht+0x4e13, %r12
nop
nop
nop
xor $53252, %r8
movb (%r12), %r9b
sub %r12, %r12
lea addresses_UC_ht+0x142e1, %rsi
lea addresses_A_ht+0x1d659, %rdi
nop
cmp $53950, %r9
mov $119, %rcx
rep movsw
nop
nop
nop
nop
inc %rbp
lea addresses_A_ht+0x7b49, %rsi
lea addresses_A_ht+0x7a45, %rdi
nop
nop
add %rbp, %rbp
mov $36, %rcx
rep movsq
nop
xor $25707, %rcx
lea addresses_UC_ht+0x171c9, %rsi
lea addresses_WC_ht+0xabca, %rdi
clflush (%rdi)
nop
add %r8, %r8
mov $6, %rcx
rep movsb
nop
add $26870, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rcx

// Store
lea addresses_D+0x12843, %rcx
nop
xor %r12, %r12
movw $0x5152, (%rcx)
nop
nop
nop
nop
cmp $21210, %r8

// Store
lea addresses_WT+0xa1c9, %rbx
nop
nop
nop
nop
nop
and $2945, %r11
mov $0x5152535455565758, %r15
movq %r15, (%rbx)
nop
add $30084, %rbx

// Store
lea addresses_PSE+0xa29, %r15
clflush (%r15)
nop
inc %r8
movw $0x5152, (%r15)
nop
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_WT+0x5b09, %r12
nop
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %r8
movq %r8, (%r12)
nop
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_WT+0x1fe29, %rbx
nop
nop
nop
nop
nop
sub %r11, %r11
movw $0x5152, (%rbx)
nop
and $10256, %r15

// Load
lea addresses_RW+0x71c9, %rbx
nop
nop
nop
nop
nop
inc %r12
mov (%rbx), %r11w
nop
nop
and $56820, %rcx

// Store
lea addresses_A+0x44c9, %rbp
nop
nop
inc %r12
mov $0x5152535455565758, %r15
movq %r15, (%rbp)
nop
nop
nop
nop
inc %r8

// Store
lea addresses_D+0x44c9, %rcx
nop
nop
nop
nop
sub $20557, %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovntdq %ymm3, (%rcx)
nop
nop
nop
and $49122, %r11

// Faulty Load
lea addresses_US+0x41c9, %rcx
nop
sub %r15, %r15
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %r11
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'00': 5092, '45': 262}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 45 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00
*/
