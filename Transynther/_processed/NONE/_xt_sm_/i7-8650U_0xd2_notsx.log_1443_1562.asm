.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x196bf, %r9
nop
nop
nop
nop
nop
and $59928, %rdx
movl $0x61626364, (%r9)
nop
add $62633, %r11
lea addresses_normal_ht+0x16143, %r11
nop
nop
nop
nop
nop
add %r10, %r10
movw $0x6162, (%r11)
nop
sub %rsi, %rsi
lea addresses_D_ht+0x1b8e7, %rsi
lea addresses_WC_ht+0x9973, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $76, %rcx
rep movsq
nop
and $14087, %rdi
lea addresses_UC_ht+0x37b3, %r9
clflush (%r9)
nop
nop
xor $23311, %rsi
mov (%r9), %di
add %rsi, %rsi
lea addresses_A_ht+0x14a93, %rsi
lea addresses_A_ht+0x154bb, %rdi
nop
and %rbp, %rbp
mov $7, %rcx
rep movsb
nop
nop
nop
nop
xor %r11, %r11
lea addresses_normal_ht+0x5d73, %r9
nop
add %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm3
vmovups %ymm3, (%r9)
nop
nop
sub $33602, %rsi
lea addresses_WC_ht+0x19573, %r11
clflush (%r11)
nop
dec %rdi
and $0xffffffffffffffc0, %r11
movntdqa (%r11), %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0x13153, %r11
nop
nop
nop
nop
nop
add %rbp, %rbp
mov (%r11), %r9d
nop
nop
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0x1965c, %r9
clflush (%r9)
nop
nop
nop
nop
cmp $26167, %rcx
mov (%r9), %ebp
nop
nop
nop
nop
add $27624, %rsi
lea addresses_WT_ht+0x6973, %r11
nop
nop
nop
inc %r10
mov (%r11), %rdx
nop
nop
nop
dec %r11
lea addresses_A_ht+0x87b3, %r10
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, (%r10)
sub $1658, %rcx
lea addresses_WT_ht+0x1bb73, %r10
clflush (%r10)
nop
nop
nop
nop
nop
add %rcx, %rcx
movb $0x61, (%r10)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0xa3eb, %r10
lfence
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
movups %xmm3, (%r10)
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// Load
lea addresses_A+0xf3e7, %rsi
nop
nop
nop
xor $15482, %r13
movb (%rsi), %r14b
nop
nop
nop
inc %r8

// Store
lea addresses_WT+0x7573, %r10
nop
nop
nop
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm7
vmovups %ymm7, (%r10)
and $2586, %r10

// Store
lea addresses_WT+0x7573, %rsi
nop
nop
nop
xor $76, %r13
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
nop
dec %r13

// Store
lea addresses_PSE+0x1b633, %rsi
nop
nop
nop
nop
xor $45335, %r12
mov $0x5152535455565758, %r10
movq %r10, (%rsi)
nop
nop
nop
nop
nop
add $20198, %r10

// REPMOV
lea addresses_UC+0x1eb73, %rsi
lea addresses_PSE+0xef73, %rdi
nop
nop
and $10253, %r12
mov $78, %rcx
rep movsw
nop
nop
and %r10, %r10

// Store
lea addresses_A+0xf4dd, %rcx
clflush (%rcx)
dec %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_UC+0x15973, %r8
nop
nop
nop
nop
add $18470, %rdi
movw $0x5152, (%r8)
sub $41407, %r13

// Store
lea addresses_D+0x5973, %r10
nop
xor %r13, %r13
movl $0x51525354, (%r10)
nop
nop
nop
nop
sub %r10, %r10

// Faulty Load
lea addresses_WT+0x7573, %r10
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov (%r10), %r14d
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'58': 1443}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
