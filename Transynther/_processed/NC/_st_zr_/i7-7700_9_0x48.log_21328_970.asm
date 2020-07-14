.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x90d9, %rsi
lea addresses_WT_ht+0x1b244, %rdi
nop
dec %r15
mov $20, %rcx
rep movsq
nop
cmp $3077, %r15
lea addresses_UC_ht+0x2984, %r13
clflush (%r13)
nop
nop
nop
nop
nop
add %r14, %r14
mov (%r13), %r11d
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x4c84, %r13
inc %r14
mov (%r13), %cx
nop
nop
nop
nop
and $34599, %rcx
lea addresses_WC_ht+0x2a44, %rsi
lea addresses_D_ht+0xa144, %rdi
nop
nop
nop
nop
and %rbx, %rbx
mov $4, %rcx
rep movsb
nop
sub $43824, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rdi
push %rsi

// Store
lea addresses_normal+0x17944, %r13
and %rbp, %rbp
movw $0x5152, (%r13)
nop
nop
nop
sub $8943, %r8

// Store
lea addresses_US+0xae44, %r9
add %rdi, %rdi
movw $0x5152, (%r9)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rdi
nop
nop
nop
nop
nop
add %rsi, %rsi

// Load
mov $0x6a9aa80000000554, %r9
nop
cmp $50159, %r12
mov (%r9), %r8d
nop
nop
and %r13, %r13

// Store
lea addresses_A+0x795c, %rbp
nop
nop
and %r12, %r12
movl $0x51525354, (%rbp)

// Exception!!!
nop
mov (0), %rbp
nop
nop
nop
sub %r8, %r8

// Load
lea addresses_UC+0xde44, %rdi
and $33475, %r8
movb (%rdi), %r9b
dec %r8

// Store
lea addresses_RW+0x30c4, %r9
clflush (%r9)
nop
nop
cmp $5288, %rdi
movw $0x5152, (%r9)
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_RW+0x1a244, %r13
nop
nop
nop
nop
nop
add %rbp, %rbp
movl $0x51525354, (%r13)
nop
inc %rdi

// Store
lea addresses_WC+0x19d4c, %r9
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm7
vmovups %ymm7, (%r9)
nop
add %r8, %r8

// Faulty Load
mov $0x602bf0000000244, %r12
nop
nop
cmp $30044, %rsi
movb (%r12), %r9b
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rsi
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'54': 15191, '00': 6137}
54 00 00 00 54 00 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 00 00 54 54 00 54 54 00 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 00 00 54 54 00 54 54 54 00 00 54 54 54 54 00 54 00 00 00 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 00 54 00 00 00 00 54 54 00 54 54 54 54 54 54 54 00 54 00 54 00 54 54 54 54 54 00 54 54 00 00 00 00 00 54 54 54 00 54 54 54 54 54 54 54 54 00 00 54 54 54 00 54 00 54 00 54 54 54 54 54 00 54 54 54 00 54 54 54 54 54 00 54 00 54 54 54 54 54 00 54 00 54 54 54 00 54 00 00 54 54 00 54 00 54 54 54 00 54 00 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 00 54 00 00 54 54 54 54 54 54 00 00 54 54 00 54 54 00 00 54 54 54 00 00 00 00 00 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 54 00 54 54 54 54 54 54 54 00 54 00 54 54 54 00 00 00 00 54 00 54 54 54 54 54 54 00 54 54 54 00 00 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 00 54 54 00 54 54 54 00 54 54 54 00 54 00 54 54 00 54 00 00 00 54 00 00 00 54 54 54 54 54 00 00 54 00 54 54 54 00 54 00 00 54 00 00 00 00 00 54 54 54 54 54 00 00 54 54 54 00 00 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 00 00 54 00 54 54 00 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 00 54 54 00 00 54 00 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 00 00 00 54 54 00 00 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 00 00 54 54 54 54 54 54 54 00 00 54 54 00 00 54 00 54 00 00 00 54 00 00 54 54 54 00 54 54 54 54 00 54 00 00 00 54 54 54 54 54 54 54 00 54 00 00 54 54 00 54 54 00 54 54 54 54 54 54 54 54 00 54 54 00 00 00 54 00 54 00 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 00 00 00 00 54 00 54 54 54 54 54 54 54 00 00 54 00 54 00 54 00 00 54 54 54 00 54 54 00 54 54 00 54 54 54 54 00 00 54 54 54 54 54 54 00 00 54 00 54 54 54 00 54 54 00 54 54 00 54 54 54 54 54 00 54 54 00 54 54 54 54 54 00 54 54 54 54 00 00 00 00 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 00 00 54 54 54 54 54 00 00 54 54 54 00 54 54 00 00 54 00 54 54 54 54 54 00 00 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 00 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 00 54 54 54 54 54 54 54 00 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 00 54 54 00 54 54 54 54 54 00 54 54 54 54 00 54 00 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 00 00 00 54 00 54 54 54 54 00 54 54 54 54 54 00 00 54 00 00 54 54 54 54 00 54 00 54 00 00 54 00 54 00 54 00 54 00 00 54 54 54 54 00 54 54 00 54 54 54 00 00 54 54 00 00 00 00 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 00 54 54 54 54 54 54 54 54 00 54 00 00 00 54 54 54 00 00 00 54 54 00 54 54 00 54 54 54 54 00 00 00 54 54 00 00
*/
