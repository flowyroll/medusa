.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x17a50, %r13
nop
nop
inc %r15
mov $0x6162636465666768, %r11
movq %r11, %xmm0
and $0xffffffffffffffc0, %r13
movntdq %xmm0, (%r13)
nop
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0x1e108, %rcx
sub %rsi, %rsi
mov (%rcx), %r12w
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x9390, %rsi
lea addresses_normal_ht+0x1af68, %rdi
sub %r10, %r10
mov $62, %rcx
rep movsw
nop
nop
nop
inc %r15
lea addresses_UC_ht+0x2f90, %rsi
nop
nop
nop
nop
and $56390, %r15
mov (%rsi), %r12d
nop
sub %r11, %r11
lea addresses_normal_ht+0x9f30, %r15
nop
inc %r11
movups (%r15), %xmm1
vpextrq $1, %xmm1, %rsi
nop
and %r13, %r13
lea addresses_D_ht+0x17ff0, %r15
nop
nop
nop
cmp $10315, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r15)
nop
nop
inc %rcx
lea addresses_A_ht+0x15090, %rsi
lea addresses_WT_ht+0x1c4a2, %rdi
nop
nop
nop
inc %r15
mov $40, %rcx
rep movsq
nop
nop
sub %r13, %r13
lea addresses_A_ht+0x1cb90, %rsi
lea addresses_WT_ht+0x13050, %rdi
nop
nop
nop
cmp $12127, %r15
mov $37, %rcx
rep movsb
nop
xor $40067, %rcx
lea addresses_A_ht+0x590, %r11
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, (%r11)
nop
nop
sub %r11, %r11
lea addresses_WC_ht+0x1a610, %rsi
lea addresses_WC_ht+0x11e4, %rdi
mfence
mov $0, %rcx
rep movsl
nop
nop
nop
nop
and $41859, %r11
lea addresses_UC_ht+0x15ce0, %rsi
nop
nop
nop
cmp $54324, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm3
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm3, (%rsi)
nop
nop
nop
nop
mfence
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Load
lea addresses_WC+0x14228, %r8
nop
nop
nop
nop
sub $61842, %rbp
vmovntdqa (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
sub $14877, %r9

// Store
lea addresses_US+0xf2f5, %r11
nop
nop
nop
nop
and $62963, %r8
movb $0x51, (%r11)
nop
nop
nop
nop
nop
sub $19765, %r11

// Store
lea addresses_PSE+0x1358, %rbp
nop
nop
nop
nop
nop
inc %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm5
vmovups %ymm5, (%rbp)
nop
nop
nop
nop
cmp $4642, %rbp

// Store
lea addresses_D+0x1c190, %rbp
nop
cmp %rax, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm3
vmovups %ymm3, (%rbp)
nop
dec %r11

// Store
lea addresses_WT+0xe7fa, %rsi
nop
xor $5771, %r9
movl $0x51525354, (%rsi)
sub $43912, %r11

// REPMOV
mov $0x50239f0000000a1d, %rsi
mov $0x40cb040000000390, %rdi
clflush (%rdi)
sub %r8, %r8
mov $98, %rcx
rep movsb

// Exception!!!
nop
nop
nop
nop
nop
xor %rax, %rax
div %rax
nop
nop
nop
nop
sub $3333, %rdi

// REPMOV
lea addresses_A+0xc9d0, %rsi
lea addresses_RW+0x1c890, %rdi
nop
nop
nop
cmp $19457, %r11
mov $11, %rcx
rep movsw
nop
nop
nop
add %rax, %rax

// Store
lea addresses_UC+0x137e0, %rax
nop
nop
nop
nop
nop
and %r8, %r8
movb $0x51, (%rax)
nop
nop
nop
nop
cmp %r8, %r8

// Store
mov $0xbd0, %r9
nop
dec %rsi
movl $0x51525354, (%r9)
nop
nop
nop
inc %rsi

// Load
lea addresses_A+0x185f9, %r9
nop
nop
nop
nop
xor $53420, %rdi
mov (%r9), %rcx
nop
nop
cmp %rax, %rax

// Store
lea addresses_PSE+0x7990, %rbp
nop
nop
cmp $20299, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, (%rbp)
nop
dec %rsi

// Load
lea addresses_PSE+0x18790, %rcx
nop
dec %rax
mov (%rcx), %bp
nop
nop
nop
nop
nop
mfence

// Store
lea addresses_WT+0x1d4d0, %rsi
nop
nop
sub $32524, %rbp
movl $0x51525354, (%rsi)

// Exception!!!
mov (0), %rdi
add %rbp, %rbp

// Load
lea addresses_D+0x12010, %r9
cmp $46384, %rbp
vmovntdqa (%r9), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
and $17722, %r11

// Faulty Load
lea addresses_RW+0x13390, %r8
xor %rcx, %rcx
mov (%r8), %r11w
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_NC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_NC'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 5, 'type': 'addresses_P', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}}
{'src': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': True, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'ab': 1}
ab
*/
