.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1b9b1, %rsi
lea addresses_UC_ht+0xb1, %rdi
nop
nop
nop
xor %rax, %rax
mov $57, %rcx
rep movsl
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x15ab1, %rsi
lea addresses_WC_ht+0x56b1, %rdi
nop
nop
nop
nop
inc %r14
mov $122, %rcx
rep movsq
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0x15b1e, %r13
sub $63027, %rdx
movb $0x61, (%r13)
add $56126, %rdx
lea addresses_D_ht+0xf07f, %rax
nop
nop
nop
nop
add %rdx, %rdx
mov (%rax), %rdi
and %rdi, %rdi
lea addresses_WT_ht+0x13db5, %rcx
nop
nop
and %r13, %r13
mov (%rcx), %esi
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x1c6a9, %rsi
lea addresses_A_ht+0x10cb1, %rdi
nop
nop
xor $43548, %rdx
mov $114, %rcx
rep movsb
nop
nop
nop
and %r14, %r14
lea addresses_UC_ht+0xa891, %rcx
nop
nop
nop
nop
nop
sub $47812, %rax
movb $0x61, (%rcx)
nop
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0x15ff1, %rax
nop
nop
nop
dec %rdi
movb (%rax), %cl
nop
nop
nop
nop
xor $26612, %rax
lea addresses_normal_ht+0x164b1, %rcx
clflush (%rcx)
nop
nop
nop
and $4578, %rsi
mov (%rcx), %rdi
nop
nop
add %rdx, %rdx
lea addresses_WT_ht+0x10f39, %rsi
lea addresses_normal_ht+0xd241, %rdi
clflush (%rsi)
inc %r15
mov $53, %rcx
rep movsl
sub $105, %r14
lea addresses_WC_ht+0x1b691, %rsi
lea addresses_WT_ht+0xfeb1, %rdi
xor %rax, %rax
mov $106, %rcx
rep movsl
nop
nop
and $38996, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rsi

// Store
mov $0x6704e80000000eb1, %r9
nop
nop
inc %r14
mov $0x5152535455565758, %rsi
movq %rsi, (%r9)
xor $56855, %rbp

// Store
mov $0x7f5, %rbp
nop
nop
nop
nop
xor $10229, %r10
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
cmp %r14, %r14

// Load
lea addresses_normal+0x4c61, %rbx
nop
nop
cmp %r10, %r10
mov (%rbx), %ebp
dec %r10

// Store
lea addresses_PSE+0x18eb1, %rbp
add $1283, %r9
mov $0x5152535455565758, %rsi
movq %rsi, (%rbp)
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_PSE+0x4fc7, %r14
nop
nop
add %r9, %r9
movl $0x51525354, (%r14)

// Exception!!!
nop
mov (0), %r8
add %r9, %r9

// Store
lea addresses_PSE+0x129c5, %r8
dec %rsi
movw $0x5152, (%r8)
nop
sub %rbp, %rbp

// Faulty Load
mov $0x1d8be00000000eb1, %rsi
nop
nop
nop
inc %rbp
movb (%rsi), %r8b
lea oracles, %r9
and $0xff, %r8
shlq $12, %r8
mov (%r9,%r8,1), %r8
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'58': 11, '00': 8}
58 58 00 58 58 58 58 58 00 58 58 00 00 58 00 58 00 00 00
*/
