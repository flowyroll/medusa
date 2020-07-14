.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xbf40, %r14
nop
nop
add %r15, %r15
mov (%r14), %ebx
nop
sub %r8, %r8
lea addresses_WT_ht+0x6f40, %rdx
nop
nop
add $15466, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm0
vmovups %ymm0, (%rdx)
nop
nop
inc %r15
lea addresses_WC_ht+0x11140, %r8
dec %r9
movw $0x6162, (%r8)
nop
nop
nop
and $41807, %r14
lea addresses_UC_ht+0x2560, %rsi
lea addresses_UC_ht+0x19e40, %rdi
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $99, %rcx
rep movsw
nop
sub %rbx, %rbx
lea addresses_WC_ht+0x146b0, %rsi
lea addresses_normal_ht+0x1340, %rdi
nop
nop
nop
add $13861, %rbx
mov $107, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_D_ht+0x19b60, %r8
nop
nop
nop
dec %rdx
movups (%r8), %xmm3
vpextrq $0, %xmm3, %rbx
nop
nop
nop
nop
nop
cmp $36923, %rdx
lea addresses_UC_ht+0x2de0, %rsi
lea addresses_WC_ht+0x7cb0, %rdi
nop
nop
cmp $62063, %r8
mov $117, %rcx
rep movsl
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x1b680, %rdx
add %r14, %r14
mov $0x6162636465666768, %r8
movq %r8, %xmm1
vmovups %ymm1, (%rdx)
nop
inc %rdx
lea addresses_D_ht+0xf090, %rsi
lea addresses_UC_ht+0x103c2, %rdi
cmp %rbx, %rbx
mov $101, %rcx
rep movsw
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x1140, %r8
xor $57729, %rsi
mov (%r8), %bx
nop
nop
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// Load
lea addresses_WC+0x6b40, %r12
nop
nop
nop
nop
nop
xor %r11, %r11
movb (%r12), %r13b
nop
nop
nop
nop
nop
dec %r13

// Store
lea addresses_UC+0x9f40, %r8
cmp $64047, %r15
movl $0x51525354, (%r8)
inc %r8

// REPMOV
lea addresses_PSE+0x13740, %rsi
lea addresses_D+0xdc40, %rdi
nop
nop
and %r8, %r8
mov $125, %rcx
rep movsl
nop
nop
lfence

// Store
lea addresses_PSE+0x13340, %rcx
inc %r13
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_RW+0x5430, %r13
nop
cmp $37116, %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%r13)
xor $46754, %rsi

// Store
lea addresses_US+0x12ee0, %rcx
and %r12, %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%rcx)

// Exception!!!
nop
nop
nop
nop
mov (0), %r11
nop
nop
nop
nop
sub $929, %r11

// Store
lea addresses_A+0x4b60, %rdi
nop
add %rsi, %rsi
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
add $37190, %rdi

// Store
lea addresses_WT+0x1b540, %r15
xor $34020, %r8
movw $0x5152, (%r15)
cmp $22161, %r15

// Store
lea addresses_RW+0x15f40, %r15
nop
cmp %rcx, %rcx
movb $0x51, (%r15)
xor %r13, %r13

// Load
lea addresses_WC+0x1540, %rbp
nop
nop
nop
nop
nop
xor $56499, %r12
movb (%rbp), %r11b

// Exception!!!
nop
nop
mov (0), %rsi
nop
nop
nop
dec %rsi

// Store
mov $0x1fb8d50000000740, %r15
nop
sub $6759, %rsi
movw $0x5152, (%r15)
nop
nop
nop
add $35005, %r15

// Faulty Load
mov $0x43e67d0000000740, %rcx
nop
nop
nop
nop
cmp $36268, %r8
movb (%rcx), %r13b
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 9, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 4796, '52': 17033}
52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 00 52 00 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 00 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 00 00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 00 52 52 52 52 00 52 52 52 00 52 00 52 52 52 52 52 52 52 00 52 52 52 52 00 52 52 00 00 00 52 52 52 52 52 52 52 52 00 52 00 52 52 52 00 52 52 52 52 52 52 00 52 52 52 00 52 52 00 52 52 00 52 52 52 00 52 00 52 00 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 00 52 52 52 00 52 00 52 52 52 52 52 52 52 00 52 00 52 00 52 52 52 52 00 52 52 00 52 52 00 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 00 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 00 00 00 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 52 00 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 00 52 00 52 00 52 52 52 52 00 52 52 00 52 00 52 52 52 52 52 00 52 00 52 00 00 52 00 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 00 00 52 52 52 52 52 52 52 00 00 00 52 52 52 00 52 52 00 52 00 00 00 00 52 52 00 52 52 52 00 52 52 52 52 52 00 52 52 00 52 52 52 52 00 00 00 52 52 00 52 52 00 00 00 52 00 52 52 52 52 52 00 52 00 52 52 52 00 52 52 00 00 00 52 00 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 00 52 52 52 52 00 52 52 00 00 52 52 00 00 52 52 52 52 52 52 00 52 52 00 00 00 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 00 00 52 00 00 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 00 00 52 52 52 52 52 00 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 00 00 52 00 52 00 52 00 52 52 52 52 00 52 52 52 52 00 52 00 52 52 52 52 52 00 00 52 00 52 52 00 52 52 52 52 52 00 00 52 00 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 00 52 52 52 00 52 52 52 00 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 00 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 00 52 52 00 52 52 52 52 00 52 52 52 52 52 52 00 52 00 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 00 00 52 52 00 52 00 52 52 52 52 00 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 00 52 00 52 52 52 52 52 52 00 52 00 52 52 00 00 52 52 00 52 00 00 00 00 52 00 52 52 00 52 52 52 52 00 52 00 52 00 52 52 52 52 52 00 00
*/
