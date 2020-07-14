.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x18acb, %r15
clflush (%r15)
nop
nop
inc %rbp
mov $0x6162636465666768, %r14
movq %r14, %xmm2
and $0xffffffffffffffc0, %r15
vmovaps %ymm2, (%r15)
nop
nop
xor %rax, %rax
lea addresses_WT_ht+0x17fff, %r10
nop
nop
nop
add %rbx, %rbx
movw $0x6162, (%r10)
sub $1364, %r10
lea addresses_D_ht+0x14968, %rsi
lea addresses_WT_ht+0x84e7, %rdi
dec %r9
mov $110, %rcx
rep movsl
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x9fb7, %rdi
clflush (%rdi)
nop
nop
nop
xor $62845, %rcx
mov (%rdi), %esi
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0x4e77, %r9
nop
and %rdi, %rdi
and $0xffffffffffffffc0, %r9
movaps (%r9), %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
nop
nop
add $50667, %rbp
lea addresses_UC_ht+0xb2e7, %rsi
lea addresses_UC_ht+0x6ee7, %rdi
nop
cmp %r15, %r15
mov $68, %rcx
rep movsq
nop
nop
nop
nop
sub $56416, %rcx
lea addresses_A_ht+0xd227, %rsi
lea addresses_normal_ht+0x1e0e7, %rdi
nop
nop
nop
nop
and %r10, %r10
mov $63, %rcx
rep movsl
nop
nop
nop
nop
cmp $22912, %rbp
lea addresses_normal_ht+0xfea7, %rbp
xor $9519, %r9
mov (%rbp), %rsi
nop
nop
nop
nop
dec %r15
lea addresses_normal_ht+0x19497, %rbx
nop
nop
nop
sub $50300, %rdi
movl $0x61626364, (%rbx)
nop
nop
inc %rdi
lea addresses_A_ht+0xdcdf, %rcx
nop
nop
sub %r14, %r14
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbx
nop
and $35784, %rsi
lea addresses_UC_ht+0xc4e7, %rbp
nop
nop
add $4179, %rdi
movw $0x6162, (%rbp)
nop
inc %rax
lea addresses_A_ht+0x124e7, %rsi
nop
nop
nop
sub $53064, %r9
mov (%rsi), %r14d
nop
nop
nop
nop
nop
sub $40475, %rax
lea addresses_normal_ht+0x3267, %rbx
clflush (%rbx)
nop
and $64906, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
nop
add %r15, %r15
lea addresses_UC_ht+0x3317, %rbx
nop
nop
nop
nop
add $44455, %r14
movups (%rbx), %xmm6
vpextrq $0, %xmm6, %r9
nop
nop
and %r15, %r15
lea addresses_normal_ht+0xd8e7, %rsi
lea addresses_D_ht+0x1ef27, %rdi
nop
nop
nop
xor $32616, %rbx
mov $75, %rcx
rep movsl
nop
nop
nop
cmp $30220, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdx

// Store
lea addresses_UC+0x8727, %rcx
clflush (%rcx)
and %rbp, %rbp
movl $0x51525354, (%rcx)
and %r13, %r13

// Store
lea addresses_PSE+0x1bb07, %r13
nop
nop
nop
nop
and $14264, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%r13)
nop
nop
nop
cmp %rdx, %rdx

