.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xab72, %r14
nop
nop
sub %r9, %r9
mov (%r14), %r10
nop
nop
nop
nop
add $55722, %rbp
lea addresses_WT_ht+0x16352, %rsi
lea addresses_A_ht+0x15372, %rdi
nop
nop
nop
nop
nop
and $45777, %r11
mov $28, %rcx
rep movsb
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_normal_ht+0xcefc, %r9
clflush (%r9)
nop
nop
dec %rdi
mov (%r9), %r11
nop
nop
nop
nop
nop
and $55517, %r9
lea addresses_A_ht+0x16f72, %rcx
nop
nop
nop
nop
nop
dec %r11
movb $0x61, (%rcx)
nop
nop
nop
nop
add $26768, %r11
lea addresses_WT_ht+0x12b72, %rdi
nop
add $6096, %r10
mov $0x6162636465666768, %r14
movq %r14, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
nop
mfence
lea addresses_WC_ht+0x1d0e2, %rsi
nop
cmp $3866, %rcx
mov (%rsi), %r11
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x1b872, %r14
nop
nop
nop
nop
nop
xor %r10, %r10
mov (%r14), %ebp
xor $43424, %rcx
lea addresses_UC_ht+0x10772, %rsi
lea addresses_WC_ht+0xc372, %rdi
nop
nop
xor %r11, %r11
mov $49, %rcx
rep movsb
nop
nop
cmp $17124, %rdi
lea addresses_normal_ht+0x1776, %r9
nop
nop
nop
nop
inc %rbp
movb (%r9), %r14b
nop
nop
nop
add $14260, %rbp
lea addresses_WT_ht+0xe78a, %rsi
lea addresses_A_ht+0x14f72, %rdi
and %r10, %r10
mov $44, %rcx
rep movsw
nop
nop
add $43610, %r10
lea addresses_WT_ht+0x12dbe, %rsi
lea addresses_WC_ht+0x7172, %rdi
nop
nop
nop
nop
cmp %r11, %r11
mov $82, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %r9
lea addresses_WT_ht+0xd116, %r9
and %rdi, %rdi
movb (%r9), %r10b
nop
nop
dec %r10
lea addresses_D_ht+0x3872, %r10
nop
nop
add %rdi, %rdi
mov (%r10), %bp
nop
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x5d72, %rsi
lea addresses_D_ht+0x49b2, %rdi
nop
nop
nop
add %r14, %r14
mov $13, %rcx
rep movsq
nop
sub %rcx, %rcx
lea addresses_D_ht+0x13572, %rbp
nop
xor $17281, %r9
movl $0x61626364, (%rbp)
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rbp
push %rbx
push %rdi
push %rdx

// Load
lea addresses_UC+0x10272, %rbx
nop
and $44403, %rbp
mov (%rbx), %r9
nop
nop
nop
and %r9, %r9

// Load
lea addresses_A+0x1db72, %r13
cmp %rdi, %rdi
movb (%r13), %dl
nop
nop
nop
nop
dec %rbx

// Store
lea addresses_normal+0x1a372, %rdi
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
nop
nop
dec %rbx

// Store
lea addresses_A+0x7772, %rbp
nop
nop
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
movups %xmm4, (%rbp)
nop
xor %r9, %r9

// Store
lea addresses_A+0x6372, %r13
clflush (%r13)
dec %rbx
mov $0x5152535455565758, %r9
movq %r9, (%r13)
nop
nop
nop
nop
nop
mfence

// Store
lea addresses_A+0x18c92, %r9
nop
xor $23140, %rdi
movl $0x51525354, (%r9)
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_WT+0xe593, %r13
add %rdi, %rdi
movl $0x51525354, (%r13)
nop
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_US+0x15d72, %r13
clflush (%r13)
nop
nop
nop
nop
nop
and %rdx, %rdx
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
add $27204, %r10

// Faulty Load
mov $0x5c34a80000000372, %r13
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov (%r13), %bp
lea oracles, %r13
and $0xff, %rbp
shlq $12, %rbp
mov (%r13,%rbp,1), %rbp
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': True, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'00': 21820, '45': 9}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
