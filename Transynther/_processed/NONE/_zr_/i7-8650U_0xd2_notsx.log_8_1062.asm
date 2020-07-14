.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1cd1, %rsi
lea addresses_normal_ht+0x68b9, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $4, %rcx
rep movsw
xor $41782, %r13
lea addresses_normal_ht+0xdb1, %r14
nop
dec %r11
mov (%r14), %r13d
sub %r13, %r13
lea addresses_UC_ht+0x140f7, %rsi
lea addresses_WT_ht+0xdb1, %rdi
nop
add %r14, %r14
mov $36, %rcx
rep movsb
nop
nop
dec %rdi
lea addresses_D_ht+0x1d5b1, %rsi
nop
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%rsi)
nop
xor %r13, %r13
lea addresses_normal_ht+0x19c71, %rsi
nop
nop
nop
and $12203, %r13
mov $0x6162636465666768, %r14
movq %r14, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
nop
add $41385, %r11
lea addresses_A_ht+0x1bbb1, %rbp
nop
nop
nop
and %rdi, %rdi
mov (%rbp), %r14w
nop
sub %rdi, %rdi
lea addresses_A_ht+0x126b1, %r11
nop
nop
nop
mfence
mov $0x6162636465666768, %r14
movq %r14, (%r11)
cmp %rbp, %rbp
lea addresses_WC_ht+0xea61, %r14
add $42018, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r14)
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_A_ht+0xd9b1, %rsi
lea addresses_normal_ht+0xfad1, %rdi
nop
nop
xor %r11, %r11
mov $68, %rcx
rep movsb
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0x9db1, %r13
nop
nop
cmp %rsi, %rsi
movb $0x61, (%r13)
nop
nop
nop
sub $4711, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_RW+0xc249, %rdx
nop
nop
nop
nop
dec %r10
mov (%rdx), %ebp
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_PSE+0xa5b1, %r10
nop
nop
nop
sub %rdx, %rdx
movw $0x5152, (%r10)
nop
nop
nop
sub %rdx, %rdx

// REPMOV
lea addresses_US+0x1c491, %rsi
lea addresses_PSE+0xa5b1, %rdi
nop
sub $19396, %r15
mov $103, %rcx
rep movsb
nop
nop
nop
cmp %r10, %r10

// Load
lea addresses_A+0xe49, %r10
nop
and $10325, %rbx
mov (%r10), %di
nop
nop
nop
cmp $49564, %rdi

// Faulty Load
lea addresses_PSE+0xa5b1, %rbp
nop
nop
nop
add %rdi, %rdi
mov (%rbp), %ebx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_US', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'00': 8}
00 00 00 00 00 00 00 00
*/
