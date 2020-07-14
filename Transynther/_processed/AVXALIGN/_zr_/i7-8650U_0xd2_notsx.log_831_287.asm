.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x2c91, %rdx
xor %rdi, %rdi
movb (%rdx), %al
nop
nop
dec %r12
lea addresses_A_ht+0x1c091, %r9
nop
nop
and %rsi, %rsi
mov (%r9), %eax
nop
sub $41582, %r9
lea addresses_WT_ht+0x7b91, %rsi
lea addresses_A_ht+0xd991, %rdi
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $52, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x1e691, %rdi
nop
nop
nop
xor $20326, %r12
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
and $0xffffffffffffffc0, %rdi
movntdq %xmm4, (%rdi)
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x13791, %r9
nop
nop
nop
dec %rax
movb (%r9), %dl
add %rdi, %rdi
lea addresses_normal_ht+0x16a91, %rdi
nop
inc %rax
movb $0x61, (%rdi)
nop
and %rsi, %rsi
lea addresses_UC_ht+0x1691, %rsi
lea addresses_UC_ht+0x19cf1, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $15, %rcx
rep movsw
sub %rax, %rax
lea addresses_UC_ht+0xd251, %r12
nop
dec %rax
mov (%r12), %esi
cmp %r12, %r12
lea addresses_A_ht+0xb957, %rsi
lea addresses_D_ht+0x1c291, %rdi
add %rax, %rax
mov $77, %rcx
rep movsb
nop
nop
xor $36985, %rdi
lea addresses_D_ht+0xaa91, %rsi
clflush (%rsi)
add $34323, %rax
movups (%rsi), %xmm7
vpextrq $1, %xmm7, %rcx
nop
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r15
push %r8
push %rdi

// Store
lea addresses_PSE+0x9291, %r10
nop
and $28800, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movntdq %xmm5, (%r10)
nop
nop
sub $31249, %r12

// Store
lea addresses_PSE+0x16f11, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $25724, %r13
movl $0x51525354, (%rdi)
nop
inc %r8

// Load
lea addresses_WC+0x2991, %r12
nop
nop
nop
nop
nop
and $54887, %r15
mov (%r12), %r14w
nop
and %rdi, %rdi

// Load
mov $0xa91, %r15
nop
nop
nop
nop
xor $40404, %r8
movb (%r15), %r12b
nop
nop
nop
xor $37428, %r10

// Store
lea addresses_UC+0x8e11, %rdi
nop
sub $14687, %r15
movb $0x51, (%rdi)
dec %r8

// Faulty Load
lea addresses_PSE+0x9291, %r13
nop
nop
xor %r15, %r15
movntdqa (%r13), %xmm3
vpextrq $1, %xmm3, %r12
lea oracles, %r10
and $0xff, %r12
shlq $12, %r12
mov (%r10,%r12,1), %r12
pop %rdi
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'00': 831}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
