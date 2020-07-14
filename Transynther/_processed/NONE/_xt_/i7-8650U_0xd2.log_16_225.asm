.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x13a48, %rbx
nop
inc %rdi
mov (%rbx), %r12
nop
nop
nop
nop
cmp $20361, %r11
lea addresses_normal_ht+0x16b08, %r15
nop
nop
nop
xor %rax, %rax
mov (%r15), %edi
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x8208, %rsi
lea addresses_WC_ht+0x9308, %rdi
nop
sub %rbx, %rbx
mov $1, %rcx
rep movsq
nop
nop
nop
nop
sub $48330, %r15
lea addresses_normal_ht+0xf666, %rax
nop
inc %rbx
movups (%rax), %xmm1
vpextrq $1, %xmm1, %r11
nop
nop
dec %r12
lea addresses_D_ht+0x193c1, %rsi
lea addresses_UC_ht+0x3b88, %rdi
nop
nop
nop
and %r11, %r11
mov $126, %rcx
rep movsl
inc %rax
lea addresses_A_ht+0x1232c, %rsi
lea addresses_UC_ht+0x1bb08, %rdi
nop
nop
and $52276, %r11
mov $16, %rcx
rep movsw
nop
nop
add %r15, %r15
lea addresses_normal_ht+0xd708, %rsi
nop
nop
nop
nop
sub %rax, %rax
movb (%rsi), %cl
add %r15, %r15
lea addresses_normal_ht+0x1df6d, %rcx
nop
and $11351, %rsi
movups (%rcx), %xmm3
vpextrq $0, %xmm3, %rax
nop
xor %rax, %rax
lea addresses_A_ht+0xd808, %rsi
lea addresses_D_ht+0x17508, %rdi
nop
xor %r12, %r12
mov $119, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0xe025, %rsi
nop
nop
sub $2556, %rax
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
nop
nop
xor $26278, %r12
lea addresses_D_ht+0x9e74, %rbx
add %rcx, %rcx
mov (%rbx), %r12d
nop
nop
nop
nop
nop
dec %rbx
lea addresses_UC_ht+0xef88, %rsi
nop
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %rax
movq %rax, (%rsi)
nop
nop
nop
nop
nop
sub $3794, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_UC+0xd8a, %r10
nop
and %rbp, %rbp
movw $0x5152, (%r10)
nop
nop
nop
nop
cmp $43129, %rbp

// Faulty Load
lea addresses_RW+0xd708, %rdx
sub $41141, %r13
movups (%rdx), %xmm0
vpextrq $0, %xmm0, %r10
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'32': 16}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
