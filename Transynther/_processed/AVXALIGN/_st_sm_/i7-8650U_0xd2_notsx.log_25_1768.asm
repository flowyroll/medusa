.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1edf3, %rsi
lea addresses_UC_ht+0x1baa1, %rdi
clflush (%rsi)
nop
sub %rdx, %rdx
mov $124, %rcx
rep movsl
dec %rdi
lea addresses_A_ht+0x13193, %rsi
lea addresses_WT_ht+0xf973, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp %r9, %r9
mov $44, %rcx
rep movsw
add $30285, %r9
lea addresses_WC_ht+0x14289, %r12
sub %r9, %r9
movb $0x61, (%r12)
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0x1aaf3, %r12
nop
nop
nop
nop
sub %r9, %r9
mov (%r12), %ecx
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x12f73, %r9
clflush (%r9)
and $53547, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r9)
nop
nop
nop
xor $47918, %rcx
lea addresses_WT_ht+0xcd3d, %rcx
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov (%rcx), %di
nop
nop
xor $49196, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Load
lea addresses_RW+0x5773, %r9
nop
nop
nop
nop
nop
add %r8, %r8
mov (%r9), %rax
nop
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_UC+0x16173, %r11
nop
nop
nop
cmp %r10, %r10
movb $0x51, (%r11)
nop
nop
and $63686, %r9

// REPMOV
lea addresses_WT+0x100fb, %rsi
lea addresses_A+0x3aeb, %rdi
nop
cmp %r8, %r8
mov $56, %rcx
rep movsq
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_normal+0x6193, %rdi
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r12
movq %r12, (%rdi)
nop
nop
nop
sub %r8, %r8

// REPMOV
lea addresses_normal+0x1b373, %rsi
lea addresses_D+0x1a633, %rdi
nop
nop
add %r10, %r10
mov $0, %rcx
rep movsw
xor %r8, %r8

// Load
lea addresses_normal+0x15b23, %rax
nop
nop
nop
nop
dec %r8
mov (%rax), %rdi
cmp %rax, %rax

// Load
mov $0x5564f00000000373, %r9
and $30804, %r11
mov (%r9), %r10w
nop
nop
dec %rcx

// Store
lea addresses_US+0x18f73, %r10
nop
nop
add %rax, %rax
movb $0x51, (%r10)
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_US+0x18f73, %rcx
nop
nop
and %r9, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movups %xmm4, (%rcx)
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_WC+0x5373, %rax
nop
nop
nop
nop
nop
cmp %r11, %r11
movw $0x5152, (%rax)
nop
xor $45529, %rcx

// Store
lea addresses_RW+0x23cf, %rdi
nop
nop
and $6490, %rcx
movl $0x51525354, (%rdi)
inc %rcx

// Store
lea addresses_normal+0x1ce73, %r8
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movups %xmm7, (%r8)
nop
nop
add $10426, %rsi

// Store
lea addresses_D+0x1782, %r11
nop
nop
nop
xor $34181, %r9
movl $0x51525354, (%r11)
nop
nop
and $13057, %rax

// Faulty Load
lea addresses_US+0x18f73, %rdi
and %rcx, %rcx
mov (%rdi), %r10
lea oracles, %r12
and $0xff, %r10
shlq $12, %r10
mov (%r12,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'58': 25}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
