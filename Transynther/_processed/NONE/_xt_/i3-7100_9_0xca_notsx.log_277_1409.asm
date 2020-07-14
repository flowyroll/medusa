.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x7e8f, %rax
nop
nop
nop
nop
sub %rbp, %rbp
movb $0x61, (%rax)
nop
and $10278, %r14
lea addresses_normal_ht+0x10b0b, %rbx
nop
nop
cmp $35682, %r14
mov (%rbx), %r11d
nop
dec %rbp
lea addresses_WT_ht+0x158f7, %rsi
lea addresses_A_ht+0x12cff, %rdi
nop
xor %rbx, %rbx
mov $42, %rcx
rep movsl
nop
sub $21560, %r11
lea addresses_WC_ht+0xd0af, %rbp
nop
nop
nop
nop
inc %rcx
mov (%rbp), %r12w
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x18f4f, %rbp
nop
and $62891, %rdi
movw $0x6162, (%rbp)
nop
nop
nop
nop
sub %r14, %r14
lea addresses_D_ht+0x1a2f, %rsi
nop
nop
add $42286, %r12
movb $0x61, (%rsi)
xor %rbp, %rbp
lea addresses_normal_ht+0x1928f, %r14
nop
nop
nop
cmp $19314, %rbp
mov (%r14), %bx
nop
nop
and %r11, %r11
lea addresses_A_ht+0x16e8f, %rdi
nop
nop
nop
nop
xor %rsi, %rsi
mov (%rdi), %ecx
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x1205b, %rdi
nop
nop
nop
inc %rbp
movb (%rdi), %cl
add %rax, %rax
lea addresses_WC_ht+0x6d39, %rax
clflush (%rax)
nop
nop
nop
nop
and %r14, %r14
mov $0x6162636465666768, %r11
movq %r11, %xmm0
movups %xmm0, (%rax)
nop
nop
nop
add $42475, %r14
lea addresses_WC_ht+0x570f, %r11
clflush (%r11)
nop
xor %r14, %r14
mov (%r11), %r12d
nop
nop
nop
nop
xor %r12, %r12
lea addresses_D_ht+0x1d20f, %rsi
lea addresses_WT_ht+0x1578f, %rdi
and $8299, %r12
mov $18, %rcx
rep movsw
sub $50122, %r11
lea addresses_D_ht+0x1d08f, %r11
nop
nop
nop
nop
nop
xor $4705, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r11)
nop
nop
nop
nop
nop
add $5777, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// Store
mov $0xa8f, %r14
nop
and %rsi, %rsi
movb $0x51, (%r14)
nop
nop
nop
nop
nop
sub %r11, %r11

// Store
mov $0x18f, %r15
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, (%r15)
nop
nop
nop
dec %rsi

// Store
lea addresses_A+0x195af, %r14
nop
nop
nop
nop
sub %r12, %r12
movw $0x5152, (%r14)
nop
nop
dec %r12

// Store
mov $0x4bf, %r12
nop
nop
inc %r14
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
and $43199, %r15

// Store
lea addresses_UC+0x15487, %rsi
nop
cmp $29859, %r12
movb $0x51, (%rsi)
nop
nop
nop
nop
and %r12, %r12

// Store
lea addresses_UC+0x18b7a, %rsi
nop
nop
nop
nop
sub $63101, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm7
vmovups %ymm7, (%rsi)
nop
add %r14, %r14

// Load
lea addresses_normal+0x1b88f, %rsi
nop
nop
and %r12, %r12
mov (%rsi), %r11w
xor %rsi, %rsi

// Faulty Load
lea addresses_PSE+0x2e8f, %rsi
nop
nop
cmp %r12, %r12
movb (%rsi), %r15b
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_P', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'33': 277}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
