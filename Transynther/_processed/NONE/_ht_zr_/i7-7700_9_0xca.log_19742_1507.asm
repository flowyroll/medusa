.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x4454, %r9
clflush (%r9)
nop
nop
nop
nop
inc %r12
movw $0x6162, (%r9)
nop
nop
cmp %r10, %r10
lea addresses_WC_ht+0x1a574, %r15
nop
nop
nop
add %rax, %rax
mov (%r15), %edi
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0x1bccb, %r9
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm4
vmovups %ymm4, (%r9)
nop
nop
add $13647, %r15
lea addresses_D_ht+0x8134, %r10
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm2
and $0xffffffffffffffc0, %r10
movntdq %xmm2, (%r10)
nop
nop
nop
and $25415, %rbp
lea addresses_A_ht+0x1ce34, %rax
nop
nop
cmp $23804, %r10
movups (%rax), %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
nop
and $41839, %r15
lea addresses_normal_ht+0x5c34, %rax
nop
cmp %r10, %r10
movups (%rax), %xmm4
vpextrq $0, %xmm4, %r9
cmp $55229, %r15
lea addresses_D_ht+0x12cce, %r15
nop
cmp $64189, %r12
mov (%r15), %r10d
xor %r10, %r10
lea addresses_WC_ht+0x4c14, %r15
nop
and $57051, %rax
and $0xffffffffffffffc0, %r15
vmovntdqa (%r15), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r12
nop
nop
nop
inc %r12
lea addresses_WT_ht+0x16674, %rdi
nop
nop
and $22300, %r10
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
add $27253, %rax
lea addresses_normal_ht+0x16bb4, %rbp
nop
nop
nop
xor %r9, %r9
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_A_ht+0x151f4, %r10
add $49539, %rdi
vmovups (%r10), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r15
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x6c74, %r9
nop
cmp $55492, %r12
mov $0x6162636465666768, %rax
movq %rax, %xmm7
movups %xmm7, (%r9)
nop
sub %rax, %rax
lea addresses_normal_ht+0x3174, %rsi
lea addresses_A_ht+0x7e74, %rdi
nop
nop
nop
nop
xor $12770, %r9
mov $105, %rcx
rep movsw
nop
inc %r15
lea addresses_UC_ht+0x14074, %rsi
lea addresses_WC_ht+0xbc4c, %rdi
nop
and %r15, %r15
mov $23, %rcx
rep movsq
nop
nop
nop
sub $3847, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi

// Store
lea addresses_A+0x1d334, %rcx
clflush (%rcx)
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %r14
movq %r14, (%rcx)
nop
nop
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_RW+0xd274, %r9
nop
nop
inc %r13
movw $0x5152, (%r9)
nop
nop
nop
nop
and %r9, %r9

// Store
lea addresses_US+0x1bc74, %r9
nop
and %r8, %r8
movb $0x51, (%r9)
nop
nop
nop
nop
and $26313, %r14

// Store
lea addresses_US+0x1bc74, %rbp
nop
nop
nop
nop
dec %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rbp)
nop
nop
xor $44730, %r13

// Store
lea addresses_D+0x1ee0c, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %r9
movq %r9, (%rcx)
xor %r13, %r13

// Faulty Load
lea addresses_UC+0x11e74, %r8
nop
nop
nop
dec %r13
movups (%r8), %xmm1
vpextrq $1, %xmm1, %rcx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': True, 'size': 32, 'NT': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}}
{'44': 2349, '45': 444, '48': 644, '00': 16305}
00 45 00 00 00 00 00 48 00 00 44 00 00 00 00 00 00 00 44 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 44 44 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 45 44 00 00 45 00 00 00 00 00 00 00 00 48 44 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 44 48 44 00 44 00 00 44 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 44 00 48 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 48 00 00 00 00 00 44 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 48 00 00 00 00 44 00 44 00 44 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 44 00 44 00 00 44 44 44 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 45 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 48 00 00 00 45 00 00 00 00 44 00 00 00 45 44 00 00 00 00 44 00 00 00 00 48 00 00 00 00 00 44 44 48 00 00 44 00 00 00 00 00 00 00 00 00 00 44 44 00 44 00 00 00 44 44 00 00 00 00 00 44 00 00 00 00 45 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 48 00 44 00 44 48 44 48 00 00 48 48 00 00 00 48 00 00 00 48 00 00 00 48 00 00 00 44 00 00 00 00 00 00 00 00 00 45 48 44 44 00 00 00 00 44 44 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 44 45 00 00 48 00 48 00 00 00 00 44 00 00 00 00 00 44 00 00 44 00 00 00 44 00 00 00 00 00 45 48 44 48 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 48 44 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 48 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 48 00 00 00 00 00 48 00 00 45 00 00 44 00 44 44 00 00 00 00 48 00 00 48 00 44 00 00 00 44 48 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00
*/
