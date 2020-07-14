.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x166fd, %r8
nop
nop
nop
and $28414, %rdx
mov $0x6162636465666768, %r11
movq %r11, %xmm3
vmovups %ymm3, (%r8)
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x741d, %rsi
lea addresses_WC_ht+0x247d, %rdi
sub $12894, %rdx
mov $3, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_normal_ht+0x185dd, %rsi
lea addresses_UC_ht+0x1a3a5, %rdi
nop
nop
nop
sub %rbx, %rbx
mov $67, %rcx
rep movsb
and %r11, %r11
lea addresses_A_ht+0x267d, %rsi
lea addresses_WT_ht+0x12e21, %rdi
add $61509, %rax
mov $41, %rcx
rep movsw
nop
nop
nop
and $2322, %rsi
lea addresses_WC_ht+0x1a9e7, %r11
nop
nop
xor $22762, %rax
and $0xffffffffffffffc0, %r11
movaps (%r11), %xmm7
vpextrq $0, %xmm7, %rcx
sub $24882, %rdi
lea addresses_normal_ht+0x877d, %rax
add %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, (%rax)
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_WC_ht+0x1cf3d, %rsi
lea addresses_UC_ht+0x18f8d, %rdi
nop
nop
add %rax, %rax
mov $46, %rcx
rep movsl
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x398d, %rsi
lea addresses_UC_ht+0x153bd, %rdi
nop
nop
nop
nop
nop
xor %rax, %rax
mov $8, %rcx
rep movsb
nop
dec %rax
lea addresses_WT_ht+0x18fdf, %rsi
lea addresses_WC_ht+0xb77d, %rdi
nop
nop
nop
and %rax, %rax
mov $102, %rcx
rep movsb
nop
nop
nop
nop
sub %r11, %r11
lea addresses_WC_ht+0x7d7d, %rsi
nop
nop
cmp %rdx, %rdx
mov (%rsi), %rbx
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WT_ht+0xa3fd, %rsi
lea addresses_A_ht+0x13a81, %rdi
nop
nop
nop
dec %rax
mov $38, %rcx
rep movsb
nop
nop
nop
add %rbx, %rbx
lea addresses_WC_ht+0x1ec9d, %rbx
nop
nop
nop
and $2572, %rsi
movb (%rbx), %cl
nop
nop
nop
nop
xor $20464, %rsi
lea addresses_normal_ht+0x1cf7d, %rbx
nop
nop
add $11304, %rdx
movb $0x61, (%rbx)
nop
nop
nop
nop
dec %rdx
lea addresses_WC_ht+0x2629, %rsi
lea addresses_A_ht+0x184fd, %rdi
clflush (%rdi)
nop
nop
nop
inc %rax
mov $0, %rcx
rep movsl
nop
inc %rdi
lea addresses_A_ht+0x117d, %rdx
nop
nop
nop
nop
inc %r11
movups (%rdx), %xmm7
vpextrq $0, %xmm7, %rax
nop
nop
nop
nop
nop
add $23638, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rsi

// Load
lea addresses_WC+0x177d, %r8
nop
nop
nop
sub %r12, %r12
mov (%r8), %rsi
nop
nop
and $2254, %r9

// Store
lea addresses_WC+0xf7d, %r9
nop
nop
nop
nop
nop
and $53513, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovups %ymm0, (%r9)
sub $62691, %r13

// Store
lea addresses_D+0x1c574, %r13
xor $10068, %r8
movl $0x51525354, (%r13)
inc %r11

// Store
lea addresses_PSE+0xe47d, %r12
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %r8
movq %r8, %xmm3
movntdq %xmm3, (%r12)
nop
nop
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_US+0x11f7d, %rbp
sub $44545, %r9
movw $0x5152, (%rbp)
nop
sub $38449, %r12

// Faulty Load
lea addresses_US+0x11f7d, %r11
nop
nop
nop
nop
nop
cmp %r13, %r13
movb (%r11), %r9b
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': True, 'NT': False}}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
