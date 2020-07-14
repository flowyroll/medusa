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
lea addresses_WT_ht+0xb48f, %rbx
nop
nop
add $63571, %rdi
mov (%rbx), %r14
nop
add %rdi, %rdi
lea addresses_normal_ht+0x132e9, %rsi
lea addresses_D_ht+0xd719, %rdi
nop
nop
xor %rbp, %rbp
mov $105, %rcx
rep movsl
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x17819, %rsi
lea addresses_UC_ht+0x6039, %rdi
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $22, %rcx
rep movsw
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x7319, %rsi
lea addresses_UC_ht+0x5d19, %rdi
dec %rbp
mov $113, %rcx
rep movsq
nop
nop
nop
nop
sub $9597, %rbx
lea addresses_normal_ht+0x11a59, %rsi
lea addresses_UC_ht+0x6199, %rdi
nop
cmp $17109, %rbp
mov $123, %rcx
rep movsl
and $24052, %rbp
lea addresses_UC_ht+0x14511, %rsi
nop
nop
nop
sub %r8, %r8
movb (%rsi), %cl
nop
nop
sub $718, %r14
lea addresses_WT_ht+0x3069, %rsi
nop
dec %r8
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm7
vpextrq $0, %xmm7, %r14
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x12719, %rsi
lea addresses_WT_ht+0x3429, %rdi
clflush (%rsi)
nop
nop
nop
add %r13, %r13
mov $89, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x9f19, %rsi
lea addresses_normal_ht+0xcf19, %rdi
clflush (%rdi)
nop
sub $54674, %rbx
mov $66, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $40582, %rdi
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
push %r10
push %r12
push %r14
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_normal+0x1cb19, %rax
nop
nop
add $5704, %r10
mov $0x5152535455565758, %r12
movq %r12, (%rax)
nop
nop
nop
add %r10, %r10

// Faulty Load
lea addresses_US+0x1b719, %r14
nop
nop
nop
nop
add %rbp, %rbp
mov (%r14), %bx
lea oracles, %r14
and $0xff, %rbx
shlq $12, %rbx
mov (%r14,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'00': 54}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
