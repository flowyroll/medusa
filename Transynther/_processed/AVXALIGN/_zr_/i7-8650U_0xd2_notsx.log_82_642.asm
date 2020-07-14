.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1a148, %rsi
lea addresses_A_ht+0xe988, %rdi
add $22286, %r13
mov $18, %rcx
rep movsb
nop
nop
nop
xor $29864, %rbp
lea addresses_D_ht+0xe48, %rsi
lea addresses_normal_ht+0x4baa, %rdi
nop
xor $2702, %r15
mov $70, %rcx
rep movsb
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x8fa9, %r13
clflush (%r13)
sub $63796, %r15
movw $0x6162, (%r13)
nop
dec %r15
lea addresses_UC_ht+0x9f48, %rsi
nop
nop
nop
nop
nop
sub %r14, %r14
mov (%rsi), %r13d
add $36867, %rsi
lea addresses_D_ht+0x7f48, %r13
nop
add $17775, %r14
mov (%r13), %ecx
xor $48499, %rbp
lea addresses_WC_ht+0x7e05, %rsi
lea addresses_WT_ht+0x15208, %rdi
nop
nop
nop
add $4093, %rdx
mov $4, %rcx
rep movsb
xor %rdx, %rdx
lea addresses_WC_ht+0x348, %rbp
add $50994, %r15
movl $0x61626364, (%rbp)
nop
nop
sub %r15, %r15
lea addresses_UC_ht+0x181d0, %rdi
nop
nop
and $52357, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
add $7067, %rdi
lea addresses_normal_ht+0x11e88, %rsi
nop
nop
inc %r13
mov (%rsi), %edi
nop
sub %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %r9
push %rax

// Faulty Load
lea addresses_US+0x1cf48, %r13
clflush (%r13)
nop
nop
inc %r10
mov (%r13), %r9w
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rax
pop %r9
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'00': 82}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
