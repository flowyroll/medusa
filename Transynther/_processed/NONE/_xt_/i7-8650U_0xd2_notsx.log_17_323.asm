.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x18779, %rsi
lea addresses_WC_ht+0x11b19, %rdi
nop
add %r12, %r12
mov $83, %rcx
rep movsq
nop
nop
add %r8, %r8
lea addresses_D_ht+0x1c517, %r13
add $36361, %rdi
movb (%r13), %r12b
and $11217, %rdi
lea addresses_D_ht+0x16045, %r12
nop
nop
nop
nop
nop
sub %r13, %r13
mov (%r12), %r8
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0xe411, %rsi
lea addresses_WC_ht+0x10a79, %rdi
sub $30321, %r10
mov $96, %rcx
rep movsw
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x12a19, %r8
nop
nop
and %r13, %r13
mov (%r8), %rdi
nop
nop
sub $63640, %r10
lea addresses_A_ht+0x3499, %rcx
nop
nop
cmp $16398, %r13
mov $0x6162636465666768, %r12
movq %r12, (%rcx)
nop
nop
nop
nop
xor $53276, %rdi
lea addresses_WT_ht+0x4cf9, %rsi
lea addresses_D_ht+0x7f19, %rdi
clflush (%rdi)
nop
nop
nop
inc %rdx
mov $123, %rcx
rep movsw
nop
dec %r10
lea addresses_D_ht+0xff97, %rsi
lea addresses_UC_ht+0x1ac5, %rdi
nop
nop
nop
xor $64329, %r12
mov $117, %rcx
rep movsl
nop
cmp $37080, %rcx
lea addresses_D_ht+0x98f6, %rsi
lea addresses_A_ht+0x16569, %rdi
add $48787, %r10
mov $55, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0xb19, %r10
nop
nop
nop
nop
cmp %r8, %r8
movw $0x6162, (%r10)
nop
inc %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x1ac19, %r14
nop
xor %rsi, %rsi
movb $0x51, (%r14)
nop
nop
lfence

// Store
lea addresses_normal+0x8f4f, %rax
nop
nop
nop
sub $46143, %r12
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rax)
nop
nop
nop
add $14709, %rax

// Store
lea addresses_A+0x6629, %r12
dec %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r12)
nop
nop
nop
add %rsi, %rsi

// REPMOV
lea addresses_D+0xaf19, %rsi
mov $0x919, %rdi
nop
nop
nop
nop
xor %rbp, %rbp
mov $5, %rcx
rep movsl
sub %rdi, %rdi

// Store
lea addresses_WT+0x1e719, %r14
nop
nop
nop
nop
cmp $58870, %r12
movb $0x51, (%r14)
nop
nop
nop
cmp $21616, %r10

// Load
lea addresses_D+0x1bac9, %rbp
dec %rdi
movb (%rbp), %r10b
nop
nop
nop
nop
nop
add $38719, %rsi

// Store
lea addresses_normal+0x14d99, %rsi
nop
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
movups %xmm5, (%rsi)
cmp $64909, %r10

// Store
lea addresses_PSE+0xc519, %rcx
nop
nop
nop
nop
sub $29119, %r10
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
sub %rbp, %rbp

// Faulty Load
lea addresses_D+0x1719, %rcx
nop
and $16109, %rbp
movb (%rcx), %r14b
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_P', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'36': 17}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
