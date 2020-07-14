.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x465a, %rdi
clflush (%rdi)
nop
nop
and $9418, %r8
mov $0x6162636465666768, %rbx
movq %rbx, (%rdi)
nop
nop
nop
nop
add $64038, %rsi
lea addresses_A_ht+0xd1a, %rsi
lea addresses_A_ht+0x6116, %rdi
nop
nop
xor %rdx, %rdx
mov $43, %rcx
rep movsw
nop
nop
nop
nop
add $20004, %rbx
lea addresses_A_ht+0xd54c, %rsi
lea addresses_normal_ht+0xb7ba, %rdi
nop
nop
nop
dec %r9
mov $126, %rcx
rep movsb
sub $51097, %rbx
lea addresses_normal_ht+0xb95e, %rsi
lea addresses_UC_ht+0x1cf1a, %rdi
nop
nop
nop
nop
add $10895, %r15
mov $57, %rcx
rep movsb
nop
nop
nop
and $45845, %rdx
lea addresses_WC_ht+0x18e3b, %r15
nop
and %rdx, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r15)
nop
nop
nop
nop
sub $62699, %rdx
lea addresses_D_ht+0xbe1a, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %r9, %r9
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
add $44525, %r15
lea addresses_WC_ht+0x4d5a, %rsi
lea addresses_UC_ht+0x431a, %rdi
nop
nop
add $49517, %r8
mov $92, %rcx
rep movsw
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x5d52, %r8
nop
nop
nop
nop
nop
cmp $9114, %rdi
mov (%r8), %r15w
nop
nop
nop
nop
dec %r15
lea addresses_normal_ht+0x9f1a, %rcx
inc %rbx
mov (%rcx), %esi
nop
nop
nop
nop
nop
add $12120, %rbx
lea addresses_WT_ht+0x1821a, %rsi
lea addresses_UC_ht+0xc96e, %rdi
clflush (%rdi)
nop
nop
cmp %rbx, %rbx
mov $54, %rcx
rep movsq
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x15d1a, %rdi
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
nop
dec %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rax
push %rdi
push %rsi

// Store
lea addresses_UC+0x1e85a, %r12
and $41320, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovups %ymm0, (%r12)
nop
nop
sub $27982, %r15

// Faulty Load
lea addresses_US+0xb31a, %r15
nop
nop
nop
xor %rsi, %rsi
mov (%r15), %ax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rsi
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'00': 40}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
