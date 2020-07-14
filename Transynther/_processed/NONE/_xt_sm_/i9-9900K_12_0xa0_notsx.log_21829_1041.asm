.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x4cb4, %rsi
lea addresses_normal_ht+0x16ff2, %rdi
cmp %rax, %rax
mov $84, %rcx
rep movsl
nop
dec %rsi
lea addresses_D_ht+0x11122, %rsi
lea addresses_A_ht+0xd3f2, %rdi
inc %r8
mov $15, %rcx
rep movsq
nop
nop
nop
sub $14838, %rax
lea addresses_WC_ht+0x1b8c6, %r8
nop
nop
nop
nop
nop
xor $29491, %r11
movb (%r8), %cl
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0x2050, %rax
nop
and %r8, %r8
movl $0x61626364, (%rax)
nop
nop
nop
nop
add %rax, %rax
lea addresses_D_ht+0x728f, %r8
nop
nop
nop
nop
sub %rax, %rax
movw $0x6162, (%r8)
nop
nop
nop
nop
xor $1820, %rcx
lea addresses_D_ht+0x114a2, %rsi
nop
nop
nop
inc %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm5
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm5, (%rsi)
nop
nop
nop
nop
nop
dec %r11
lea addresses_WC_ht+0x65f6, %r11
nop
nop
nop
nop
sub $4656, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r11)
sub %rax, %rax
lea addresses_normal_ht+0xeb32, %rsi
lea addresses_D_ht+0x16bf2, %rdi
nop
nop
nop
nop
sub $28992, %r13
mov $90, %rcx
rep movsb
nop
xor $9022, %rsi
lea addresses_UC_ht+0x163f2, %rax
nop
nop
nop
nop
cmp $56387, %rcx
movups (%rax), %xmm0
vpextrq $1, %xmm0, %r11
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x1bdf2, %r13
nop
nop
dec %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm2
movups %xmm2, (%r13)
and %rbp, %rbp
lea addresses_A_ht+0x14892, %r13
nop
nop
nop
nop
nop
sub $44296, %rcx
mov (%r13), %r11w
nop
cmp %r8, %r8
lea addresses_WC_ht+0xe472, %rcx
nop
xor $499, %rsi
movb $0x61, (%rcx)
xor %rbp, %rbp
lea addresses_normal_ht+0x117dc, %r8
nop
nop
nop
nop
nop
and %r11, %r11
movw $0x6162, (%r8)
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x1b1c7, %rsi
nop
nop
sub $56747, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovups %ymm2, (%rsi)
inc %r8

// Store
lea addresses_WC+0x189f2, %r9
nop
cmp $18899, %rdi
movb $0x51, (%r9)
nop
nop
nop
nop
inc %r9

// Store
lea addresses_A+0x108aa, %r8
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm7
vmovups %ymm7, (%r8)
nop
inc %r8

// Store
lea addresses_WT+0xc610, %rdi
nop
nop
nop
inc %r15
mov $0x5152535455565758, %r9
movq %r9, %xmm7
vmovups %ymm7, (%rdi)
nop
and %r9, %r9

// Store
lea addresses_WT+0x131b2, %r12
nop
sub $45594, %r8
movw $0x5152, (%r12)
nop
xor $7002, %r8

// REPMOV
lea addresses_normal+0x1adf2, %rsi
lea addresses_D+0x113f2, %rdi
sub %r15, %r15
mov $9, %rcx
rep movsq
nop
nop
inc %rdi

// Store
mov $0x972, %r8
nop
nop
nop
nop
nop
cmp $3102, %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r8)
nop
nop
nop
nop
nop
and $64137, %r8

// Store
lea addresses_RW+0xebfe, %r8
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movups %xmm7, (%r8)
nop
nop
cmp %r12, %r12

// Load
lea addresses_D+0xd3f2, %r15
nop
nop
inc %rsi
mov (%r15), %ecx
nop
nop
nop
sub %rsi, %rsi

// Load
lea addresses_A+0x15114, %rax
inc %rcx
mov (%rax), %r12w
add %rcx, %rcx

// Store
lea addresses_A+0x68f4, %r12
xor $10397, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r12)
add %rdi, %rdi

// Store
lea addresses_D+0x113f2, %rdi
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %r9
movq %r9, (%rdi)
xor %r9, %r9

// Store
lea addresses_UC+0x2d6c, %r15
nop
nop
nop
nop
nop
cmp $9652, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r15)
nop
nop
nop
and $19892, %r8

// Load
lea addresses_US+0x17db2, %r8
nop
xor $13709, %r15
movb (%r8), %r12b
nop
nop
nop
add %r15, %r15

// Faulty Load
lea addresses_D+0x113f2, %rdi
nop
nop
nop
sub $5882, %rcx
mov (%rdi), %r15w
lea oracles, %r12
and $0xff, %r15
shlq $12, %r15
mov (%r12,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_normal', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