// Faulty Load
lea addresses_US+0x124e7, %r9
nop
nop
nop
dec %rdx
vmovntdqa (%r9), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': True, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 4}}
{'src': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'44': 214, '46': 6550, '08': 1, '00': 2389, '45': 1221, '47': 11451, 'ff': 3}
47 47 46 47 47 45 47 46 47 46 47 46 47 00 46 00 47 46 47 00 47 46 47 46 47 47 46 47 00 47 46 47 47 46 47 00 47 46 47 47 46 47 00 47 46 47 47 46 47 46 47 47 46 47 47 47 00 47 00 47 46 47 46 00 00 45 47 46 47 46 00 00 47 46 47 45 47 46 47 00 45 47 46 47 47 47 46 47 46 47 00 47 46 47 46 47 47 46 47 46 47 46 47 47 47 46 47 44 47 00 47 46 47 47 46 47 46 47 46 47 00 45 47 46 47 45 47 46 47 46 47 47 46 00 46 47 46 47 00 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 00 47 46 47 47 46 47 46 47 47 46 47 00 45 47 46 47 47 46 47 00 47 46 47 45 47 46 47 46 47 46 47 46 47 46 47 46 47 46 47 00 47 46 47 47 46 47 47 47 46 47 00 45 47 46 47 45 47 46 47 46 47 47 46 00 47 46 47 46 47 00 47 46 47 47 46 47 47 47 00 00 00 45 47 46 47 46 47 00 47 46 47 47 46 47 46 47 47 46 47 00 47 44 47 00 47 46 47 00 45 47 46 47 45 47 46 47 46 47 47 00 47 46 47 46 47 47 46 47 46 00 46 45 47 00 47 46 47 46 47 47 46 47 00 47 46 47 47 47 46 47 00 47 46 47 46 47 47 46 47 46 47 46 47 00 46 47 00 47 46 47 45 47 00 47 46 47 46 47 00 45 47 46 47 46 47 00 45 47 46 47 46 00 00 47 46 47 47 45 47 46 47 46 47 00 47 46 00 46 47 46 47 46 47 46 47 46 47 00 47 46 47 46 47 47 47 00 47 45 47 46 47 46 47 47 46 47 46 47 46 47 47 46 47 00 47 46 47 47 46 47 00 47 46 47 47 47 00 47 46 47 47 46 47 46 47 46 00 00 45 47 46 47 47 46 47 46 47 46 47 46 47 46 47 46 45 47 46 47 47 46 47 47 46 00 00 47 46 47 47 46 47 46 47 47 45 47 46 47 46 00 00 46 47 00 47 46 00 47 46 47 46 47 00 45 47 46 47 46 47 46 47 46 47 46 47 47 47 46 47 00 47 46 47 46 47 00 47 46 47 00 45 47 46 47 47 47 46 47 47 46 47 46 47 00 47 46 47 47 46 47 46 47 46 47 47 45 47 46 47 46 00 47 46 47 00 47 46 47 00 47 46 47 47 00 47 46 47 47 45 47 46 47 46 47 00 47 46 47 47 46 47 47 46 47 46 47 46 47 46 47 47 46 47 47 46 47 00 45 47 46 47 46 47 46 47 46 47 47 47 46 47 46 47 47 47 46 47 46 47 46 47 46 47 46 47 47 46 47 46 47 00 46 47 00 47 46 47 46 47 47 45 47 46 47 46 47 46 47 46 47 47 46 00 00 47 46 47 00 47 46 47 46 00 47 46 47 00 47 46 47 46 47 47 45 47 46 47 47 46 47 46 47 47 46 47 46 47 00 47 00 47 46 45 47 46 47 47 46 47 00 47 46 47 46 47 47 45 47 00 47 46 47 47 46 47 47 45 47 46 47 46 47 00 47 46 47 00 45 47 46 47 46 47 47 46 47 46 47 46 47 47 45 47 46 47 00 47 46 47 46 47 46 47 46 47 47 46 47 47 46 47 00 47 46 47 46 47 47 47 46 47 00 47 46 45 47 46 47 44 47 00 47 46 47 47 46 47 46 47 47 45 47 46 47 45 47 46 47 46 47 47 46 47 47 45 47 46 47 46 47 00 45 47 46 47 46 47 47 46 47 46 47 47 47 46 47 46 47 00 47 46 47 47 47 46 47 44 47 46 47 46 47 47 46 47 46 47 46 47 00 45 47 00 45 47 46 47 47 46 47 46 47 46 47 46 47 46 47 47 47 46 47 46 47 46 45 47 46 47 47 46 47 00 47 46 47 47 46 00 46 47 46 47 46 47 00 47 46 47 47 46 00 47 47 46 45 47 47 46 47 47 45 47 46 47 46 47 47 46 00 00 47 46 47 47 46 47 00 47 46 47 46 47 00 47 46 47 46 47 00 45 47 46 47 46 47 00 47 46 47 46 47 46 47 00 45 47 46 47 46 47 46 47 47 47 46 47 00 45 47 46 47 47 46 47 00 45 47 46 47 47 44 47 46 47 46 47 47 46 47 00 45 47 46 00 46 47 00 47 46 47 47 47 46 47 47 45 47 46 47 46 47 47
*/
