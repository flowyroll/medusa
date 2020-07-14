.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x13c1c, %rax
nop
nop
nop
xor %r11, %r11
movb $0x61, (%rax)
nop
nop
nop
nop
add %r13, %r13
lea addresses_UC_ht+0x18adc, %rbp
nop
nop
add %r8, %r8
mov $0x6162636465666768, %r15
movq %r15, %xmm5
and $0xffffffffffffffc0, %rbp
vmovntdq %ymm5, (%rbp)
nop
nop
nop
nop
xor %r8, %r8
lea addresses_D_ht+0x1571c, %rbp
cmp %r10, %r10
movl $0x61626364, (%rbp)
add $55336, %rbp
lea addresses_A_ht+0xa4bc, %rsi
lea addresses_A_ht+0x1a95c, %rdi
nop
nop
nop
nop
nop
sub $60123, %r15
mov $22, %rcx
rep movsl
nop
nop
inc %rbp
lea addresses_WT_ht+0xca1c, %r11
nop
nop
nop
nop
dec %r13
movw $0x6162, (%r11)
sub %r8, %r8
lea addresses_D_ht+0x1aa9c, %rbp
nop
nop
nop
nop
nop
add $30242, %r8
movb (%rbp), %cl
nop
add %rdi, %rdi
lea addresses_WC_ht+0x133ba, %rsi
lea addresses_D_ht+0x1b41c, %rdi
sub %r10, %r10
mov $108, %rcx
rep movsl
nop
nop
nop
nop
inc %r10
lea addresses_WT_ht+0x1e6dc, %rsi
nop
nop
cmp $21856, %rax
movw $0x6162, (%rsi)
nop
nop
nop
nop
sub $47902, %rbp
lea addresses_normal_ht+0x1d714, %rax
nop
nop
add $57718, %r8
movb $0x61, (%rax)
nop
xor %r13, %r13
lea addresses_normal_ht+0x251c, %rsi
nop
nop
and %rax, %rax
movl $0x61626364, (%rsi)
nop
nop
nop
nop
add $28274, %r15
lea addresses_WT_ht+0x1bd4c, %rcx
sub %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
sub $45858, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_A+0x17b1c, %rbp
nop
xor %r11, %r11
movl $0x51525354, (%rbp)
nop
nop
nop
nop
dec %rdx

// Store
lea addresses_A+0x1671c, %rdi
nop
nop
nop
add $33383, %r15
movw $0x5152, (%rdi)
nop
nop
inc %rbp

// Store
lea addresses_A+0x1671c, %r15
nop
nop
dec %r11
movw $0x5152, (%r15)
nop
nop
nop
nop
nop
xor $4928, %rbp

// Store
lea addresses_A+0x1671c, %rcx
nop
nop
nop
nop
and %rdx, %rdx
movl $0x51525354, (%rcx)
nop
xor $40413, %rbp

// Store
lea addresses_normal+0x11f1c, %rdx
add %rbp, %rbp
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_PSE+0x1ff1c, %rcx
nop
nop
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
nop
add $42785, %rcx

// Faulty Load
lea addresses_A+0x1671c, %rcx
nop
nop
nop
sub $36732, %r10
movb (%rcx), %r15b
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'54': 77}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
