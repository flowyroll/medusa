.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x4348, %r10
nop
and $24674, %rdx
movb (%r10), %r14b
nop
nop
nop
nop
nop
xor $61553, %rbx
lea addresses_UC_ht+0x13648, %rsi
lea addresses_WC_ht+0x1a5a8, %rdi
clflush (%rdi)
nop
sub $64451, %rdx
mov $17, %rcx
rep movsq
xor %rbx, %rbx
lea addresses_normal_ht+0x18748, %rdx
clflush (%rdx)
nop
inc %rcx
movw $0x6162, (%rdx)
nop
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_normal+0x1bdc0, %rax
clflush (%rax)
nop
nop
nop
and $57905, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rax)
xor %r14, %r14

// Load
lea addresses_normal+0x1dd48, %rax
nop
nop
nop
nop
and $57535, %r12
mov (%rax), %r14
nop
nop
nop
nop
and %r12, %r12

// Store
lea addresses_D+0x1e438, %r15
nop
nop
nop
sub %r14, %r14
movl $0x51525354, (%r15)
nop
nop
add %rcx, %rcx

// Load
lea addresses_WT+0x18e48, %r14
nop
nop
add $45721, %rbx
movups (%r14), %xmm7
vpextrq $1, %xmm7, %rbp
nop
nop
nop
nop
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_US+0x10e48, %rbx
nop
nop
nop
cmp %r14, %r14
movb (%rbx), %r15b
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 161}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
