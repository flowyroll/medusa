.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x19318, %rsi
lea addresses_WC_ht+0x4518, %rdi
nop
nop
nop
nop
sub %r14, %r14
mov $3, %rcx
rep movsl
nop
nop
nop
sub $25301, %r10
lea addresses_A_ht+0xeb32, %r8
nop
nop
add $28271, %rbx
mov (%r8), %si
nop
inc %r10
lea addresses_UC_ht+0x1230c, %rsi
lea addresses_A_ht+0x8b98, %rdi
nop
nop
nop
nop
cmp $844, %r12
mov $121, %rcx
rep movsq
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x59c8, %rsi
lea addresses_WT_ht+0xbab0, %rdi
and $46622, %r10
mov $40, %rcx
rep movsl
cmp %r8, %r8
lea addresses_UC_ht+0x16c60, %r8
nop
cmp %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%r8)
nop
nop
nop
cmp $48963, %r14
lea addresses_A_ht+0x10c38, %rsi
lea addresses_WC_ht+0x19118, %rdi
nop
nop
nop
nop
nop
xor $26452, %r12
mov $114, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_A_ht+0x1e318, %r14
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %rbx
movq %rbx, (%r14)
nop
nop
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x1e918, %rsi
lea addresses_normal_ht+0x1ec18, %rdi
add %rbx, %rbx
mov $33, %rcx
rep movsb
nop
sub $43987, %rsi
lea addresses_WT_ht+0x9e90, %rbx
nop
nop
nop
nop
nop
add $59289, %rcx
movb (%rbx), %r14b
add $20703, %r10
lea addresses_D_ht+0x15918, %r8
clflush (%r8)
inc %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r8)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x16318, %rsi
sub $16082, %r14
mov (%rsi), %r10w
nop
nop
xor %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_UC+0xb118, %r13
nop
nop
nop
and $2108, %r9
mov (%r13), %bx
nop
inc %rbx

// Store
lea addresses_D+0x1e318, %r15
and %r9, %r9
movb $0x51, (%r15)
nop
nop
sub %r15, %r15

// REPMOV
lea addresses_UC+0x4d18, %rsi
lea addresses_D+0x1a118, %rdi
nop
nop
nop
dec %r15
mov $84, %rcx
rep movsq
nop
nop
nop
nop
dec %r15

// Store
lea addresses_normal+0x16076, %rdi
nop
cmp %rbp, %rbp
movb $0x51, (%rdi)
nop
and %r15, %r15

// Store
lea addresses_normal+0xb918, %rcx
nop
nop
nop
and %r13, %r13
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
and %rsi, %rsi

// Store
mov $0x350, %r13
sub %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%r13)
nop
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_D+0x1a4c0, %rbp
nop
nop
xor %rsi, %rsi
movb $0x51, (%rbp)
nop
nop
and $46859, %r9

// Store
mov $0x68a4f90000000798, %rcx
clflush (%rcx)
nop
nop
nop
nop
sub %rdi, %rdi
movw $0x5152, (%rcx)
nop
nop
xor $34677, %rbp

// Faulty Load
lea addresses_normal+0xb918, %rsi
nop
nop
cmp %rcx, %rcx
movb (%rsi), %r9b
lea oracles, %r15
and $0xff, %r9
shlq $12, %r9
mov (%r15,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 2, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'51': 21829}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
