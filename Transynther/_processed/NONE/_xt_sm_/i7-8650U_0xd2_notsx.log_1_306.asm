.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1883a, %r14
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm1
movups %xmm1, (%r14)
nop
nop
nop
add %r8, %r8
lea addresses_WC_ht+0x19dee, %r8
nop
nop
nop
nop
xor %rdi, %rdi
mov (%r8), %r13w
nop
nop
cmp $9902, %r10
lea addresses_WT_ht+0x1d3f2, %rdi
nop
xor $64623, %r15
mov (%rdi), %r14
add %r13, %r13
lea addresses_A_ht+0x6852, %rdi
nop
nop
nop
nop
cmp %r15, %r15
mov (%rdi), %rsi
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_WT_ht+0xb832, %r8
nop
nop
nop
nop
and %r15, %r15
mov $0x6162636465666768, %r14
movq %r14, %xmm0
movups %xmm0, (%r8)
sub $14026, %r14
lea addresses_WC_ht+0x3b6a, %rsi
lea addresses_A_ht+0xf9b2, %rdi
clflush (%rdi)
inc %r14
mov $81, %rcx
rep movsw
nop
inc %r14
lea addresses_normal_ht+0x12132, %rsi
lea addresses_UC_ht+0x129b2, %rdi
nop
nop
nop
cmp $43121, %r13
mov $80, %rcx
rep movsq
nop
nop
nop
cmp $46257, %r13
lea addresses_WT_ht+0xfd9a, %rsi
lea addresses_WC_ht+0x1b132, %rdi
nop
and %r14, %r14
mov $12, %rcx
rep movsb
nop
nop
cmp $40690, %r15
lea addresses_normal_ht+0x13592, %rsi
lea addresses_WC_ht+0x1c1b2, %rdi
nop
inc %r15
mov $26, %rcx
rep movsq
nop
and $32808, %r14
lea addresses_normal_ht+0xbdb2, %r8
nop
nop
nop
add $1589, %r10
movb $0x61, (%r8)
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0xef32, %rsi
lea addresses_A_ht+0x11db2, %rdi
nop
xor $22602, %r10
mov $20, %rcx
rep movsw
nop
sub $5664, %r8
lea addresses_normal_ht+0x164c4, %r14
nop
nop
and %r15, %r15
movl $0x61626364, (%r14)
nop
nop
dec %rdi
lea addresses_D_ht+0x1fc2, %rdi
add %r15, %r15
mov (%rdi), %cx
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0x15b2, %rsi
lea addresses_WT_ht+0x99b2, %rdi
sub %r8, %r8
mov $51, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi

// Load
lea addresses_WT+0x141b2, %r12
dec %rcx
mov (%r12), %r8
nop
nop
add $5595, %rcx

// Store
lea addresses_A+0x85b2, %rdi
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
xor $51618, %r12

// Load
lea addresses_US+0x153d0, %rbp
nop
nop
nop
nop
nop
dec %r8
mov (%rbp), %ecx
nop
nop
nop
inc %rbp

// Store
lea addresses_normal+0x1e9b2, %rbx
clflush (%rbx)
cmp %rbp, %rbp
mov $0x5152535455565758, %r12
movq %r12, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
nop
add %r8, %r8

// Load
lea addresses_A+0x12392, %rdi
nop
nop
nop
nop
add %r8, %r8
movb (%rdi), %r12b
nop
add $55991, %r14

// Faulty Load
lea addresses_normal+0x1e9b2, %rdi
nop
nop
nop
nop
nop
xor $38935, %r12
mov (%rdi), %r8w
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'58': 1}
58
*/
