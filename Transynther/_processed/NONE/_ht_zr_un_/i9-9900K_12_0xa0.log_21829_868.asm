.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x84d, %r9
nop
nop
nop
nop
xor $22799, %r12
movb (%r9), %al
nop
cmp $63124, %rbp
lea addresses_A_ht+0x1c12d, %rsi
lea addresses_D_ht+0x1ae6d, %rdi
clflush (%rsi)
clflush (%rdi)
and $36014, %r10
mov $1, %rcx
rep movsb
inc %r10
lea addresses_WT_ht+0x1f89, %rsi
lea addresses_A_ht+0x1ec2d, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %r10, %r10
mov $6, %rcx
rep movsq
nop
nop
nop
and %r12, %r12
lea addresses_WC_ht+0x1a39d, %r10
nop
nop
and $62158, %rbp
movw $0x6162, (%r10)
nop
nop
add %rax, %rax
lea addresses_normal_ht+0x174ad, %rsi
lea addresses_UC_ht+0x332d, %rdi
nop
nop
nop
nop
nop
sub $6490, %r12
mov $56, %rcx
rep movsq
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x1c2d, %rdi
sub $25985, %rbp
movb (%rdi), %r10b
nop
nop
nop
nop
sub $23911, %rbp
lea addresses_WC_ht+0x14fe9, %r9
clflush (%r9)
nop
dec %rbp
mov (%r9), %rsi
cmp $8070, %rdi
lea addresses_WC_ht+0xb542, %r9
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
and $0xffffffffffffffc0, %r9
vmovntdq %ymm1, (%r9)
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x17c75, %r10
nop
nop
nop
sub $20472, %r9
mov (%r10), %cx
nop
nop
nop
nop
and %r12, %r12
lea addresses_A_ht+0x537f, %rsi
cmp %rcx, %rcx
mov (%rsi), %rax
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x1cb85, %rsi
lea addresses_WT_ht+0x1d69d, %rdi
nop
nop
nop
nop
nop
dec %rax
mov $54, %rcx
rep movsl
nop
nop
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x17ed, %rbp
clflush (%rbp)
xor %rsi, %rsi
movl $0x61626364, (%rbp)
xor $62091, %r12
lea addresses_A_ht+0x992d, %rbp
nop
nop
nop
nop
nop
xor $946, %rsi
mov (%rbp), %rcx
nop
sub %rax, %rax
lea addresses_WT_ht+0xc56d, %rcx
and $42428, %rax
movl $0x61626364, (%rcx)
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %r9
push %rbx
push %rdi
push %rdx

// Store
lea addresses_WT+0x1f9ad, %r13
nop
nop
sub $62442, %rdi
movl $0x51525354, (%r13)
nop
nop
nop
nop
cmp %r9, %r9

// Store
mov $0x4cf, %r10
add $63658, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r10)
nop
add %rdi, %rdi

// Faulty Load
lea addresses_WT+0xb12d, %rbx
nop
nop
dec %r10
movups (%rbx), %xmm0
vpextrq $1, %xmm0, %rdi
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'44': 19640, '45': 2178, '69': 2, 'ff': 1, '00': 8}
44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 45 44 44 44 45 44 44 44 44 44 45 44 44 44 45 44 44 44 44 44 44 45 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 45 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 45 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 45 44 44 44 44 44 45 44 44 45 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 45 44 44 44 44 44 45 44 44 45 44 45 44 44 44 44 44 44 44 44 45 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 45 44 44 44 45 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 45 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 45 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 45 44 45 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 45 44 45 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 45 44 44 44 45 44 44 44 44 44 45 44 44 45 44 44 44 44 44 44 44 44 44 44 45 44 45 44 44 44 44 44 44 44 44 45 44 44 44 44 44 45 44 44 44 45 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 45 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 45 44 44 44 44 44 44 45 44 45 44 44 44 44 44 44 44 44 44 44 45 44 44 44 45 44 44 44 44 44 44 45 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 45 44 45 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44
*/
