.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xa3, %r14
clflush (%r14)
and $52478, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r14)
nop
nop
nop
nop
dec %r14
lea addresses_UC_ht+0x141ab, %r10
nop
nop
nop
nop
nop
xor $55284, %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm0
and $0xffffffffffffffc0, %r10
movntdq %xmm0, (%r10)
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x1d7eb, %r10
nop
cmp $27003, %rbp
mov $0x6162636465666768, %r15
movq %r15, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
nop
sub $46771, %rcx
lea addresses_WT_ht+0x1c8b3, %rsi
lea addresses_D_ht+0xf6e3, %rdi
inc %r13
mov $76, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_A_ht+0x7ab, %rsi
lea addresses_UC_ht+0x1dba3, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $12, %rcx
rep movsq
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x133d7, %r12
nop
add $48939, %r15
movb (%r12), %cl
and $22444, %r10
lea addresses_WT_ht+0x931a, %rsi
lea addresses_A_ht+0xd7c3, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $63, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0xd3e3, %r14
nop
and $46359, %r10
mov (%r14), %r12w
nop
nop
sub $10801, %r14
lea addresses_WT_ht+0xf763, %r12
clflush (%r12)
add %r13, %r13
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x10763, %rsi
lea addresses_A_ht+0x12263, %rdi
nop
nop
nop
xor $1898, %r14
mov $54, %rcx
rep movsq
and $15511, %r12
lea addresses_WT_ht+0x5f3, %rsi
lea addresses_WT_ht+0x1a563, %rdi
clflush (%rsi)
nop
nop
nop
nop
add $31413, %r10
mov $41, %rcx
rep movsq
xor %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rbx
push %rcx

// Load
mov $0x54f, %rcx
nop
nop
nop
dec %rbx
mov (%rcx), %ebp
nop
nop
nop
and %rcx, %rcx

// Store
mov $0x3d07200000000ab3, %r14
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
vmovups %ymm2, (%r14)
nop
nop
nop
nop
add $24302, %rbp

// Store
lea addresses_WT+0x1e723, %r12
nop
nop
xor %r14, %r14
movw $0x5152, (%r12)
nop
nop
nop
xor $44456, %rcx

// Store
mov $0x29f20000000b6b, %r14
cmp $7503, %rbp
movw $0x5152, (%r14)
nop
xor %r14, %r14

// Store
lea addresses_RW+0x99e7, %rbx
and $58710, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%rbx)
nop
xor $21512, %r14

// Store
lea addresses_PSE+0x172e3, %r14
cmp $30905, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%r14)
nop
nop
cmp $19028, %rcx

// Load
lea addresses_UC+0x3f63, %rbx
nop
nop
xor %r14, %r14
mov (%rbx), %cx
nop
nop
dec %rcx

// Store
lea addresses_WT+0x1f223, %r12
nop
and $17686, %rbx
movb $0x51, (%r12)
nop
nop
nop
nop
nop
add $39002, %r13

// Faulty Load
lea addresses_US+0x1bf63, %rbp
nop
nop
cmp $13783, %r13
mov (%rbp), %r8
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_WT_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
