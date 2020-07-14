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
lea addresses_WT_ht+0x22be, %rsi
lea addresses_WC_ht+0xa0be, %rdi
nop
nop
xor $27292, %r15
mov $36, %rcx
rep movsl
nop
nop
add %r10, %r10
lea addresses_UC_ht+0xac6c, %rsi
lea addresses_normal_ht+0xf6be, %rdi
nop
nop
nop
xor %r11, %r11
mov $0, %rcx
rep movsq
nop
add $11368, %r10
lea addresses_A_ht+0x1a0be, %rsi
lea addresses_UC_ht+0x553e, %rdi
clflush (%rsi)
nop
nop
nop
dec %r14
mov $108, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $52215, %rcx
lea addresses_A_ht+0x5c7e, %r15
nop
xor %rsi, %rsi
mov (%r15), %r14d
nop
nop
and %r15, %r15
lea addresses_WC_ht+0x500e, %r14
nop
sub $34631, %rsi
movb (%r14), %r11b
nop
nop
cmp $23071, %rcx
lea addresses_A_ht+0xf0be, %rsi
lea addresses_WC_ht+0x1cd8e, %rdi
nop
sub $11781, %rbp
mov $72, %rcx
rep movsq
add $32065, %rbp
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
push %r13
push %r8
push %r9
push %rax
push %rdx
push %rsi

// Store
mov $0xabe, %rax
nop
nop
cmp %rdx, %rdx
movb $0x51, (%rax)
nop
nop
sub $45892, %r13

// Faulty Load
lea addresses_UC+0x188be, %rsi
nop
nop
nop
nop
sub $60509, %r8
mov (%rsi), %r13
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'00': 772, 'ff': 36, '02': 27, '45': 28, '21': 10, '30': 3, '04': 1, '48': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 02 00 00 00 00 ff 00 00 02 00 00 00 ff 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 02 00 00 00 00 00 00 45 00 00 00 ff 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 02 00 00 00 00 45 02 00 00 00 00 ff 00 00 00 00 00 00 ff 00 00 00 00 ff 00 00 00 00 00 00 00 ff 45 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 02 00 02 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 02 00 00 00 ff 00 00 00 45 ff 00 00 00 00 00 00 00 00 00 45 00 00 ff 00 00 00 00 00 00 00 00 02 ff 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 02 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 ff 00 00 00 00 ff 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 02 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 21 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 02 02 00 00 00 ff 00 00 00 00 ff 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 02 00 00 00 00 30 00 45 00 00 45 30 02 00 00 00 00 00 00 00 00 00 00 02 45 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 ff 00 00 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff ff 00 00 00 02 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 ff 45 00 00 00 00 00 00 04 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 21 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 21 00 00 00 00 00 00 00 00 00 00 21 00 00 00 00 00 00 00 00 21 00 00 00 00 00 00 21 00 00 21 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 21 00 00 00 00 00 00 00 00 00 00 00 00 00 21 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 ff 21 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 48 45 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 45 02 00 00 00 00 00 02 00 00 00 00 45
*/
