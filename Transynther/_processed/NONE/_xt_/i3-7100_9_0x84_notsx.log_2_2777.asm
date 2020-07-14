.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1b4bd, %r14
nop
nop
nop
nop
nop
cmp $38364, %rbx
movw $0x6162, (%r14)
nop
nop
xor $53699, %rdx
lea addresses_WT_ht+0x12b2f, %rsi
nop
nop
nop
sub $20265, %rbp
mov (%rsi), %edi
xor $30906, %rbx
lea addresses_D_ht+0x982f, %rdi
sub $21545, %rsi
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbx
nop
and $10427, %rbx
lea addresses_WT_ht+0x4def, %rbp
nop
nop
nop
nop
cmp %r13, %r13
movups (%rbp), %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
sub $45683, %rsi
lea addresses_A_ht+0x706f, %rdi
nop
nop
nop
nop
xor $19326, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm0
movups %xmm0, (%rdi)
sub %r13, %r13
lea addresses_WC_ht+0x174df, %rbx
nop
nop
nop
nop
xor %rdx, %rdx
movl $0x61626364, (%rbx)
nop
xor $30077, %r14
lea addresses_D_ht+0xa18f, %rbp
sub %rbx, %rbx
movb $0x61, (%rbp)
nop
add %rsi, %rsi
lea addresses_normal_ht+0x1712f, %rsi
lea addresses_WC_ht+0x95af, %rdi
nop
nop
nop
nop
add $40555, %r13
mov $77, %rcx
rep movsl
nop
and $15613, %rdi
lea addresses_WT_ht+0x5460, %rsi
nop
nop
inc %rbx
movb (%rsi), %dl
nop
nop
nop
cmp $53674, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rax
push %rcx
push %rdx

// Store
mov $0x779a25000000016f, %r15
nop
nop
nop
nop
add $49496, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r15)
nop
nop
nop
nop
nop
add $56146, %rdx

// Store
lea addresses_WC+0x1e02f, %r9
nop
xor %rax, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r9)
nop
and $48435, %r9

// Store
lea addresses_WC+0x3e5e, %r15
nop
sub %r10, %r10
movw $0x5152, (%r15)
sub $28635, %r15

// Store
lea addresses_normal+0x1a5ef, %r15
nop
nop
nop
and %r11, %r11
movl $0x51525354, (%r15)
nop
sub %r15, %r15

// Store
lea addresses_WC+0xf02f, %rcx
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
nop
dec %rdx

// Store
lea addresses_US+0x1f1af, %rdx
nop
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %rax
movq %rax, (%rdx)
nop
nop
nop
nop
nop
cmp $24970, %r15

// Faulty Load
lea addresses_WT+0x532f, %rcx
nop
nop
nop
nop
cmp $39176, %r11
movb (%rcx), %r10b
lea oracles, %rax
and $0xff, %r10
shlq $12, %r10
mov (%rax,%r10,1), %r10
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'39': 2}
39 39
*/
