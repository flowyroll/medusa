.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1ec8b, %rbx
nop
nop
nop
and $37794, %r15
movl $0x61626364, (%rbx)
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x1ed0b, %r12
nop
nop
nop
xor %r14, %r14
mov (%r12), %edi
nop
nop
nop
nop
nop
mfence
lea addresses_WC_ht+0xa75, %r14
nop
dec %r13
mov (%r14), %r10
nop
nop
xor $33714, %r10
lea addresses_UC_ht+0x1afaf, %rsi
lea addresses_WT_ht+0x14dcb, %rdi
nop
xor $28821, %r12
mov $68, %rcx
rep movsb
nop
and $10146, %rsi
lea addresses_WC_ht+0x1bd0b, %rbx
nop
nop
nop
nop
nop
add $37532, %r13
mov (%rbx), %r14w
nop
nop
nop
nop
add %r12, %r12
lea addresses_D_ht+0x6a10, %rsi
lea addresses_UC_ht+0x1a83b, %rdi
nop
nop
nop
nop
and $34996, %r15
mov $5, %rcx
rep movsq
nop
nop
sub $63244, %rcx
lea addresses_WT_ht+0x9f0b, %rsi
nop
nop
nop
nop
nop
and %r12, %r12
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
inc %rbx
lea addresses_WC_ht+0x1840e, %rsi
lea addresses_normal_ht+0x635c, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $8, %rcx
rep movsq
nop
nop
nop
nop
nop
add $28718, %rcx
lea addresses_normal_ht+0x11175, %r13
dec %r14
movups (%r13), %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
sub $31128, %rsi
lea addresses_normal_ht+0x1514b, %rbx
nop
nop
nop
add %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
and $0xffffffffffffffc0, %rbx
movntdq %xmm4, (%rbx)
nop
inc %rsi
lea addresses_normal_ht+0x1e90b, %rsi
nop
nop
and $40514, %rdi
movw $0x6162, (%rsi)
nop
nop
add $11226, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x1f52b, %rdi
clflush (%rdi)
nop
nop
and %r11, %r11
movb $0x51, (%rdi)
nop
nop
and $25522, %r11

// REPMOV
lea addresses_A+0x8b, %rsi
lea addresses_A+0x790b, %rdi
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $48, %rcx
rep movsq
nop
nop
dec %r11

// Store
lea addresses_UC+0x973, %rsi
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r15
movq %r15, (%rsi)
nop
cmp $30857, %rcx

// Store
lea addresses_PSE+0x1c8c1, %rdx
clflush (%rdx)
add $44223, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
movntdq %xmm0, (%rdx)
sub $9145, %rsi

// Faulty Load
lea addresses_US+0x1710b, %rbx
nop
nop
nop
nop
nop
and %rdi, %rdi
mov (%rbx), %r8
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 685}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
