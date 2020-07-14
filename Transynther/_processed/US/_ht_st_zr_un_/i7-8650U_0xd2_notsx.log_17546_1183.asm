.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1437d, %rax
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%rax)
nop
nop
inc %r15
lea addresses_D_ht+0x27fd, %rbp
cmp %r8, %r8
mov $0x6162636465666768, %rax
movq %rax, %xmm7
movups %xmm7, (%rbp)
nop
nop
xor $58663, %rax
lea addresses_D_ht+0x1a79d, %rsi
lea addresses_normal_ht+0xe1ca, %rdi
nop
nop
and $25480, %rbp
mov $93, %rcx
rep movsq
and $46260, %r15
lea addresses_D_ht+0x4ee9, %rsi
lea addresses_WT_ht+0x1e9f, %rdi
clflush (%rsi)
and %rbx, %rbx
mov $92, %rcx
rep movsl
nop
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0x1a3bd, %rsi
nop
nop
sub $43613, %rax
mov $0x6162636465666768, %r8
movq %r8, %xmm1
vmovups %ymm1, (%rsi)
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x185fd, %rsi
lea addresses_WT_ht+0x9fd, %rdi
clflush (%rdi)
nop
nop
nop
dec %rbp
mov $122, %rcx
rep movsq
nop
nop
nop
nop
xor $25718, %rbp
lea addresses_normal_ht+0x8a7d, %rbx
nop
xor $34911, %r15
mov (%rbx), %eax
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0xc5fd, %rdi
nop
nop
inc %rbx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
inc %rbx
lea addresses_normal_ht+0xcd7d, %rsi
lea addresses_WT_ht+0xc3f, %rdi
nop
nop
nop
nop
nop
dec %r15
mov $72, %rcx
rep movsb
nop
inc %rdi
lea addresses_D_ht+0x1318d, %rbx
add %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, (%rbx)
nop
nop
nop
nop
xor $53495, %rcx
lea addresses_A_ht+0x95fd, %rbx
sub $14364, %rdi
mov (%rbx), %si
nop
nop
inc %rax
lea addresses_normal_ht+0x175fd, %r8
nop
cmp $23239, %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm0
movups %xmm0, (%r8)
nop
nop
sub %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_UC+0xcacd, %r14
nop
nop
nop
nop
nop
cmp %rdx, %rdx
movl $0x51525354, (%r14)
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_UC+0x50ef, %r8
nop
nop
sub %r15, %r15
movw $0x5152, (%r8)
nop
nop
nop
add %rax, %rax

// Store
lea addresses_RW+0x1d1d5, %rcx
clflush (%rcx)
nop
and %r14, %r14
movb $0x51, (%rcx)
nop
xor $3287, %r14

// Store
lea addresses_US+0x757d, %rcx
cmp $26070, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
nop
nop
inc %r8

// Faulty Load
lea addresses_US+0x1dfd, %r8
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r8), %r15
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'00': 14040, '67': 2023, 'ef': 1223, '50': 11, '48': 63, '46': 16, '20': 48, '44': 72, 'c7': 6, 'f0': 2, '8f': 2, '14': 38, 'ba': 1, '30': 1}
00 67 ef ef 67 00 67 67 ef 00 00 00 00 00 00 00 00 00 00 67 67 00 00 00 67 50 00 67 00 67 ef 67 00 00 00 67 00 00 67 00 67 00 00 67 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 67 00 00 67 00 00 00 67 67 00 00 67 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 67 00 67 67 00 00 ef 00 00 00 00 00 00 67 67 00 00 ef 00 00 00 00 ef 00 00 00 00 00 00 48 00 67 00 00 00 ef 00 00 ef 00 00 00 00 00 00 46 00 00 00 00 00 00 00 ef ef 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ef 00 00 67 ef 00 00 00 00 67 ef 00 00 00 00 00 67 67 00 00 67 00 67 00 00 00 ef 67 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00 67 00 00 67 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 67 ef 44 00 00 00 00 00 00 00 00 00 00 00 00 67 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ef 00 00 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 67 00 c7 00 00 ef ef 00 00 00 00 00 00 00 ef ef 00 00 00 00 ef 00 00 67 00 00 00 00 00 00 00 00 48 00 67 ef ef ef ef 00 00 00 00 00 00 00 00 00 00 00 00 00 67 67 00 00 00 00 00 00 00 67 00 67 ef ef 00 00 00 00 00 00 00 00 00 67 00 00 67 00 00 67 00 00 67 00 00 67 00 00 67 ef ef 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ef 00 00 67 00 67 00 00 67 00 00 00 00 00 00 00 00 67 00 00 ef 00 00 00 00 00 67 ef ef 00 00 00 67 00 00 00 00 00 67 ef 00 00 67 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 67 00 00 00 00 00 00 00 67 00 00 ef 00 00 ef 00 00 00 67 ef 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ef 00 00 00 00 00 00 00 00 00 00 67 ef 67 00 48 00 00 67 ef 00 00 00 00 00 00 00 00 00 00 00 00 00 67 ef 00 00 00 00 00 67 00 00 67 ef ef ef ef 00 00 67 ef 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 ef 00 00 00 00 00 00 00 00 00 00 ef 00 00 00 00 00 00 00 00 00 00 00 67 00 00 00 00 00 00 ef 00 00 00 00 00 00 00 00 00 00 00 67 ef 00 00 00 00 00 00 67 00 ef 00 00 00 00 00 00 00 00 00 67 00 00 67 ef 00 00 00 00 67 ef 00 00 67 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 67 67 ef 00 00 00 00 00 00 00 00 00 00 00 00 00 00 67 ef ef 00 00 00 00 00 67 00 00 00 00 00 67 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 ef 00 00 00 00 00 00 20 00 00 00 00 00 00 00 00 00 00 00 67 00 67 ef 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 67 00 67 00 00 00 67 00 67 ef ef ef f0 00 00 67 46 67 00 00 00 00 00 00 00 00 67 ef 67 00 00 00 00 00 00 00 00 00 00 ef 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ef 00 00 00 00 00 00 00 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 67 00 00 00 67 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ef 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
