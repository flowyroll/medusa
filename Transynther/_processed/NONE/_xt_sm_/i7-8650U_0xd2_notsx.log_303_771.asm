.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x11e85, %rsi
lea addresses_A_ht+0x15a05, %rdi
nop
nop
nop
nop
xor $65163, %r14
mov $18, %rcx
rep movsw
nop
nop
nop
dec %rdx
lea addresses_D_ht+0x1b685, %rbp
nop
and %r10, %r10
mov (%rbp), %rdi
nop
xor $12883, %rdx
lea addresses_A_ht+0x160f7, %rsi
lea addresses_A_ht+0xba05, %rdi
nop
nop
and %rbp, %rbp
mov $23, %rcx
rep movsq
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x79c5, %rcx
nop
nop
nop
nop
add $45807, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
inc %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_PSE+0x11e9e, %r11
nop
nop
nop
add %rax, %rax
mov (%r11), %rbx
nop
cmp $51512, %rax

// Store
lea addresses_UC+0x16a0d, %rdx
and %r8, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%rdx)
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_WT+0x11bdd, %r11
nop
nop
dec %r13
movb $0x51, (%r11)
nop
nop
nop
add %r15, %r15

// REPMOV
lea addresses_US+0x485, %rsi
lea addresses_RW+0x2223, %rdi
nop
nop
nop
inc %r11
mov $11, %rcx
rep movsb

// Exception!!!
nop
nop
mov (0), %r11
nop
nop
nop
nop
nop
cmp $36139, %r15

// Store
mov $0xea9, %rdx
dec %r13
mov $0x5152535455565758, %r11
movq %r11, (%rdx)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r11
nop
nop
nop
sub $37555, %r13

// Load
lea addresses_PSE+0x171d3, %r13
nop
nop
nop
sub $10109, %rax
mov (%r13), %rcx
sub $48005, %rcx

// Store
lea addresses_PSE+0x9485, %rdi
nop
nop
nop
nop
nop
dec %r8
movb $0x51, (%rdi)
nop
sub $37313, %r15

// Faulty Load
lea addresses_PSE+0x9485, %r13
nop
nop
nop
nop
nop
add $50756, %rcx
movb (%r13), %r8b
lea oracles, %rax
and $0xff, %r8
shlq $12, %r8
mov (%rax,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_US', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'51': 303}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
