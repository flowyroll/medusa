.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r8
push %r9
push %rdi
push %rsi
lea addresses_WT_ht+0x98b2, %rsi
nop
nop
add %r8, %r8
mov $0x6162636465666768, %r13
movq %r13, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
nop
nop
and $56784, %rdi
lea addresses_normal_ht+0xdcc4, %r14
and %r9, %r9
mov $0x6162636465666768, %r10
movq %r10, %xmm1
movups %xmm1, (%r14)
nop
nop
nop
nop
and %r13, %r13
lea addresses_WC_ht+0x1a8e4, %r14
add %r8, %r8
mov (%r14), %r9
nop
inc %r10
lea addresses_WT_ht+0x193d4, %rsi
nop
nop
nop
lfence
movw $0x6162, (%rsi)
nop
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x26c4, %r9
nop
nop
and %r13, %r13
mov (%r9), %r10w
nop
nop
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %r9
pop %r8
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rdi
push %rdx

// Store
lea addresses_A+0x9ec4, %rdx
nop
nop
nop
nop
nop
cmp $13335, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movups %xmm3, (%rdx)
nop
nop
add $18578, %rax

// Store
lea addresses_RW+0x12644, %r11
nop
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
movntdq %xmm5, (%r11)
nop
nop
nop
nop
add $42246, %rax

// Store
lea addresses_PSE+0x17ec4, %r11
nop
nop
sub $39919, %r8
movl $0x51525354, (%r11)
nop
nop
and %rdi, %rdi

// Store
lea addresses_normal+0x3dc4, %rbp
nop
inc %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rbp)
nop
nop
nop
nop
nop
and %rdi, %rdi

// Faulty Load
lea addresses_A+0x9ec4, %rdx
dec %rdi
mov (%rdx), %rbp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 81}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
