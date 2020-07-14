.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1e7b6, %rsi
lea addresses_WC_ht+0xd9d6, %rdi
nop
and %rbx, %rbx
mov $124, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $219, %rbp
lea addresses_WC_ht+0xd4f6, %r8
nop
xor $38509, %r12
movups (%r8), %xmm1
vpextrq $1, %xmm1, %rbx
xor $29870, %rbx
lea addresses_WT_ht+0x7af6, %rbp
add %rdi, %rdi
movb (%rbp), %r8b
nop
nop
nop
sub %r12, %r12
lea addresses_WC_ht+0x1a5b6, %r8
nop
nop
xor $15548, %rdi
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
inc %r12
lea addresses_WT_ht+0x190ca, %rsi
lea addresses_D_ht+0x1a012, %rdi
nop
nop
dec %r13
mov $17, %rcx
rep movsl
nop
nop
nop
cmp %r13, %r13
lea addresses_UC_ht+0x64f6, %rsi
lea addresses_A_ht+0x13f86, %rdi
nop
nop
and %rbp, %rbp
mov $74, %rcx
rep movsq
nop
nop
nop
nop
xor $6251, %r13
lea addresses_D_ht+0x128f6, %rdi
sub %rcx, %rcx
movb $0x61, (%rdi)
nop
nop
sub $48083, %rbp
lea addresses_D_ht+0xe4f6, %rcx
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%rcx), %r13
and $57904, %rbp
lea addresses_A_ht+0x2ad2, %rsi
lea addresses_A_ht+0x6f6, %rdi
nop
nop
nop
nop
nop
and %r12, %r12
mov $109, %rcx
rep movsq
nop
nop
nop
nop
add %r13, %r13
lea addresses_A_ht+0xf6f6, %rbx
nop
nop
nop
cmp %rcx, %rcx
mov (%rbx), %r12d
sub $17899, %rcx
lea addresses_normal_ht+0x184fa, %r12
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm5
movups %xmm5, (%r12)
nop
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0xdef6, %rsi
nop
nop
nop
inc %r8
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
nop
nop
dec %r12
lea addresses_normal_ht+0x1dbec, %rbp
nop
nop
add %r8, %r8
movl $0x61626364, (%rbp)
nop
nop
nop
nop
xor $38807, %r13
lea addresses_UC_ht+0x4a94, %rsi
lea addresses_A_ht+0x10e3a, %rdi
nop
nop
nop
nop
add $16218, %r8
mov $83, %rcx
rep movsb
nop
nop
sub $26690, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_PSE+0xb376, %rax
nop
nop
and %r10, %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm6
movups %xmm6, (%rax)
nop
nop
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_PSE+0x1bef6, %rcx
nop
nop
nop
nop
inc %rdx
movb $0x51, (%rcx)
sub %r10, %r10

// Load
lea addresses_WC+0x168f6, %rax
nop
nop
nop
nop
and %r9, %r9
movb (%rax), %r14b
nop
nop
nop
nop
add $26287, %rax

// Store
lea addresses_A+0x142f6, %rdx
cmp $39103, %rax
mov $0x5152535455565758, %r10
movq %r10, (%rdx)
xor $55170, %rdi

// Store
lea addresses_D+0x1e126, %r9
clflush (%r9)
nop
nop
nop
cmp %r10, %r10
movl $0x51525354, (%r9)
nop
nop
nop
add %rax, %rax

// Store
lea addresses_A+0x1e99e, %rdi
inc %rax
mov $0x5152535455565758, %r9
movq %r9, %xmm0
and $0xffffffffffffffc0, %rdi
movntdq %xmm0, (%rdi)
nop
nop
nop
nop
nop
and $2542, %r9

// Store
lea addresses_UC+0x162f6, %rax
nop
and $56133, %r14
movb $0x51, (%rax)
nop
cmp %r10, %r10

// Faulty Load
lea addresses_US+0xdaf6, %rdi
nop
nop
nop
sub %rdx, %rdx
mov (%rdi), %r10
lea oracles, %r9
and $0xff, %r10
shlq $12, %r10
mov (%r9,%r10,1), %r10
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
