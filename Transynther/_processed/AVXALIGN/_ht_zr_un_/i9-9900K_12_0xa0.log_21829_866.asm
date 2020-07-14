.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x6f7b, %rsi
lea addresses_normal_ht+0x137bb, %rdi
clflush (%rsi)
nop
nop
nop
xor $59165, %r10
mov $12, %rcx
rep movsb
nop
nop
nop
nop
and %r8, %r8
lea addresses_WC_ht+0x83bb, %r12
nop
sub $40805, %r14
movb (%r12), %cl
add %r8, %r8
lea addresses_D_ht+0x47bb, %rcx
cmp %rsi, %rsi
movw $0x6162, (%rcx)
nop
nop
xor $45760, %r10
lea addresses_D_ht+0x7d13, %rsi
lea addresses_D_ht+0x1a3bb, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $60921, %r10
mov $11, %rcx
rep movsq
nop
nop
sub %r8, %r8
lea addresses_D_ht+0x195c3, %rsi
lea addresses_normal_ht+0x93bb, %rdi
nop
nop
nop
add $41840, %r12
mov $97, %rcx
rep movsw
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0x194bb, %r10
nop
nop
sub $29762, %r14
mov (%r10), %ecx
add $6594, %rcx
lea addresses_normal_ht+0xd9bb, %rsi
lea addresses_A_ht+0x1157b, %rdi
nop
nop
nop
nop
sub %rax, %rax
mov $118, %rcx
rep movsl
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x1bb, %rsi
lea addresses_WT_ht+0x93bb, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $117, %rcx
rep movsl
add %rdi, %rdi
lea addresses_WT_ht+0x172b1, %r14
nop
nop
nop
nop
cmp $41308, %rsi
mov (%r14), %eax
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_A_ht+0xf63b, %r10
nop
nop
add $21073, %rsi
mov (%r10), %r12
nop
nop
nop
nop
nop
sub $56920, %rsi
lea addresses_WC_ht+0xe3bb, %rsi
lea addresses_D_ht+0x1d905, %rdi
xor $21552, %r8
mov $88, %rcx
rep movsl
nop
cmp $5617, %rsi
lea addresses_WT_ht+0x1abbb, %rsi
lea addresses_normal_ht+0x9d3b, %rdi
clflush (%rdi)
cmp $29071, %rax
mov $82, %rcx
rep movsl
xor %rcx, %rcx
lea addresses_D_ht+0x563b, %rsi
lea addresses_WC_ht+0xdcbb, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
mov $44, %rcx
rep movsq
xor $20821, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdx

// Store
lea addresses_UC+0x129bb, %rax
add %r9, %r9
movb $0x51, (%rax)
nop
nop
nop
nop
dec %rax

// Store
lea addresses_UC+0x1e45b, %rcx
nop
nop
nop
nop
dec %rax
mov $0x5152535455565758, %r13
movq %r13, (%rcx)

// Exception!!!
nop
nop
nop
nop
mov (0), %r14
xor %r14, %r14

// Store
lea addresses_normal+0xebbb, %rdx
nop
nop
nop
nop
and %rbp, %rbp
movb $0x51, (%rdx)
and $40484, %r13

// Store
lea addresses_normal+0x163bb, %rdx
nop
nop
and %rbp, %rbp
movl $0x51525354, (%rdx)
nop
nop
nop
nop
add %r9, %r9

