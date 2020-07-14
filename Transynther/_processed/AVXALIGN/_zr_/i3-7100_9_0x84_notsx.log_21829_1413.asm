.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x15a0f, %r14
nop
nop
nop
nop
nop
sub $1413, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%r14)
nop
nop
nop
nop
inc %r9
lea addresses_normal_ht+0x1c8e3, %rcx
nop
nop
nop
cmp $50727, %r9
mov $0x6162636465666768, %r8
movq %r8, %xmm6
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm6, (%rcx)
cmp %rcx, %rcx
lea addresses_normal_ht+0xc907, %rsi
lea addresses_A_ht+0xf2c7, %rdi
xor $58711, %rbp
mov $44, %rcx
rep movsb
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0xbb07, %rsi
lea addresses_UC_ht+0xec01, %rdi
nop
nop
cmp %rbx, %rbx
mov $35, %rcx
rep movsl
nop
inc %r14
lea addresses_WT_ht+0x94e7, %rbx
clflush (%rbx)
nop
and $15523, %rcx
mov (%rbx), %di
nop
nop
nop
xor $20104, %rbp
lea addresses_normal_ht+0x7c47, %rbp
xor $11398, %rdi
movw $0x6162, (%rbp)
sub $57512, %rsi
lea addresses_WT_ht+0x9707, %r14
add $58211, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
movups %xmm5, (%r14)
nop
inc %r8
lea addresses_WT_ht+0x1b247, %rbp
nop
xor $25005, %r14
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%rbp)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x3907, %r9
nop
nop
xor $3564, %r14
mov (%r9), %ebx
nop
nop
nop
xor $63484, %r9
lea addresses_A_ht+0xd247, %r14
nop
nop
cmp $64143, %rbp
mov $0x6162636465666768, %r9
movq %r9, %xmm6
vmovups %ymm6, (%r14)
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x1a707, %rbp
nop
add $17241, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x185cf, %rsi
nop
nop
add $58390, %rbp
movl $0x61626364, (%rsi)
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x90c5, %r9
nop
nop
nop
nop
cmp %rdi, %rdi
and $0xffffffffffffffc0, %r9
vmovaps (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
nop
inc %rbx
lea addresses_A_ht+0x135c5, %rsi
lea addresses_D_ht+0x672d, %rdi
nop
nop
nop
cmp $26491, %r14
mov $25, %rcx
rep movsb
nop
xor %r9, %r9
lea addresses_normal_ht+0x18507, %rbx
nop
nop
add %r9, %r9
and $0xffffffffffffffc0, %rbx
vmovaps (%rbx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x6f07, %rbp
nop
nop
nop
nop
xor %r12, %r12
movw $0x5152, (%rbp)
nop
nop
sub $15320, %rbp

// REPMOV
lea addresses_WC+0x11d3f, %rsi
lea addresses_WC+0xddb3, %rdi
nop
nop
nop
nop
inc %r13
mov $28, %rcx
rep movsb
nop
nop
nop
dec %rsi

// Store
lea addresses_WT+0xd837, %rsi
nop
nop
nop
nop
nop
and %r12, %r12
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
and %r11, %r11

// REPMOV
lea addresses_RW+0x1f253, %rsi
lea addresses_WC+0x1cc7, %rdi
add %r12, %r12
mov $61, %rcx
rep movsw
inc %r11

// Store
lea addresses_PSE+0x13707, %rax
and $27720, %r12
movw $0x5152, (%rax)
nop
nop
nop
add $43570, %r12

// Store
lea addresses_PSE+0xc707, %rdi
nop
nop
nop
nop
dec %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rdi)
xor $54920, %r11

// Store
lea addresses_PSE+0x128e7, %r11
nop
and %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, (%r11)
nop
nop
cmp $49174, %r12

// Store
lea addresses_WT+0x1a15f, %r11
nop
nop
nop
nop
sub $29448, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, (%r11)
sub %r13, %r13

// Store
mov $0x907, %rbp
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r13
movq %r13, (%rbp)
nop
nop
nop
sub $39534, %rcx

// Load
lea addresses_RW+0x6d47, %rsi
nop
nop
cmp %r11, %r11
mov (%rsi), %bp
nop
cmp $30580, %rax

// Store
lea addresses_A+0xc87, %rdi
inc %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
nop
and $12034, %rsi

// Faulty Load
mov $0x659bc30000000f07, %rbp
nop
nop
and %rsi, %rsi
mov (%rbp), %r13
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 32, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
