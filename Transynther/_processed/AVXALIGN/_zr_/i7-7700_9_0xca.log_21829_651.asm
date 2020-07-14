.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x5884, %rbp
nop
and $1972, %r9
movups (%rbp), %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
nop
add $6986, %r8
lea addresses_D_ht+0x1aa44, %r12
clflush (%r12)
nop
nop
and $29474, %r13
movw $0x6162, (%r12)
nop
nop
nop
nop
add %r12, %r12
lea addresses_WC_ht+0x7904, %rbp
clflush (%rbp)
nop
nop
nop
nop
sub %rbx, %rbx
mov $0x6162636465666768, %r12
movq %r12, %xmm0
and $0xffffffffffffffc0, %rbp
movaps %xmm0, (%rbp)
sub $40246, %rcx
lea addresses_UC_ht+0xf5de, %r8
nop
nop
cmp $11372, %rcx
mov (%r8), %ebp
nop
nop
nop
nop
add %r13, %r13
lea addresses_WT_ht+0x11d04, %rsi
lea addresses_WT_ht+0x109a4, %rdi
clflush (%rsi)
clflush (%rdi)
nop
dec %r12
mov $3, %rcx
rep movsq
nop
nop
nop
nop
sub %r9, %r9
lea addresses_WT_ht+0x3da6, %rsi
lea addresses_WC_ht+0x1b104, %rdi
clflush (%rsi)
nop
nop
nop
nop
dec %rbp
mov $112, %rcx
rep movsw
nop
xor $43482, %r9
lea addresses_normal_ht+0x3bc4, %rsi
lea addresses_A_ht+0x11244, %rdi
nop
cmp $57116, %rbx
mov $5, %rcx
rep movsl
cmp %r13, %r13
lea addresses_A_ht+0xa444, %r8
nop
nop
cmp $4788, %r13
movb (%r8), %r12b
nop
nop
nop
nop
add $42407, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r15
push %r8
push %rax

// Load
lea addresses_PSE+0x6104, %r14
sub %rax, %rax
mov (%r14), %r8w
nop
nop
nop
xor $18289, %r12

// Store
mov $0xcc4, %r12
nop
nop
nop
nop
cmp $7804, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm1
movups %xmm1, (%r12)
nop
nop
nop
and %rax, %rax

// Store
lea addresses_UC+0x10404, %r8
nop
nop
nop
nop
nop
inc %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm6
movups %xmm6, (%r8)
nop
nop
nop
xor $59655, %r10

// Store
lea addresses_WT+0x1d078, %r14
nop
sub %r12, %r12
movb $0x51, (%r14)
nop
xor %r8, %r8

// Store
mov $0x4f649c0000000d04, %r14
nop
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm7
vmovups %ymm7, (%r14)
nop
nop
nop
cmp $21010, %r8

// Store
lea addresses_US+0x10104, %r14
nop
add $22600, %r12
movl $0x51525354, (%r14)
sub %r15, %r15

// Store
lea addresses_US+0x37de, %r10
nop
nop
nop
nop
nop
dec %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm4
movups %xmm4, (%r10)
nop
nop
cmp %r12, %r12

// Faulty Load
lea addresses_US+0x10104, %r8
nop
nop
nop
nop
nop
and $59363, %r14
vmovaps (%r8), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r10
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 7, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
