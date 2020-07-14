.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x8e7, %rbp
nop
nop
xor %r8, %r8
movb $0x61, (%rbp)
cmp $46711, %rbx
lea addresses_WT_ht+0x48e7, %r12
xor %r13, %r13
mov (%r12), %r11d
nop
nop
nop
nop
nop
and $65308, %r8
lea addresses_A_ht+0x4c1f, %r12
nop
nop
nop
nop
add $10321, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, (%r12)
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_WC_ht+0x1b067, %rsi
lea addresses_A_ht+0x71e7, %rdi
clflush (%rsi)
sub %r8, %r8
mov $86, %rcx
rep movsw
nop
dec %r12
lea addresses_A_ht+0x18e7, %rbp
and %rdi, %rdi
mov (%rbp), %r13d
nop
nop
nop
nop
add $64895, %rbp
lea addresses_WT_ht+0x18767, %rbx
nop
nop
nop
nop
nop
xor $24524, %rsi
mov (%rbx), %rdi
nop
nop
nop
nop
sub %r8, %r8
lea addresses_A_ht+0xd78f, %r11
cmp %rbp, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r11)
nop
nop
nop
nop
sub $257, %rdi
lea addresses_WC_ht+0x198e7, %rdx
nop
nop
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %r13
movq %r13, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
nop
and $61465, %rdx
lea addresses_D_ht+0x1298a, %r8
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r8)
nop
nop
nop
nop
and %r11, %r11
lea addresses_A_ht+0x88e7, %rdx
add %r8, %r8
mov (%rdx), %ebp
nop
nop
nop
xor %rbx, %rbx
lea addresses_A_ht+0x134e7, %rsi
lea addresses_WC_ht+0xb887, %rdi
nop
and $43527, %r8
mov $75, %rcx
rep movsw
nop
nop
add %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x377, %rsi
nop
nop
nop
nop
nop
sub $44589, %r12
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
cmp $40720, %rdx

// Store
lea addresses_WT+0x3d47, %rcx
nop
dec %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
nop
nop
inc %rsi

// Store
lea addresses_PSE+0x108e7, %r15
nop
nop
nop
nop
nop
and $36211, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, (%r15)
add %rdx, %rdx

// Store
lea addresses_D+0x134e7, %rsi
cmp %rcx, %rcx
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
xor $44873, %rdi

// Store
lea addresses_RW+0x90e7, %rdi
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
nop
and $18196, %rdi

// Store
lea addresses_RW+0x195e7, %rcx
nop
nop
nop
nop
nop
sub $29622, %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_UC+0x1e0e7, %r15
nop
nop
and %r12, %r12
movw $0x5152, (%r15)
nop
nop
dec %r12

// Store
lea addresses_UC+0x3e7, %rdi
nop
nop
nop
nop
add %r11, %r11
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
add %r11, %r11

// Store
lea addresses_UC+0x110e7, %r12
nop
and $15769, %rcx
movw $0x5152, (%r12)
nop
nop
nop
nop
add $39907, %r15

// Faulty Load
lea addresses_WC+0x48e7, %rcx
nop
nop
and %r11, %r11
movb (%rcx), %r15b
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
