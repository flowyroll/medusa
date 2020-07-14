.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xa5fb, %r15
clflush (%r15)
nop
nop
nop
and %rdi, %rdi
movw $0x6162, (%r15)
nop
nop
nop
nop
sub $3510, %r10
lea addresses_WC_ht+0x15deb, %r12
nop
sub %rdi, %rdi
movw $0x6162, (%r12)
nop
nop
nop
inc %r15
lea addresses_WT_ht+0xe885, %rsi
lea addresses_normal_ht+0x1b1fb, %rdi
nop
nop
nop
nop
sub $28388, %r8
mov $45, %rcx
rep movsb
nop
xor $12427, %r15
lea addresses_UC_ht+0x52fb, %rsi
lea addresses_WC_ht+0x7ffb, %rdi
nop
nop
nop
sub $56674, %r13
mov $41, %rcx
rep movsw
nop
nop
nop
cmp %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %rbp
push %rbx
push %rcx
push %rdi

// Faulty Load
mov $0x1fb, %rdi
nop
nop
lfence
mov (%rdi), %rbp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'e0': 35, 'ff': 1}
ff e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0
*/
