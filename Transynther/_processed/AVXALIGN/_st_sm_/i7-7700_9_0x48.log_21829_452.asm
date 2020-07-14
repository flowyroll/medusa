.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x16ea4, %rsi
lea addresses_A_ht+0x1d894, %rdi
clflush (%rdi)
nop
nop
nop
sub %rbp, %rbp
mov $46, %rcx
rep movsb
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x3824, %rax
nop
nop
nop
nop
nop
and %r13, %r13
movb $0x61, (%rax)
nop
xor $44923, %r13
lea addresses_A_ht+0x114a4, %rbp
sub $63863, %r11
movb (%rbp), %r13b
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_WC_ht+0x6ca4, %rsi
lea addresses_WT_ht+0x112eb, %rdi
nop
and $60931, %r15
mov $88, %rcx
rep movsq
nop
nop
nop
nop
inc %r15
lea addresses_normal_ht+0x6934, %r11
nop
xor $17189, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm1
vmovups %ymm1, (%r11)
nop
nop
nop
inc %r11
lea addresses_normal_ht+0x12da4, %rsi
nop
nop
inc %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%rsi)
xor $13029, %rax
lea addresses_D_ht+0x4914, %rbp
nop
nop
nop
nop
nop
sub $15718, %r15
movb $0x61, (%rbp)
nop
nop
dec %r13
lea addresses_UC_ht+0xaca4, %rsi
lea addresses_A_ht+0xc224, %rdi
nop
nop
xor %rax, %rax
mov $87, %rcx
rep movsw
nop
nop
nop
cmp $63307, %rax
lea addresses_WT_ht+0x164e4, %rsi
lea addresses_WC_ht+0x18ca4, %rdi
nop
nop
nop
cmp $53359, %rax
mov $54, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x14fc4, %rax
nop
nop
nop
nop
nop
cmp $5055, %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
nop
and $7435, %rsi
lea addresses_WC_ht+0x70a4, %rsi
lea addresses_WT_ht+0x1cc24, %rdi
nop
nop
nop
nop
add %r13, %r13
mov $94, %rcx
rep movsb
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x12794, %r15
nop
nop
nop
nop
nop
and $36573, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r15)
nop
nop
nop
nop
nop
dec %r15
lea addresses_A_ht+0x2c94, %rcx
nop
nop
and %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
and $50558, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0xdca4, %rbx
nop
add %r13, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movups %xmm7, (%rbx)
nop
nop
nop
nop
and $29973, %r10

// REPMOV
mov $0x4a4, %rsi
lea addresses_A+0xd324, %rdi
nop
nop
nop
nop
nop
add %r10, %r10
mov $30, %rcx
rep movsb
nop
nop
nop
nop
inc %r13

// Load
lea addresses_UC+0x15cc, %r11
nop
nop
nop
nop
nop
and $9729, %rdx
movb (%r11), %r15b
nop
nop
add %r11, %r11

// Store
lea addresses_RW+0x1d33c, %rdi
nop
sub $54850, %rbx
movl $0x51525354, (%rdi)
nop
and $53763, %rdx

// Faulty Load
lea addresses_normal+0xdca4, %r15
clflush (%r15)
nop
nop
nop
nop
dec %rsi
mov (%r15), %dx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': True, 'NT': False}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
