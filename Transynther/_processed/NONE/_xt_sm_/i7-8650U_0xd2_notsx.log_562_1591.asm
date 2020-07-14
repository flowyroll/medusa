.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x10505, %r15
xor $286, %r13
mov (%r15), %r12d
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0xc276, %rsi
lea addresses_normal_ht+0x3cdc, %rdi
clflush (%rdi)
nop
cmp $54339, %rax
mov $80, %rcx
rep movsw
nop
nop
nop
nop
dec %rax
lea addresses_WT_ht+0x12c76, %rsi
lea addresses_UC_ht+0xc076, %rdi
nop
add $23965, %r8
mov $13, %rcx
rep movsw
nop
add $21878, %rsi
lea addresses_normal_ht+0x1a1ae, %rdi
nop
nop
nop
sub %rsi, %rsi
mov (%rdi), %r13
nop
nop
nop
nop
add %r13, %r13
lea addresses_UC_ht+0x1d476, %rsi
lea addresses_D_ht+0xda76, %rdi
nop
and %r8, %r8
mov $111, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %rax
lea addresses_WC_ht+0x10196, %r15
nop
nop
nop
nop
nop
add %rsi, %rsi
movb (%r15), %cl
nop
sub %r12, %r12
lea addresses_normal_ht+0x3376, %rsi
lea addresses_normal_ht+0x169d4, %rdi
nop
nop
nop
xor %r12, %r12
mov $6, %rcx
rep movsw
nop
nop
nop
nop
add $1379, %r15
lea addresses_A_ht+0x5876, %r8
nop
nop
nop
nop
nop
and $19949, %rsi
mov (%r8), %cx
nop
nop
nop
nop
add $15924, %r15
lea addresses_A_ht+0x9ec, %rsi
lea addresses_D_ht+0x15a76, %rdi
nop
nop
nop
nop
dec %r15
mov $31, %rcx
rep movsl
nop
nop
nop
nop
add $45874, %r8
lea addresses_D_ht+0xd96, %rsi
clflush (%rsi)
nop
nop
nop
nop
xor %r12, %r12
movb (%rsi), %r13b
cmp %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x129ea, %rbx
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %r10
movq %r10, (%rbx)
nop
nop
add %r10, %r10

// Store
lea addresses_A+0x8a76, %rbx
nop
and %rsi, %rsi
movl $0x51525354, (%rbx)
add %r14, %r14

// Load
lea addresses_A+0x8a76, %rcx
nop
nop
nop
sub %r10, %r10
mov (%rcx), %rbx
nop
xor %r14, %r14

// Store
mov $0x276, %rbx
nop
nop
nop
xor $53185, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
and $24267, %rdi

// Store
lea addresses_D+0x110b6, %rcx
nop
nop
nop
nop
nop
xor $54208, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovups %ymm3, (%rcx)
nop
and %r11, %r11

// Store
mov $0xcf6, %rdi
nop
xor $51595, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
xor $11978, %r10

// Store
lea addresses_US+0x1d076, %rsi
nop
nop
inc %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
nop
sub $34050, %rcx

// Faulty Load
lea addresses_A+0x8a76, %rsi
nop
nop
nop
xor $25730, %r14
mov (%rsi), %ecx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'54': 562}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
