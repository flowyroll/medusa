.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x19e88, %r8
nop
nop
nop
dec %r15
mov (%r8), %rax
nop
nop
nop
nop
nop
dec %r15
lea addresses_A_ht+0x2d08, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %rdx, %rdx
mov (%rdi), %si
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x1b2e8, %r8
nop
nop
nop
nop
xor %rdx, %rdx
movw $0x6162, (%r8)
nop
nop
nop
sub $30251, %rdx
lea addresses_WC_ht+0x268, %r15
nop
nop
nop
nop
xor $52015, %r14
mov $0x6162636465666768, %rdx
movq %rdx, (%r15)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x11268, %rax
nop
dec %r14
mov (%rax), %edx
nop
sub $33600, %r14
lea addresses_WC_ht+0x13ae8, %rdi
and $102, %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
nop
and %r15, %r15
lea addresses_UC_ht+0xe068, %rsi
lea addresses_WT_ht+0x79a8, %rdi
nop
nop
nop
add %r14, %r14
mov $23, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_D_ht+0x15a68, %rsi
nop
nop
xor %r8, %r8
movw $0x6162, (%rsi)
nop
add %rcx, %rcx
lea addresses_D_ht+0x179, %rsi
lea addresses_UC_ht+0xb368, %rdi
nop
nop
nop
nop
xor %rax, %rax
mov $4, %rcx
rep movsq
nop
dec %rsi
lea addresses_UC_ht+0x14f38, %r8
nop
nop
and $50694, %r14
mov (%r8), %rcx
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x19e8, %rsi
lea addresses_WT_ht+0x18668, %rdi
nop
nop
nop
add %r8, %r8
mov $93, %rcx
rep movsl
nop
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rax
push %rbp
push %rdx

// Store
lea addresses_WC+0x10008, %r14
nop
cmp %r13, %r13
movb $0x51, (%r14)
nop
nop
xor %r10, %r10

// Faulty Load
lea addresses_US+0xba68, %r10
xor $20004, %r8
mov (%r10), %ebp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rdx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
