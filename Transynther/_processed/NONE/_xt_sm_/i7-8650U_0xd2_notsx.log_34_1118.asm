.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1b608, %rdx
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rax
movq %rax, (%rdx)
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_WC_ht+0x8ec8, %rdi
nop
xor $7764, %r15
mov (%rdi), %edx
nop
add $2108, %rdi
lea addresses_WC_ht+0xf248, %r15
nop
nop
dec %r10
mov (%r15), %rbx
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_WC_ht+0x15f48, %rsi
lea addresses_WC_ht+0x14a48, %rdi
nop
sub %rbp, %rbp
mov $13, %rcx
rep movsl
nop
nop
nop
xor $2182, %r15
lea addresses_normal_ht+0x1e728, %rsi
lea addresses_WC_ht+0x7848, %rdi
nop
nop
cmp $14578, %r15
mov $18, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $17918, %rsi
lea addresses_WC_ht+0xad70, %rbp
nop
nop
nop
nop
and $3621, %rax
mov (%rbp), %rbx
nop
and $12133, %rcx
lea addresses_UC_ht+0x1e648, %rsi
nop
nop
add %rdx, %rdx
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r15
nop
nop
nop
and %rdx, %rdx
lea addresses_normal_ht+0x1ca48, %rbp
nop
nop
nop
nop
nop
cmp $3696, %rbx
mov $0x6162636465666768, %rax
movq %rax, (%rbp)
nop
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0xd6a0, %rax
nop
nop
nop
nop
add $6992, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x15148, %rdi
nop
nop
sub $58441, %rdx
movb (%rdi), %r10b
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x19b28, %rsi
lea addresses_A_ht+0x15a48, %rdi
nop
nop
add $1238, %rax
mov $17, %rcx
rep movsb
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x9a48, %rdx
inc %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rdx)
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0xc348, %rsi
lea addresses_WT_ht+0x3248, %rdi
nop
add $24341, %rdx
mov $116, %rcx
rep movsb
nop
xor %rbp, %rbp
lea addresses_UC_ht+0x138d4, %r10
nop
nop
nop
xor $52771, %rcx
movl $0x61626364, (%r10)
nop
nop
nop
nop
and %r15, %r15
lea addresses_WC_ht+0x5448, %rsi
lea addresses_D_ht+0x19048, %rdi
clflush (%rdi)
add %r15, %r15
mov $112, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x11748, %rsi
lea addresses_WC+0x15d48, %rdi
clflush (%rsi)
nop
nop
xor $49153, %rbp
mov $86, %rcx
rep movsq
nop
nop
nop
xor %r11, %r11

// Store
mov $0x248, %r10
clflush (%r10)
nop
nop
nop
nop
nop
sub %rsi, %rsi
movl $0x51525354, (%r10)
nop
and $20821, %r10

// Store
lea addresses_WT+0xd248, %r10
and %r8, %r8
movw $0x5152, (%r10)
nop
inc %rdi

// Store
lea addresses_A+0x1f248, %rdi
nop
nop
nop
nop
add $14633, %rbp
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_D+0xee48, %r10
nop
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r10)
nop
nop
nop
cmp $61122, %rbp

// Store
lea addresses_A+0x11d9c, %rdi
clflush (%rdi)
nop
nop
nop
and $31343, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
xor $58164, %rbp

// Store
lea addresses_WT+0xc248, %rdi
nop
and $18542, %rbp
movb $0x51, (%rdi)
nop
nop
nop
nop
xor $40208, %r8

// Store
lea addresses_WT+0x166c8, %rsi
nop
nop
nop
nop
and $24336, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
nop
nop
inc %rcx

// Store
lea addresses_normal+0x15127, %r10
nop
and %r8, %r8
movw $0x5152, (%r10)
nop
nop
and %r10, %r10

// Faulty Load
lea addresses_A+0x1f248, %rbp
add %rcx, %rcx
mov (%rbp), %r10d
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'51': 34}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
