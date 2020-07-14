.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x26a9, %rax
cmp %rdx, %rdx
and $0xffffffffffffffc0, %rax
movntdqa (%rax), %xmm1
vpextrq $1, %xmm1, %r12
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_WT_ht+0x1ecf9, %rax
nop
nop
nop
nop
nop
dec %rbp
mov $0x6162636465666768, %r15
movq %r15, %xmm1
vmovups %ymm1, (%rax)
sub %rax, %rax
lea addresses_A_ht+0x106c1, %r12
nop
nop
nop
nop
nop
and $47156, %rax
movb (%r12), %dl
nop
mfence
lea addresses_normal_ht+0x12469, %rdi
nop
inc %r14
mov (%rdi), %ax
nop
add %r15, %r15
lea addresses_normal_ht+0x13aa9, %rdx
clflush (%rdx)
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
nop
nop
sub $37884, %rdi
lea addresses_WT_ht+0xe6a9, %r15
nop
nop
nop
nop
xor %rdi, %rdi
movb (%r15), %r14b
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x178a9, %r15
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %rax
movq %rax, (%r15)
nop
nop
nop
cmp $54869, %rax
lea addresses_normal_ht+0x66a9, %rsi
lea addresses_WC_ht+0x1d075, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov $94, %rcx
rep movsw
inc %rdx
lea addresses_D_ht+0x14e29, %rsi
lea addresses_normal_ht+0xa6a9, %rdi
nop
nop
nop
nop
dec %rdx
mov $30, %rcx
rep movsb
nop
nop
nop
nop
nop
and $6881, %rdi
lea addresses_A_ht+0x9fd4, %r15
nop
nop
nop
nop
nop
cmp $57614, %r14
movw $0x6162, (%r15)
nop
nop
sub $48751, %rcx
lea addresses_A_ht+0x122a9, %r15
xor $10566, %rbp
mov (%r15), %rsi
nop
nop
nop
dec %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rdi
push %rsi

// Load
lea addresses_A+0x70a9, %rdi
sub %rsi, %rsi
mov (%rdi), %rax
nop
sub %r8, %r8

// Store
lea addresses_WT+0x1f108, %rax
clflush (%rax)
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %r15
movq %r15, (%rax)
nop
nop
sub %r8, %r8

// Store
lea addresses_A+0xfaed, %rdi
nop
xor %rbx, %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_WC+0x1a531, %r15
clflush (%r15)
nop
nop
xor $2659, %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movups %xmm2, (%r15)
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_D+0x11ad, %rsi
nop
nop
nop
nop
nop
sub %rbx, %rbx
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
add $10282, %r8

// Store
lea addresses_A+0x142e5, %rax
nop
nop
nop
nop
cmp %r15, %r15
movl $0x51525354, (%rax)
cmp $25938, %r15

// Store
lea addresses_WC+0x1ea9, %r8
nop
nop
dec %rbx
mov $0x5152535455565758, %rax
movq %rax, (%r8)
nop
sub $57907, %r8

// Store
lea addresses_WC+0x12129, %r8
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %rax
movq %rax, (%r8)
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_A+0x13aa9, %r9
nop
nop
nop
nop
add $4709, %rax
movups (%r9), %xmm6
vpextrq $1, %xmm6, %rsi
lea oracles, %r8
and $0xff, %rsi
shlq $12, %rsi
mov (%r8,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 1, '35': 21828}
00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
