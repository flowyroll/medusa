.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xcc61, %rax
nop
dec %rsi
movw $0x6162, (%rax)
nop
nop
inc %r14
lea addresses_D_ht+0x11be1, %rsi
lea addresses_A_ht+0xbc61, %rdi
clflush (%rsi)
nop
nop
nop
nop
inc %rbp
mov $15, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $52352, %rax
lea addresses_normal_ht+0x17edb, %rsi
nop
nop
nop
cmp $46683, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
nop
nop
nop
sub $54705, %rbp
lea addresses_WT_ht+0x19221, %r14
nop
nop
sub %rdi, %rdi
movl $0x61626364, (%r14)
nop
nop
nop
sub $60334, %rdi
lea addresses_UC_ht+0x3ca9, %rbp
clflush (%rbp)
nop
and %r14, %r14
vmovups (%rbp), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x82c9, %rsi
lea addresses_normal_ht+0x15361, %rdi
clflush (%rdi)
cmp %r10, %r10
mov $59, %rcx
rep movsb
cmp $38330, %rcx
lea addresses_A_ht+0x7c61, %rbp
nop
nop
nop
and %rbx, %rbx
mov (%rbp), %r14
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0xb4e1, %rbx
nop
nop
nop
and %rcx, %rcx
mov (%rbx), %rsi
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x171a6, %rsi
lea addresses_WC_ht+0x2061, %rdi
nop
nop
and %rbx, %rbx
mov $31, %rcx
rep movsw
and $934, %r14
lea addresses_normal_ht+0xe7bb, %rsi
lea addresses_UC_ht+0xa461, %rdi
clflush (%rsi)
nop
nop
nop
cmp $62718, %rbx
mov $54, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0xe861, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
cmp %rax, %rax
movl $0x61626364, (%rcx)
nop
add %rax, %rax
lea addresses_normal_ht+0x189c3, %rcx
nop
nop
nop
sub $36782, %rax
mov (%rcx), %r14
nop
nop
xor $18655, %rcx
lea addresses_WT_ht+0x4a61, %rcx
add $30832, %rbp
movb (%rcx), %r14b
nop
nop
inc %rsi
lea addresses_WC_ht+0xb061, %rsi
lea addresses_WT_ht+0x1db7b, %rdi
clflush (%rdi)
nop
cmp %rax, %rax
mov $100, %rcx
rep movsl
nop
nop
add $3875, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rbx
push %rdi

// Store
lea addresses_normal+0x2b81, %r10
nop
nop
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovntdq %ymm4, (%r10)
nop
xor $10491, %r11

// Store
lea addresses_US+0xdbd1, %rbx
nop
nop
nop
dec %r15
mov $0x5152535455565758, %r12
movq %r12, (%rbx)
nop
nop
nop
nop
nop
and $62231, %r15

// Store
lea addresses_WT+0x8d61, %rdi
nop
nop
xor %r15, %r15
movl $0x51525354, (%rdi)
nop
nop
xor $6848, %rdi

// Store
lea addresses_UC+0x1becd, %r15
nop
nop
sub $36743, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%r15)
nop
nop
nop
xor $52198, %r15

// Faulty Load
lea addresses_WC+0x9461, %r9
nop
nop
nop
sub %rdi, %rdi
movaps (%r9), %xmm4
vpextrq $1, %xmm4, %r10
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'46': 3, '00': 273, '47': 1, '44': 109}
00 00 00 00 00 44 44 00 00 00 44 00 44 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 44 00 44 00 00 44 44 00 44 44 00 00 00 44 00 44 00 44 44 00 44 00 00 00 00 00 00 00 00 00 00 44 44 00 00 44 00 00 44 00 00 47 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 44 00 00 00 44 00 44 44 44 00 44 44 00 00 44 00 44 00 44 00 44 00 44 44 44 00 44 00 00 00 44 00 00 44 00 44 00 00 00 44 44 00 44 00 00 00 00 00 00 44 00 00 00 44 44 00 00 44 44 00 00 46 44 00 00 00 44 00 00 00 46 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 44 00 44 00 00 00 00 44 44 00 00 00 00 44 00 00 00 00 44 00 00 44 00 44 00 00 00 44 00 00 44 00 44 00 00 00 44 44 44 00 44 44 00 00 00 00 44 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 44 00 00 44 00 00 00 44 00 00 44 44 44 00 00 00 00 00 44 00 44 44 00 00 00 00 00 00 44 00 44 44 44 00 00 44 00 44 44 44 44 00 00 00 44 44 44 44 44 44 00 00 44 00 00 44 44 44 00
*/