// Faulty Load
lea addresses_A+0x153bb, %r13
nop
nop
nop
nop
nop
dec %rdx
movntdqa (%r13), %xmm1
vpextrq $1, %xmm1, %rcx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_normal', 'AVXalign': True, 'size': 4}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'44': 4337, '46': 5101, '49': 1542, '00': 4759, '48': 6088, '08': 2}
46 46 46 44 44 00 44 00 48 48 00 48 44 46 46 44 46 00 46 46 46 00 44 00 46 46 00 46 46 48 49 00 44 00 44 44 00 44 46 49 46 46 46 44 00 46 46 49 46 00 49 00 49 49 49 00 44 44 49 00 46 00 44 46 46 00 00 49 44 00 00 49 46 00 49 44 49 48 44 49 46 00 46 49 49 00 46 49 44 44 49 46 46 44 00 44 44 46 00 46 00 46 00 44 49 49 00 00 44 44 46 46 00 44 00 44 46 46 44 44 46 49 46 00 46 00 46 48 46 48 00 48 00 44 48 46 00 48 00 48 46 48 48 48 48 48 44 46 46 48 00 44 00 48 46 00 00 00 48 00 44 00 48 48 48 46 00 48 48 44 48 48 48 48 48 44 48 00 00 48 00 46 00 48 44 00 44 48 48 48 46 48 46 44 48 48 00 44 46 48 46 48 48 48 48 48 00 48 48 44 48 46 00 48 48 44 44 00 48 44 00 00 49 49 00 46 00 46 00 46 00 49 00 49 46 00 46 49 46 49 00 00 44 46 46 00 00 46 44 00 00 00 44 46 46 00 44 49 44 44 44 49 49 46 46 44 46 44 46 49 46 00 00 44 49 46 46 44 46 49 44 00 44 46 44 44 00 00 00 44 44 49 44 44 49 49 00 46 46 44 46 49 49 44 46 46 00 44 49 49 46 44 44 49 49 46 46 49 46 44 44 49 00 00 00 44 44 44 44 46 44 44 46 44 48 46 00 48 46 48 46 00 44 00 46 46 00 00 48 48 46 46 46 46 44 00 46 46 48 00 48 46 00 48 44 44 46 48 46 44 48 00 48 46 48 44 48 48 48 00 46 44 48 48 46 46 48 48 46 48 44 00 48 46 48 44 46 44 46 46 44 46 46 44 48 00 48 48 48 46 48 00 46 48 48 46 00 48 44 44 00 00 44 48 48 00 48 46 46 49 46 44 46 44 00 00 49 00 00 49 00 46 46 49 46 46 46 49 49 46 00 49 46 49 46 48 44 46 44 44 46 46 46 49 46 46 44 49 44 46 49 44 49 49 44 46 49 49 00 49 44 46 49 46 46 46 46 44 44 44 44 44 49 49 48 48 48 48 46 00 49 49 49 44 00 00 44 00 49 46 46 00 49 46 44 00 00 44 46 49 44 49 46 44 49 49 46 46 00 46 44 49 46 00 46 00 46 00 49 00 46 49 00 49 46 44 00 46 46 00 00 49 00 00 46 46 49 00 46 46 46 46 46 00 44 49 49 46 49 49 44 00 46 49 44 46 00 44 44 00 46 46 44 00 44 00 46 46 46 46 46 46 44 44 48 46 00 48 48 48 48 48 00 46 48 00 44 48 46 48 00 48 46 48 48 48 48 00 46 48 48 48 44 44 48 48 00 48 48 44 46 48 46 00 44 48 46 46 44 48 00 48 00 44 48 48 46 48 44 00 48 48 48 48 00 48 00 48 46 00 44 00 00 46 44 46 48 44 00 46 44 48 48 49 00 48 00 46 46 48 46 48 48 48 46 00 44 48 46 48 48 46 48 48 48 48 00 48 00 00 00 00 48 46 48 00 00 44 48 00 46 48 00 44 48 48 44 44 46 48 44 48 46 48 48 44 00 00 48 48 44 48 48 00 48 46 00 44 48 48 00 00 44 44 00 48 46 46 48 48 00 44 48 46 46 44 46 48 48 44 00 48 48 48 48 00 48 48 00 00 00 00 48 00 00 48 48 44 46 46 48 46 48 48 48 48 48 00 48 48 48 00 44 00 46 44 48 48 48 48 48 00 48 44 48 46 46 00 48 48 48 44 48 46 48 48 46 00 44 48 48 46 44 46 48 48 44 46 48 00 48 48 48 46 48 48 46 00 44 00 48 48 48 46 48 00 44 44 48 46 44 46 48 46 48 46 48 48 48 48 48 44 48 00 46 49 00 00 44 46 46 46 46 46 46 44 00 00 49 49 00 46 46 46 49 49 49 49 46 46 44 49 46 00 44 44 49 00 44 00 46 44 44 49 49 44 49 49 44 49 49 44 00 00 44 44 44 00 44 00 00 46 00 00 44 46 00 48 44 48 00 44 48 00 44 46 00 46 48 48 46 46 44 44 00 46 00 46 00 44 44 48 44 44 00 48 48 48 44 48 00 00 48 00 46 00 00 00 48 00 46 48 48 46 44 46 44 00 48 44 48 46 48 48 48 48 00 44 48 00 00 48 48 00 48 46 00 44 44 44
*/
