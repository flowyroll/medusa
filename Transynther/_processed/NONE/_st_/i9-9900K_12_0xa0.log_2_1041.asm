.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xcf2f, %rbp
nop
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %rax
movq %rax, %xmm0
movups %xmm0, (%rbp)
nop
cmp $38198, %r12
lea addresses_D_ht+0x11fcb, %rbx
nop
cmp %rax, %rax
movl $0x61626364, (%rbx)
nop
nop
cmp %rax, %rax
lea addresses_D_ht+0x1e483, %rbp
nop
nop
add $52823, %r9
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%rbp)
nop
inc %rbp
lea addresses_WC_ht+0x17e52, %r14
nop
nop
nop
nop
nop
cmp $8776, %rbx
movb (%r14), %r9b
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0x6c4d, %rsi
lea addresses_WC_ht+0xb26b, %rdi
nop
xor %rbx, %rbx
mov $20, %rcx
rep movsw
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x39db, %rcx
nop
cmp %rbx, %rbx
mov (%rcx), %r12d
nop
nop
nop
nop
xor $59949, %r12
lea addresses_WT_ht+0x1e1eb, %rsi
lea addresses_WT_ht+0x506b, %rdi
nop
cmp %r12, %r12
mov $58, %rcx
rep movsq
nop
dec %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rcx

// Load
lea addresses_D+0xac4b, %r10
nop
nop
nop
nop
dec %rcx
mov (%r10), %r15
nop
nop
nop
nop
nop
inc %r10

// Load
lea addresses_WT+0x71eb, %r9
nop
nop
nop
cmp $23848, %r13
mov (%r9), %r10w
nop
nop
sub %rbp, %rbp

// Store
lea addresses_RW+0xb7ec, %r13
clflush (%r13)
nop
nop
nop
sub %r9, %r9
movl $0x51525354, (%r13)
nop
nop
cmp $14078, %r10

// Store
lea addresses_normal+0x41eb, %r10
nop
nop
nop
nop
dec %r15
movw $0x5152, (%r10)

// Exception!!!
xor %rbp, %rbp
div %rbp
nop
nop
nop
nop
dec %r13

// Load
lea addresses_WC+0x4340, %r9
nop
nop
add %r8, %r8
mov (%r9), %r13

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r8
nop
nop
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_US+0xb2eb, %rcx
nop
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %r13
movq %r13, (%rcx)
nop
nop
nop
and %r8, %r8

// Faulty Load
lea addresses_normal+0x41eb, %rbp
nop
nop
nop
nop
nop
sub %r9, %r9
vmovups (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r15
lea oracles, %r10
and $0xff, %r15
shlq $12, %r15
mov (%r10,%r15,1), %r15
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': True, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': True, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'39': 1, '3b': 1}
39 3b
*/
