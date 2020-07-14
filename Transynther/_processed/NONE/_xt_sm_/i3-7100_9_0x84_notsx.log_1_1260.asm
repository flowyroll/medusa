.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x412b, %r15
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %r14
movq %r14, (%r15)
nop
nop
nop
add $47935, %r8
lea addresses_normal_ht+0x153e4, %rsi
lea addresses_WT_ht+0x727, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $80, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_A_ht+0x8857, %r15
nop
nop
dec %rdi
mov (%r15), %r11w
nop
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0x1ce17, %rsi
lea addresses_UC_ht+0x1427, %rdi
clflush (%rdi)
nop
add $41785, %r8
mov $23, %rcx
rep movsl
sub $27866, %r14
lea addresses_normal_ht+0x11008, %rsi
lea addresses_D_ht+0x1b5a, %rdi
nop
nop
nop
sub $20527, %r8
mov $74, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_D_ht+0x9627, %rbp
nop
nop
nop
nop
nop
cmp $63361, %rsi
movb $0x61, (%rbp)
nop
nop
nop
nop
sub $49555, %r15
lea addresses_D_ht+0x1efa7, %rsi
lea addresses_UC_ht+0x19a27, %rdi
nop
nop
nop
nop
add $9625, %r15
mov $98, %rcx
rep movsw
nop
nop
nop
xor $60328, %r11
lea addresses_A_ht+0x17daf, %rsi
nop
nop
nop
nop
nop
cmp $37316, %r14
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
xor $49862, %r11
lea addresses_A_ht+0x1003f, %r15
add %rsi, %rsi
movb $0x61, (%r15)
nop
nop
add $7232, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rbp
push %rdi

// Store
lea addresses_D+0x8a17, %r14
nop
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovups %ymm2, (%r14)
nop
nop
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_UC+0x1f1ff, %rdi
nop
nop
inc %rbp
movb $0x51, (%rdi)

// Exception!!!
nop
nop
mov (0), %rdi
nop
sub $8346, %r13

// Store
lea addresses_A+0x1dda3, %rdi
nop
inc %r15
mov $0x5152535455565758, %rbp
movq %rbp, (%rdi)
nop
nop
nop
sub $49741, %r11

// Load
lea addresses_D+0x166d4, %rbp
clflush (%rbp)
nop
nop
inc %r11
mov (%rbp), %r13
nop
dec %r14

// Store
lea addresses_WT+0x2557, %r14
nop
nop
nop
nop
xor $50496, %r13
movb $0x51, (%r14)
cmp %rdi, %rdi

// Store
lea addresses_A+0x1de27, %rbp
nop
add %r14, %r14
movl $0x51525354, (%rbp)
nop
dec %r11

// Faulty Load
lea addresses_A+0x1de27, %r15
cmp %r13, %r13
mov (%r15), %r14w
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rdi
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'54': 1}
54
*/
