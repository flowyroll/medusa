.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x3485, %rsi
lea addresses_A_ht+0x13245, %rdi
clflush (%rsi)
nop
and %r13, %r13
mov $45, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r14
lea addresses_D_ht+0x19885, %rsi
lea addresses_A_ht+0x5c29, %rdi
nop
nop
cmp $23999, %r15
mov $121, %rcx
rep movsl
nop
nop
nop
nop
xor $8789, %r15
lea addresses_UC_ht+0x1de74, %r15
nop
nop
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %r13
movq %r13, %xmm4
and $0xffffffffffffffc0, %r15
movntdq %xmm4, (%r15)
nop
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x3085, %rcx
nop
nop
add $54673, %r14
movups (%rcx), %xmm2
vpextrq $0, %xmm2, %rax
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0x1a80a, %rsi
nop
nop
nop
add $18806, %r14
movb (%rsi), %r13b
nop
nop
nop
add %rax, %rax
lea addresses_A_ht+0x191c5, %rsi
lea addresses_UC_ht+0x9fa1, %rdi
nop
dec %rbx
mov $88, %rcx
rep movsb
nop
nop
nop
nop
dec %rbx
lea addresses_WC_ht+0x11885, %rsi
lea addresses_A_ht+0x11485, %rdi
nop
nop
nop
sub $53982, %rbx
mov $40, %rcx
rep movsb
nop
and %r15, %r15
lea addresses_WC_ht+0x10205, %rsi
lea addresses_UC_ht+0x118cb, %rdi
nop
nop
nop
nop
and %r15, %r15
mov $38, %rcx
rep movsw
nop
nop
nop
xor $59721, %r13
lea addresses_UC_ht+0x1a644, %r14
nop
nop
xor $16136, %rbx
mov (%r14), %rsi
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x19685, %r14
nop
nop
nop
nop
nop
xor %rcx, %rcx
movl $0x61626364, (%r14)
nop
nop
nop
nop
cmp $41325, %rcx
lea addresses_WC_ht+0x1c685, %rdi
nop
nop
and $41834, %rcx
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
xor $2707, %rax
lea addresses_A_ht+0x851d, %rsi
lea addresses_UC_ht+0xb3e5, %rdi
nop
nop
sub $15124, %rax
mov $94, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x7085, %rcx
nop
nop
nop
nop
inc %r15
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
lfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_UC+0xc885, %rbx
nop
nop
nop
nop
nop
and %rbp, %rbp
movl $0x51525354, (%rbx)
nop
nop
cmp $14525, %r15

// Load
lea addresses_PSE+0xa885, %rax
nop
nop
nop
and %r8, %r8
mov (%rax), %rbx
nop
nop
nop
nop
xor $36477, %rdx

// Store
lea addresses_PSE+0x109c5, %rbp
nop
nop
sub $33774, %r8
movw $0x5152, (%rbp)
nop
nop
cmp $60749, %rdx

// Store
lea addresses_normal+0xa075, %rax
nop
nop
nop
nop
and $2751, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
movups %xmm0, (%rax)
nop
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_WC+0x1885, %r15
and $15656, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r15)
nop
xor $36613, %rbp

// Store
mov $0x2653b20000000905, %rbx
add $5322, %rdx
movb $0x51, (%rbx)
cmp %rbp, %rbp

// Faulty Load
lea addresses_UC+0xc885, %rbp
nop
nop
nop
xor $33888, %rbx
mov (%rbp), %r8d
lea oracles, %rax
and $0xff, %r8
shlq $12, %r8
mov (%rax,%r8,1), %r8
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'58': 21825, 'd2': 1, '54': 3}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 54 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 54 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
