.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x5afc, %r14
nop
nop
nop
nop
nop
and %rdx, %rdx
mov (%r14), %r12d
nop
sub %rdx, %rdx
lea addresses_A_ht+0x140c8, %rsi
lea addresses_UC_ht+0x37d5, %rdi
nop
nop
nop
cmp $5093, %r12
mov $68, %rcx
rep movsb
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x185ec, %rdi
nop
dec %rsi
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x100fc, %rsi
lea addresses_A_ht+0x2fc, %rdi
nop
nop
nop
nop
cmp %r8, %r8
mov $18, %rcx
rep movsb
nop
nop
nop
nop
add $5292, %rcx
lea addresses_A_ht+0x103fc, %rsi
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov (%rsi), %dx
add $27664, %r12
lea addresses_A_ht+0x1723c, %rsi
lea addresses_WT_ht+0x1b48c, %rdi
clflush (%rdi)
nop
nop
cmp $52354, %r15
mov $103, %rcx
rep movsb
and %r8, %r8
lea addresses_A_ht+0x3efc, %rsi
lea addresses_normal_ht+0x1e9fc, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $57, %rcx
rep movsl
nop
nop
nop
nop
cmp $59620, %r15
lea addresses_normal_ht+0x16fc, %rsi
lea addresses_A_ht+0xb0c2, %rdi
nop
nop
and $43260, %r8
mov $100, %rcx
rep movsq
nop
nop
nop
nop
cmp %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_US+0x1a754, %r9
sub $57218, %r10
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r9)
nop
and $24430, %rbp

// Store
lea addresses_US+0x1e8fc, %rsi
nop
nop
nop
nop
cmp $36040, %rdi
movw $0x5152, (%rsi)
nop
nop
nop
nop
inc %r15

// REPMOV
lea addresses_WT+0xaffc, %rsi
lea addresses_UC+0x157fc, %rdi
nop
nop
nop
nop
nop
xor $56863, %r10
mov $64, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $57814, %rbp

// Store
lea addresses_PSE+0xef70, %rcx
nop
nop
nop
nop
nop
and $46415, %r8
movw $0x5152, (%rcx)
xor %rdi, %rdi

// REPMOV
lea addresses_RW+0x16afc, %rsi
lea addresses_RW+0x12efc, %rdi
nop
nop
nop
and $48145, %rbp
mov $102, %rcx
rep movsq
nop
nop
nop
nop
cmp $24444, %rbp

// Faulty Load
lea addresses_A+0x1b2fc, %rsi
nop
nop
nop
nop
xor %r9, %r9
mov (%rsi), %r8w
lea oracles, %r8
and $0xff, %r8
shlq $12, %r8
mov (%r8,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_RW'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_RW'}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'src': {'same': True, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'10': 1}
10
*/
