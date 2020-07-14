.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x6a6c, %rsi
lea addresses_WC_ht+0x8330, %rdi
nop
nop
nop
nop
dec %r10
mov $5, %rcx
rep movsq
nop
nop
dec %rsi
lea addresses_UC_ht+0xe188, %rsi
lea addresses_A_ht+0xdc20, %rdi
nop
nop
nop
nop
nop
add %r8, %r8
mov $118, %rcx
rep movsb
nop
nop
xor $30539, %rsi
lea addresses_A_ht+0x150b0, %r13
nop
nop
nop
nop
sub $9721, %rcx
mov (%r13), %r10d
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x2ac8, %rcx
nop
inc %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
nop
nop
inc %r10
lea addresses_A_ht+0x8d30, %rsi
lea addresses_D_ht+0x123b0, %rdi
cmp %r10, %r10
mov $93, %rcx
rep movsb
nop
sub $53693, %r8
lea addresses_UC_ht+0x8469, %rsi
lea addresses_normal_ht+0xaa70, %rdi
sub $12424, %r14
mov $48, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x6d30, %r14
nop
nop
xor %r8, %r8
movw $0x6162, (%r14)
dec %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0xb272, %rsi
lea addresses_PSE+0xc764, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $75, %rcx
rep movsb
nop
add %rcx, %rcx

// Store
lea addresses_normal+0x5530, %rsi
nop
nop
nop
inc %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_WC+0x18810, %r10
cmp %r15, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
nop
inc %r12

// Load
lea addresses_PSE+0x3dd0, %rdi
nop
nop
nop
inc %r15
movb (%rdi), %r14b
nop
cmp %r15, %r15

// Store
lea addresses_normal+0x5530, %r14
clflush (%r14)
nop
xor $24562, %r10
movb $0x51, (%r14)
nop
nop
add %r14, %r14

// Store
lea addresses_WC+0xe2f0, %rdi
sub %r15, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
and %rdi, %rdi

// Store
lea addresses_RW+0x1b540, %r15
nop
nop
inc %r12
movb $0x51, (%r15)
nop
nop
nop
nop
nop
xor %r14, %r14

// Load
lea addresses_normal+0x1bc0, %rcx
nop
cmp %r12, %r12
mov (%rcx), %edi
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_US+0x1530, %r15
nop
cmp $48939, %rsi
movw $0x5152, (%r15)
nop
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_RW+0x17630, %rcx
nop
nop
and %rsi, %rsi
movb $0x51, (%rcx)
add $10263, %r15

// Store
lea addresses_normal+0x5530, %r10
nop
sub $11647, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r10)
nop
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_A+0x4274, %rcx
add $27220, %rsi
movb $0x51, (%rcx)
nop
nop
inc %r12

// Store
lea addresses_UC+0xba48, %rdi
nop
and %rsi, %rsi
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
cmp %r12, %r12

// Faulty Load
lea addresses_normal+0x5530, %r14
xor $44083, %r10
mov (%r14), %r15w
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 3}}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 10}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
