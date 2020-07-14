.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x12a9, %rsi
lea addresses_UC_ht+0x187f9, %rdi
clflush (%rsi)
nop
nop
nop
inc %rdx
mov $34, %rcx
rep movsb
dec %r12
lea addresses_normal_ht+0x15b59, %r14
nop
nop
nop
add %r12, %r12
movb $0x61, (%r14)
nop
nop
nop
nop
nop
add $3778, %rcx
lea addresses_WT_ht+0x3fa9, %r14
nop
and %r9, %r9
vmovups (%r14), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
and $7276, %r14
lea addresses_UC_ht+0x9a9, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
inc %r9
mov $0x6162636465666768, %r14
movq %r14, %xmm1
movups %xmm1, (%rcx)
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0xa1c1, %rsi
lea addresses_D_ht+0x1d669, %rdi
nop
nop
nop
xor $63523, %r14
mov $58, %rcx
rep movsw
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x105d5, %rsi
lea addresses_WT_ht+0x1a5a9, %rdi
nop
nop
nop
cmp $3714, %rax
mov $61, %rcx
rep movsl
add $13942, %rax
lea addresses_UC_ht+0x1c369, %rsi
nop
nop
cmp %r9, %r9
mov $0x6162636465666768, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0x10da9, %rcx
nop
nop
nop
nop
nop
xor $24644, %rsi
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
cmp $13909, %r12
lea addresses_normal_ht+0x2da9, %rsi
lea addresses_A_ht+0x2009, %rdi
nop
nop
nop
nop
add %r12, %r12
mov $122, %rcx
rep movsb
and %rdx, %rdx
lea addresses_UC_ht+0x59c9, %rax
nop
nop
nop
nop
nop
add $41032, %rsi
movb (%rax), %r14b
and $64907, %r12
lea addresses_D_ht+0x2ee9, %r12
nop
nop
nop
dec %rdi
mov (%r12), %eax
nop
sub %rdx, %rdx
lea addresses_D_ht+0x15969, %r14
xor %rdx, %rdx
mov $0x6162636465666768, %rax
movq %rax, %xmm1
movups %xmm1, (%r14)
nop
nop
sub $17361, %rax
lea addresses_D_ht+0x29a9, %rsi
lea addresses_normal_ht+0x16e79, %rdi
nop
nop
nop
xor $44190, %r12
mov $112, %rcx
rep movsl
add %rcx, %rcx
lea addresses_UC_ht+0x175a9, %r14
nop
nop
sub $17867, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r14)
inc %rax
lea addresses_WT_ht+0xab69, %rsi
inc %r12
movb $0x61, (%rsi)
nop
nop
nop
and $26254, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rdi
push %rdx

// Store
lea addresses_PSE+0x5a9, %r9
nop
nop
nop
xor $27406, %rax
movw $0x5152, (%r9)
sub %rbp, %rbp

// Store
lea addresses_A+0xd9a9, %r13
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%r13)
sub %rdi, %rdi

// Load
lea addresses_A+0xd9a9, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %rdx
nop
sub $8680, %r13

// Store
lea addresses_A+0x111a9, %rbp
nop
nop
sub %rdi, %rdi
movw $0x5152, (%rbp)
nop
nop
add $45722, %r9

// Store
lea addresses_WT+0x9a29, %rdx
nop
nop
nop
nop
nop
dec %r13
movb $0x51, (%rdx)
cmp %r13, %r13

// Store
lea addresses_normal+0x21a9, %rax
clflush (%rax)
nop
cmp $56401, %rdi
movb $0x51, (%rax)
nop
sub $5690, %r13

// Store
mov $0x1da, %rdi
nop
nop
sub $61767, %r13
movl $0x51525354, (%rdi)
nop
nop
nop
nop
cmp $25749, %r9

// Store
lea addresses_US+0x198a9, %rdi
nop
nop
and $14219, %rbp
movb $0x51, (%rdi)
nop
nop
nop
sub $4429, %rbp

// Faulty Load
lea addresses_A+0xd9a9, %r14
sub %rbp, %rbp
mov (%r14), %r9d
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 10145}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
