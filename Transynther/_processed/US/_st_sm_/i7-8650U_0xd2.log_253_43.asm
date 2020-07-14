.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x5967, %rcx
nop
nop
nop
nop
nop
add $56637, %rbp
movb $0x61, (%rcx)
nop
and $12161, %r14
lea addresses_WT_ht+0xc56, %r10
nop
nop
nop
cmp %r8, %r8
mov (%r10), %ax
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x1e257, %r10
nop
nop
nop
nop
nop
add %rax, %rax
mov $0x6162636465666768, %r14
movq %r14, %xmm2
vmovups %ymm2, (%r10)
nop
xor $10243, %r10
lea addresses_D_ht+0x1efe7, %r10
nop
nop
nop
nop
mfence
mov $0x6162636465666768, %rbp
movq %rbp, (%r10)
nop
add %r14, %r14
lea addresses_A_ht+0xac77, %r8
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %rdx
movq %rdx, (%r8)
nop
nop
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0xf1e7, %rsi
lea addresses_UC_ht+0x137e7, %rdi
nop
and %r8, %r8
mov $50, %rcx
rep movsq
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x5be7, %r10
nop
sub $18493, %rax
movw $0x6162, (%r10)
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0xad97, %rax
nop
inc %r14
mov (%rax), %r10d
sub %rax, %rax
lea addresses_WT_ht+0x1eff7, %rsi
lea addresses_UC_ht+0xbfe7, %rdi
and %r8, %r8
mov $55, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $54243, %r8
lea addresses_WC_ht+0x1efe7, %rsi
lea addresses_A_ht+0xfc7, %rdi
add %rax, %rax
mov $60, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $26834, %rdi
lea addresses_UC_ht+0x13def, %rsi
nop
and $14668, %r14
movups (%rsi), %xmm5
vpextrq $0, %xmm5, %r8
nop
nop
nop
nop
nop
cmp $60735, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rcx

// Store
mov $0xe47, %r10
cmp %rcx, %rcx
movw $0x5152, (%r10)
sub %r15, %r15

// Load
lea addresses_PSE+0x1fde7, %r15
nop
nop
nop
sub $30596, %r9
mov (%r15), %rbp
and $45346, %r15

// Store
lea addresses_normal+0x153e7, %r8
nop
nop
nop
inc %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r8)
nop
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_D+0x92b7, %rcx
inc %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
and %r8, %r8

// Store
lea addresses_WC+0x10c87, %r8
nop
nop
nop
nop
dec %r10
mov $0x5152535455565758, %r15
movq %r15, %xmm5
vmovups %ymm5, (%r8)
nop
nop
nop
xor %r15, %r15

// Load
lea addresses_WC+0x2177, %rbp
nop
nop
nop
add %r10, %r10
movups (%rbp), %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
add $1378, %r8

// Load
lea addresses_D+0x8fc7, %rbp
nop
nop
nop
nop
dec %rax
mov (%rbp), %r15
nop
nop
nop
add $45869, %r8

// Store
lea addresses_US+0x97e7, %r8
nop
sub %rbp, %rbp
movl $0x51525354, (%r8)
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_WT+0x5157, %r10
nop
nop
inc %r9
movw $0x5152, (%r10)
nop
nop
add %rcx, %rcx

// Store
lea addresses_A+0x1c4b4, %rax
dec %r9
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
xor $47325, %r9

// Faulty Load
lea addresses_US+0x97e7, %rcx
nop
nop
sub $61822, %rbp
mov (%rcx), %r10
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'54': 253}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
