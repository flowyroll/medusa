.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1c4d6, %rsi
nop
nop
nop
and %rbp, %rbp
movb (%rsi), %r15b
nop
nop
nop
nop
cmp $28095, %rbx
lea addresses_A_ht+0xfed6, %r8
dec %rbp
mov (%r8), %ebx
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0xd6, %rdi
nop
nop
nop
dec %rcx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
cmp $41109, %rdi
lea addresses_A_ht+0x19756, %rsi
lea addresses_WT_ht+0x178f4, %rdi
clflush (%rdi)
nop
and %r8, %r8
mov $109, %rcx
rep movsq
add $22933, %r8
lea addresses_UC_ht+0x5cd6, %rsi
lea addresses_WT_ht+0x28d6, %rdi
nop
nop
and %rbp, %rbp
mov $109, %rcx
rep movsq
nop
nop
cmp $22193, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_UC+0x17356, %rcx
clflush (%rcx)
nop
nop
nop
sub $46430, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
add %r15, %r15

// Store
lea addresses_WC+0x1d796, %rdi
nop
nop
nop
sub %rax, %rax
movb $0x51, (%rdi)
nop
nop
cmp %r15, %r15

// Faulty Load
lea addresses_US+0xe0d6, %rbp
nop
nop
nop
and $23500, %rdi
movaps (%rbp), %xmm7
vpextrq $1, %xmm7, %r13
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'00': 679, '45': 79}
00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 00 45 45 45 45 45 00 45 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 45 45 45 45 00 45 45 00 00 00 45 00 45 45 45 45 00 45 00 00 45 45 45 45 00 45 45 00 00 45 45 00 45 00 00 45 45 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 45 45 00 45 45 45 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
