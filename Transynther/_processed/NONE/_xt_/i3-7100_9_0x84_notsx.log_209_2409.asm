.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x531f, %rsi
lea addresses_WC_ht+0x1da1f, %rdi
nop
nop
nop
and %r14, %r14
mov $20, %rcx
rep movsw
nop
nop
nop
add %r12, %r12
lea addresses_WC_ht+0x67b3, %rbx
nop
nop
nop
nop
nop
and $18572, %rbp
mov $0x6162636465666768, %r14
movq %r14, %xmm7
movups %xmm7, (%rbx)
nop
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x1720f, %r14
and %rbx, %rbx
mov $0x6162636465666768, %r12
movq %r12, (%r14)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x5e1f, %rsi
lea addresses_WC_ht+0x169f, %rdi
clflush (%rsi)
nop
nop
nop
add %rbp, %rbp
mov $74, %rcx
rep movsb
nop
sub $61208, %r14
lea addresses_WC_ht+0x6929, %r12
nop
nop
nop
add %rsi, %rsi
mov (%r12), %ebx
nop
and $7560, %rbx
lea addresses_A_ht+0x1bf9, %rsi
nop
nop
nop
nop
nop
lfence
mov (%rsi), %di
nop
add $44776, %rcx
lea addresses_D_ht+0xa8bf, %rdi
nop
nop
nop
nop
sub %r12, %r12
movw $0x6162, (%rdi)
nop
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0x10237, %r12
dec %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm3
and $0xffffffffffffffc0, %r12
vmovaps %ymm3, (%r12)
sub $19360, %rdi
lea addresses_UC_ht+0x1ce9f, %rbx
nop
nop
nop
nop
and %rsi, %rsi
mov (%rbx), %ecx
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rsi

// Store
mov $0x67aab00000000977, %rsi
nop
nop
xor %rax, %rax
movb $0x51, (%rsi)
nop
add $3175, %r8

// Store
lea addresses_UC+0x1de1f, %rcx
dec %rbx
mov $0x5152535455565758, %r11
movq %r11, (%rcx)
nop
nop
add %r11, %r11

// Store
lea addresses_WT+0x13e1f, %rsi
nop
nop
nop
nop
nop
xor $45940, %r13
movl $0x51525354, (%rsi)
nop
nop
nop
dec %rbx

// Faulty Load
lea addresses_RW+0x1561f, %rcx
nop
nop
nop
nop
add %rax, %rax
movb (%rcx), %r13b
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'32': 209}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
