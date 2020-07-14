.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x12e34, %rbx
nop
nop
xor %r8, %r8
movw $0x6162, (%rbx)
nop
add %r15, %r15
lea addresses_A_ht+0x137f4, %rdx
nop
nop
nop
dec %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rdx)
sub $18461, %rcx
lea addresses_UC_ht+0x3b34, %rsi
lea addresses_normal_ht+0x11534, %rdi
nop
nop
nop
nop
nop
and $54709, %r8
mov $11, %rcx
rep movsl
nop
nop
dec %r15
lea addresses_UC_ht+0x64b4, %rsi
lea addresses_normal_ht+0x7454, %rdi
add %rdx, %rdx
mov $15, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %rbx
lea addresses_normal_ht+0x77b4, %r15
nop
nop
and $1496, %rbx
mov (%r15), %rdi
nop
nop
nop
nop
nop
xor $30295, %r15
lea addresses_normal_ht+0xe784, %rsi
lea addresses_A_ht+0xbc, %rdi
nop
nop
nop
nop
nop
sub $64269, %rax
mov $12, %rcx
rep movsq
nop
nop
xor $4660, %r15
lea addresses_WC_ht+0xec34, %rsi
lea addresses_UC_ht+0x10a34, %rdi
nop
nop
nop
nop
xor %r8, %r8
mov $79, %rcx
rep movsl
nop
nop
nop
nop
sub $53418, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rbp
push %rdi
push %rdx

// Store
lea addresses_D+0xefb4, %rdi
cmp %r14, %r14
movl $0x51525354, (%rdi)
nop
nop
nop
add $51040, %r9

// Faulty Load
lea addresses_D+0xefb4, %rdi
clflush (%rdi)
nop
nop
xor %rbp, %rbp
movb (%rdi), %dl
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'54': 200}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
