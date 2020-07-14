.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rax
lea addresses_D_ht+0xb77f, %r10
nop
nop
nop
nop
nop
dec %r12
movb $0x61, (%r10)
nop
nop
nop
nop
add %r15, %r15
lea addresses_A_ht+0x1b07f, %r11
nop
nop
nop
and %r15, %r15
movb (%r11), %al
nop
nop
nop
nop
cmp %rax, %rax
pop %rax
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x19c9f, %rbp
nop
nop
nop
nop
and $64533, %r13
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_UC+0x13dff, %rax
nop
nop
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %r13
movq %r13, (%rax)
nop
nop
nop
nop
sub %rbp, %rbp

// REPMOV
lea addresses_D+0x8e7f, %rsi
lea addresses_A+0xa87f, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %rbp
mov $80, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r8, %r8

// Faulty Load
lea addresses_US+0xfa7f, %rbp
xor %rcx, %rcx
mov (%rbp), %ax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 9}}
{'63': 3, '45': 1, '36': 5, '02': 1, '00': 6, '3c': 2, 'f0': 3}
00 f0 36 00 36 00 00 63 63 63 3c 36 02 36 45 00 00 f0 36 f0 3c
*/
