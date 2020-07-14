.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1a8c9, %rdx
nop
nop
sub $56023, %rsi
mov $0x6162636465666768, %r14
movq %r14, (%rdx)
add %r13, %r13
lea addresses_UC_ht+0x155d5, %r12
clflush (%r12)
xor $52467, %rsi
mov (%r12), %r13w
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x192c9, %rbp
nop
cmp %rcx, %rcx
and $0xffffffffffffffc0, %rbp
movntdqa (%rbp), %xmm4
vpextrq $0, %xmm4, %r12
nop
nop
nop
nop
sub %r14, %r14
lea addresses_D_ht+0x17449, %r12
dec %r13
mov (%r12), %r14w
nop
nop
nop
and %r12, %r12
lea addresses_WC_ht+0xe7ad, %rsi
lea addresses_UC_ht+0x18b23, %rdi
nop
nop
nop
xor %r13, %r13
mov $26, %rcx
rep movsb
cmp %r12, %r12
lea addresses_D_ht+0x8d49, %rsi
lea addresses_D_ht+0x1a149, %rdi
nop
dec %r12
mov $1, %rcx
rep movsl
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x735, %r14
dec %rcx
movl $0x61626364, (%r14)
nop
nop
add %r13, %r13
lea addresses_A_ht+0x1336d, %rdi
nop
nop
dec %r14
mov $0x6162636465666768, %rdx
movq %rdx, (%rdi)
nop
nop
dec %r14
lea addresses_WT_ht+0x4789, %r13
add $64857, %rdi
movb (%r13), %r12b
nop
nop
dec %r14
lea addresses_normal_ht+0xa549, %rdx
nop
nop
sub %rdi, %rdi
movb (%rdx), %r13b
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0xc449, %rsi
nop
nop
and $21529, %r13
mov (%rsi), %edx
nop
nop
dec %rdx
lea addresses_A_ht+0x18669, %r13
nop
cmp %r12, %r12
mov (%r13), %r14d
nop
nop
nop
add $62028, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rax
push %rbp
push %rbx
push %rdi
push %rsi

// Store
mov $0x4b675500000003e1, %rdi
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovups %ymm1, (%rdi)
add %rax, %rax

// Store
lea addresses_A+0x13469, %rbx
nop
nop
nop
nop
nop
cmp $55184, %r13
movl $0x51525354, (%rbx)
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_RW+0x6ec9, %rdi
nop
cmp $34845, %r13
movw $0x5152, (%rdi)
nop
nop
cmp $7735, %rax

// Store
lea addresses_D+0x1df14, %r13
nop
nop
nop
nop
nop
sub $49137, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm7
and $0xffffffffffffffc0, %r13
vmovntdq %ymm7, (%r13)
nop
sub $41619, %rax

// Store
lea addresses_D+0x4749, %r12
nop
nop
nop
nop
nop
xor %rbx, %rbx
movw $0x5152, (%r12)
nop
sub $46493, %r12

// Faulty Load
lea addresses_A+0x16149, %rsi
cmp $54611, %rbp
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %rbx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'00': 3}
00 00 00
*/
