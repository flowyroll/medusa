.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xb583, %r15
nop
nop
nop
nop
xor $49943, %rbx
mov (%r15), %rax
nop
nop
add $53636, %r8
lea addresses_WC_ht+0x1dc83, %rbx
nop
nop
cmp $5710, %r8
movb (%rbx), %r15b
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x15083, %rax
nop
nop
nop
nop
nop
dec %rdx
mov (%rax), %edi
nop
sub $18964, %rdi
lea addresses_WT_ht+0x12203, %r15
nop
nop
nop
and %r10, %r10
movw $0x6162, (%r15)
nop
sub $14920, %r8
lea addresses_WC_ht+0x6683, %r15
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
and $0xffffffffffffffc0, %r15
vmovntdq %ymm0, (%r15)
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0xd703, %rdi
add %rax, %rax
mov (%rdi), %r8
nop
nop
inc %rbx
lea addresses_D_ht+0x3883, %rbx
nop
add %rdi, %rdi
movl $0x61626364, (%rbx)
xor $19602, %r10
lea addresses_D_ht+0x9e47, %rsi
lea addresses_WC_ht+0x1e611, %rdi
clflush (%rdi)
cmp $9567, %rax
mov $61, %rcx
rep movsl
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0xb683, %rbx
xor $51721, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm5
vmovups %ymm5, (%rbx)
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0x1b883, %rsi
lea addresses_WC_ht+0x9683, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %rax, %rax
mov $76, %rcx
rep movsl
and %r8, %r8
lea addresses_A_ht+0x1a8e3, %rax
clflush (%rax)
nop
nop
dec %rdi
mov (%rax), %r10d
nop
nop
nop
nop
nop
add $9592, %r15
lea addresses_A_ht+0xc883, %rsi
lea addresses_normal_ht+0x14a83, %rdi
nop
nop
xor $35878, %r15
mov $76, %rcx
rep movsl
nop
nop
nop
add $30467, %rsi
lea addresses_WT_ht+0x160d3, %rbx
nop
nop
nop
nop
inc %r8
movw $0x6162, (%rbx)
cmp %rsi, %rsi
lea addresses_A_ht+0x4765, %rcx
add $50168, %rdi
movl $0x61626364, (%rcx)
nop
lfence
lea addresses_D_ht+0x6a83, %rsi
lea addresses_WT_ht+0x145c3, %rdi
nop
sub %r8, %r8
mov $73, %rcx
rep movsl
add $57133, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rbx
push %rdi
push %rdx

// Store
lea addresses_D+0xe0cb, %r9
inc %r10
movw $0x5152, (%r9)
dec %r10

// Faulty Load
lea addresses_US+0x1a883, %rdi
nop
nop
and $40975, %rbx
movb (%rdi), %r10b
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'00': 64}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
