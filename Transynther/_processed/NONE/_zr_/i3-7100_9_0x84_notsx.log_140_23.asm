.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x154c0, %r9
nop
nop
add $3457, %r11
movw $0x6162, (%r9)
nop
inc %rdx
lea addresses_UC_ht+0xd928, %r10
nop
nop
nop
cmp $50134, %r9
movl $0x61626364, (%r10)
dec %rdi
lea addresses_WC_ht+0x1bb28, %r11
nop
nop
nop
nop
nop
and $29851, %rbp
movw $0x6162, (%r11)
nop
nop
nop
nop
add $30379, %r9
lea addresses_UC_ht+0x1d528, %rdx
cmp $22405, %r10
mov (%rdx), %r9w
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_normal_ht+0x5d28, %r11
clflush (%r11)
nop
nop
nop
add $13071, %rdx
mov (%r11), %r9
nop
nop
nop
nop
inc %rbp
lea addresses_normal_ht+0xeb53, %rsi
lea addresses_D_ht+0x3528, %rdi
nop
nop
add %rdx, %rdx
mov $86, %rcx
rep movsq
nop
nop
nop
nop
add %r10, %r10
lea addresses_UC_ht+0x67e8, %r11
nop
nop
inc %r10
movb (%r11), %r13b
and %rbp, %rbp
lea addresses_WT_ht+0x5de8, %r9
nop
nop
nop
nop
nop
and %rbp, %rbp
mov (%r9), %r10d
nop
nop
nop
nop
nop
sub $15999, %r11
lea addresses_UC_ht+0x15528, %rsi
nop
nop
nop
nop
and $20067, %r11
mov (%rsi), %r10
nop
and %rbp, %rbp
lea addresses_WT_ht+0x1bc68, %rbp
nop
add $38651, %r9
mov (%rbp), %ecx
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x7940, %rsi
lea addresses_WT_ht+0x16d00, %rdi
clflush (%rdi)
add $47707, %r10
mov $99, %rcx
rep movsq
nop
nop
nop
nop
inc %r10
lea addresses_normal_ht+0x1c528, %rbp
nop
nop
dec %rcx
mov (%rbp), %r10w
cmp $52366, %r13
lea addresses_WC_ht+0x2128, %rsi
lea addresses_UC_ht+0x1528, %rdi
nop
nop
nop
nop
sub %rdx, %rdx
mov $34, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %r9
push %rax
push %rcx

// Store
lea addresses_D+0x1f528, %r8
nop
nop
nop
nop
nop
add %r9, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm0
movntdq %xmm0, (%r8)
nop
and %r8, %r8

// Store
lea addresses_UC+0x5428, %r8
nop
nop
dec %rcx
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_D+0x1f528, %r8
nop
nop
nop
nop
cmp $40463, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movups %xmm5, (%r8)
nop
and %r10, %r10

// Store
lea addresses_WC+0x1c7ec, %r11
nop
nop
nop
nop
and $46091, %r9
movw $0x5152, (%r11)
nop
nop
nop
nop
xor $26262, %r8

// Faulty Load
lea addresses_D+0x1f528, %r11
nop
add %r9, %r9
movups (%r11), %xmm0
vpextrq $1, %xmm0, %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 1, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'00': 140}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
