.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x259e, %rsi
lea addresses_WC_ht+0xd91e, %rdi
nop
nop
and $3560, %r8
mov $28, %rcx
rep movsb
nop
nop
nop
nop
sub $40141, %r9
lea addresses_WT_ht+0x10196, %r10
sub $50855, %r12
movb $0x61, (%r10)
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rbp
push %rdi
push %rdx

// Store
lea addresses_WT+0x9cfa, %rbp
nop
xor %r9, %r9
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
xor $51535, %rbp

// Store
lea addresses_UC+0x8e6, %r14
sub %rdi, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
nop
add %rbp, %rbp

// Store
mov $0xa1e, %r8
cmp $52090, %r9
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
sub $61944, %r8

// Store
lea addresses_PSE+0x1b086, %r14
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movntdq %xmm4, (%r14)
nop
nop
and $31394, %r10

// Load
lea addresses_RW+0xae9e, %rbp
nop
nop
nop
dec %rdx
mov (%rbp), %edi
cmp %rdx, %rdx

// Store
lea addresses_US+0xf882, %r10
nop
nop
nop
nop
and %r14, %r14
movw $0x5152, (%r10)
nop
nop
nop
dec %r9

// Store
lea addresses_A+0x1bbee, %rbp
xor $43040, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovaps %ymm4, (%rbp)
nop
nop
and $65047, %rdx

// Load
mov $0x11e, %rdi
nop
nop
nop
xor %r14, %r14
mov (%rdi), %r9w
nop
nop
nop
cmp %r9, %r9

// Faulty Load
lea addresses_RW+0x10d1e, %r10
xor %r9, %r9
mov (%r10), %edx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A', 'AVXalign': True, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'32': 9}
32 32 32 32 32 32 32 32 32
*/
