.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x112b0, %rsi
lea addresses_WC_ht+0x17a30, %rdi
clflush (%rdi)
nop
nop
and %r14, %r14
mov $111, %rcx
rep movsq
nop
nop
nop
sub $38868, %r11
lea addresses_WT_ht+0x1a2b0, %rsi
lea addresses_WT_ht+0x1aab0, %rdi
nop
sub $35221, %r11
mov $75, %rcx
rep movsl
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x15481, %rsi
nop
nop
nop
nop
nop
and $23169, %r14
movw $0x6162, (%rsi)
and %r14, %r14
lea addresses_UC_ht+0xca30, %rdi
nop
dec %r15
mov (%rdi), %r11
nop
and %rcx, %rcx
lea addresses_UC_ht+0x18390, %r14
clflush (%r14)
nop
nop
nop
nop
sub $13643, %rsi
movw $0x6162, (%r14)
dec %r14
lea addresses_A_ht+0x32b0, %rsi
lea addresses_A_ht+0xd8b0, %rdi
nop
nop
nop
nop
nop
add $17928, %rbp
mov $9, %rcx
rep movsw
nop
nop
nop
sub %rbp, %rbp
lea addresses_normal_ht+0x10c30, %rsi
lea addresses_UC_ht+0x4cb0, %rdi
nop
nop
nop
nop
sub %r10, %r10
mov $63, %rcx
rep movsw
nop
nop
nop
nop
xor $11297, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rbp
push %rdx

// Store
mov $0x3761e800000005b0, %r14
nop
nop
nop
nop
and $41902, %rdx
movb $0x51, (%r14)
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_PSE+0x16ab0, %rbp
add %r10, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm6
movups %xmm6, (%rbp)
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_WT+0x12b26, %r11
nop
nop
add %r14, %r14
movl $0x51525354, (%r11)
nop
nop
nop
nop
xor %r14, %r14

// Load
lea addresses_US+0x104e8, %r15
nop
dec %r14
mov (%r15), %rbp
nop
nop
nop
nop
dec %r14

// Faulty Load
lea addresses_PSE+0x16ab0, %rdx
nop
and %r15, %r15
movb (%rdx), %r11b
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rdx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'58': 26}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
