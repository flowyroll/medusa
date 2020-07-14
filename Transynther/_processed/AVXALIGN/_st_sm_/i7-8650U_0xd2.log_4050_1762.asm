.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x18b0c, %rax
nop
add %r12, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
and $0xffffffffffffffc0, %rax
movntdq %xmm7, (%rax)
nop
nop
nop
cmp $63104, %r8
lea addresses_D_ht+0x499c, %rsi
lea addresses_D_ht+0xf28c, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
mov $56, %rcx
rep movsw
nop
nop
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0xdec4, %rsi
lea addresses_normal_ht+0x1a78c, %rdi
clflush (%rsi)
nop
and %rax, %rax
mov $113, %rcx
rep movsl
nop
cmp $22621, %r12
lea addresses_D_ht+0xc78c, %rdi
nop
nop
nop
cmp $11600, %r8
mov $0x6162636465666768, %r12
movq %r12, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x18ea0, %r8
nop
nop
nop
nop
nop
sub $27299, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r8)
nop
nop
cmp $34248, %rcx
lea addresses_UC_ht+0x141ac, %rsi
lea addresses_WT_ht+0x1628c, %rdi
nop
nop
nop
dec %r15
mov $19, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rax
lea addresses_WC_ht+0x6c42, %rcx
nop
nop
nop
nop
nop
cmp $9280, %r15
movb (%rcx), %r8b
nop
nop
nop
nop
sub $56635, %r8
lea addresses_UC_ht+0x138c, %rcx
and %rax, %rax
mov $0x6162636465666768, %r15
movq %r15, (%rcx)
nop
nop
dec %rdi
lea addresses_D_ht+0x17c8c, %rsi
nop
nop
nop
inc %r15
mov $0x6162636465666768, %r12
movq %r12, %xmm2
and $0xffffffffffffffc0, %rsi
movntdq %xmm2, (%rsi)
and $21088, %rax
lea addresses_WT_ht+0x1218c, %r15
nop
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %r12
movq %r12, %xmm4
movups %xmm4, (%r15)
nop
nop
nop
nop
nop
cmp $9824, %r15
lea addresses_D_ht+0x17e0c, %rsi
nop
inc %r12
movw $0x6162, (%rsi)
nop
add $33825, %rax
lea addresses_A_ht+0xbf8c, %rax
nop
nop
cmp $45655, %rdi
mov (%rax), %ecx
nop
nop
nop
nop
cmp $24556, %r12
lea addresses_WC_ht+0x1a38c, %rax
nop
nop
nop
nop
nop
add %rcx, %rcx
movups (%rax), %xmm7
vpextrq $1, %xmm7, %rsi
and $43039, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rbp
push %rbx
push %rsi

// Store
lea addresses_RW+0x17d0c, %rbx
nop
and %rbp, %rbp
movb $0x51, (%rbx)
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_RW+0x378c, %r8
add %r10, %r10
mov $0x5152535455565758, %rbx
movq %rbx, (%r8)
cmp %rsi, %rsi

// Store
lea addresses_US+0x18958, %r8
nop
nop
nop
and %r10, %r10
movb $0x51, (%r8)
nop
nop
nop
nop
nop
add $52960, %r8

// Store
lea addresses_WT+0xecb1, %r11
xor %r10, %r10
movw $0x5152, (%r11)
xor %rbx, %rbx

// Store
lea addresses_RW+0x378c, %r12
clflush (%r12)
nop
nop
nop
nop
nop
dec %r8
mov $0x5152535455565758, %rsi
movq %rsi, (%r12)
nop
nop
nop
nop
nop
and $30401, %rbx

// Faulty Load
lea addresses_RW+0x378c, %rbp
nop
nop
nop
sub %r12, %r12
mov (%rbp), %si
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rbx
pop %rbp
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': True, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'58': 4050}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
