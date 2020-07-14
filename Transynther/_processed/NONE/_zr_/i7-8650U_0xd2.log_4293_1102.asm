.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x18a71, %rdx
clflush (%rdx)
nop
nop
nop
dec %rdi
movl $0x61626364, (%rdx)
nop
nop
nop
nop
and $21435, %rbx
lea addresses_D_ht+0x12b79, %rbp
nop
nop
nop
nop
nop
add %rsi, %rsi
movb $0x61, (%rbp)
cmp %rdi, %rdi
lea addresses_UC_ht+0x11801, %rsi
lea addresses_D_ht+0x1c6b9, %rdi
nop
and $34532, %r13
mov $116, %rcx
rep movsb
nop
nop
dec %rdi
lea addresses_D_ht+0x1096e, %r10
nop
nop
nop
xor $6027, %rsi
movb $0x61, (%r10)
nop
dec %rdi
lea addresses_A_ht+0x1eee1, %r13
nop
nop
nop
nop
cmp $4459, %r10
mov $0x6162636465666768, %rbx
movq %rbx, (%r13)
nop
nop
nop
nop
sub $10783, %rdi
lea addresses_WT_ht+0x1acfd, %rsi
lea addresses_normal_ht+0x1d2f1, %rdi
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $80, %rcx
rep movsq
nop
nop
nop
add $11079, %rbx
lea addresses_D_ht+0x10585, %rbp
nop
nop
add %rcx, %rcx
mov (%rbp), %dx
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x13f31, %rdx
nop
nop
xor $60785, %rcx
mov $0x6162636465666768, %r13
movq %r13, (%rdx)
nop
nop
nop
nop
sub $28007, %rbx
lea addresses_UC_ht+0x16971, %rsi
lea addresses_WT_ht+0x9ab5, %rdi
nop
and $55584, %rbp
mov $40, %rcx
rep movsq
nop
cmp $11762, %rsi
lea addresses_D_ht+0x13ab, %rbp
nop
nop
cmp $24863, %rsi
movw $0x6162, (%rbp)
nop
nop
and $60362, %rbx
lea addresses_D_ht+0x1605d, %rsi
lea addresses_A_ht+0x12a71, %rdi
nop
nop
nop
cmp $51504, %rdx
mov $12, %rcx
rep movsw
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0xeae9, %rsi
nop
sub $4301, %rbx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x1ea71, %rbp
nop
nop
nop
nop
nop
add %r10, %r10
movb $0x61, (%rbp)
nop
nop
sub $35351, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rax
push %rbx
push %rdx

// Store
lea addresses_WT+0xe618, %rax
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %r15
movq %r15, (%rax)
nop
nop
xor %rdx, %rdx

// Store
mov $0x271, %r15
nop
nop
nop
xor $38792, %r12
mov $0x5152535455565758, %rdx
movq %rdx, (%r15)
add $41110, %rbx

// Store
lea addresses_normal+0xb711, %r10
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_US+0x731, %rax
nop
nop
nop
inc %rdx
movw $0x5152, (%rax)
nop
nop
nop
sub %r12, %r12

// Load
lea addresses_A+0x16a71, %r12
nop
sub %r15, %r15
movb (%r12), %bl
nop
add $56214, %rbx

// Store
lea addresses_WC+0x19bf1, %r10
nop
nop
nop
cmp %rbx, %rbx
movb $0x51, (%r10)
and %rbx, %rbx

// Faulty Load
lea addresses_UC+0x1da71, %rdx
nop
nop
nop
nop
cmp $49605, %r15
movb (%rdx), %r12b
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'00': 4293}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
