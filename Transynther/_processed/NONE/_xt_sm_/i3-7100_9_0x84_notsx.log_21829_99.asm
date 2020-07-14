.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x2519, %rsi
lea addresses_A_ht+0x1519, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $55717, %r8
mov $49, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r13
lea addresses_D_ht+0x103a9, %rbp
clflush (%rbp)
nop
cmp $59719, %r14
mov $0x6162636465666768, %r13
movq %r13, %xmm5
movups %xmm5, (%rbp)
dec %rbp
lea addresses_A_ht+0xda59, %rsi
lea addresses_D_ht+0xf519, %rdi
inc %rbx
mov $109, %rcx
rep movsq
nop
sub %rbp, %rbp
lea addresses_normal_ht+0xf719, %rsi
lea addresses_WT_ht+0x1c735, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $42, %rcx
rep movsl
and %r13, %r13
lea addresses_normal_ht+0x71f9, %r8
nop
nop
nop
nop
nop
sub $63408, %r13
movw $0x6162, (%r8)
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x19421, %r14
clflush (%r14)
nop
and $37401, %rsi
mov (%r14), %r13d
nop
inc %rbp
lea addresses_A_ht+0x15ab9, %rsi
lea addresses_D_ht+0x15159, %rdi
nop
nop
xor $5628, %rbp
mov $9, %rcx
rep movsq
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x11421, %rbx
nop
nop
dec %rcx
movb $0x61, (%rbx)
nop
sub $25631, %rdi
lea addresses_UC_ht+0xb0b9, %rsi
lea addresses_normal_ht+0x32b9, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $117, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rbp
lea addresses_WT_ht+0x1ee99, %rsi
lea addresses_A_ht+0x87d9, %rdi
nop
nop
sub $59285, %rbp
mov $37, %rcx
rep movsq
nop
nop
nop
nop
nop
and $7520, %rdi
lea addresses_UC_ht+0x1dc19, %rsi
lea addresses_A_ht+0x50d9, %rdi
nop
nop
nop
cmp %r13, %r13
mov $76, %rcx
rep movsw
nop
add %rsi, %rsi
lea addresses_normal_ht+0x8f19, %rsi
nop
nop
sub $62672, %rcx
mov (%rsi), %rbx
nop
add %rbp, %rbp
lea addresses_normal_ht+0x11319, %r13
clflush (%r13)
nop
nop
nop
xor $45591, %rbx
mov (%r13), %cx
nop
xor $50007, %rbx
lea addresses_D_ht+0xd921, %rsi
nop
nop
dec %rbx
movl $0x61626364, (%rsi)
nop
nop
sub $31552, %r13
lea addresses_normal_ht+0x4999, %rsi
lea addresses_WT_ht+0x13119, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $45879, %r14
mov $4, %rcx
rep movsq
nop
nop
nop
add $12607, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x9519, %rbx
nop
nop
nop
add $3669, %r13
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%rbx)
inc %rsi

// Store
lea addresses_normal+0xc501, %r9
clflush (%r9)
nop
nop
cmp $7075, %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
movups %xmm4, (%r9)
nop
nop
add $51373, %rbp

// REPMOV
lea addresses_PSE+0x15d67, %rsi
lea addresses_WC+0xfa79, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $30335, %r13
mov $34, %rcx
rep movsq
cmp %r14, %r14

// Store
lea addresses_normal+0x1237b, %rsi
nop
nop
xor $57283, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movaps %xmm1, (%rsi)
nop
and $49413, %rbx

// Faulty Load
lea addresses_D+0x9519, %rbp
add $51656, %r9
mov (%rbp), %r13
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
