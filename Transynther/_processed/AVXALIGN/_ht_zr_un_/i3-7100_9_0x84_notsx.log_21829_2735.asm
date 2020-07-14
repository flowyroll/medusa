.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1cb93, %rdi
nop
sub %rbx, %rbx
mov $0x6162636465666768, %r9
movq %r9, %xmm6
vmovups %ymm6, (%rdi)
nop
and $7093, %rdx
lea addresses_normal_ht+0x15863, %rsi
lea addresses_WT_ht+0x1bfe3, %rdi
clflush (%rdi)
nop
nop
nop
cmp %r10, %r10
mov $75, %rcx
rep movsb
cmp $44454, %rsi
lea addresses_WC_ht+0x1d563, %r9
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%r9)
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x12163, %r9
nop
sub $4866, %rsi
movups (%r9), %xmm3
vpextrq $0, %xmm3, %rdx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0xad63, %rsi
lea addresses_normal_ht+0x4563, %rdi
nop
nop
add %r15, %r15
mov $90, %rcx
rep movsw
nop
nop
nop
sub $55063, %rcx
lea addresses_A_ht+0x15663, %rcx
nop
nop
nop
sub %r10, %r10
movb (%rcx), %r9b
nop
nop
sub %r9, %r9
lea addresses_WT_ht+0x1c163, %rsi
lea addresses_WT_ht+0x10e63, %rdi
nop
nop
nop
nop
xor $64263, %rdx
mov $10, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rax
push %rbp
push %rdi
push %rsi

// Load
lea addresses_UC+0x4563, %rax
and $52874, %rbp
movb (%rax), %r9b
nop
nop
nop
nop
and $34442, %rbp

// Store
lea addresses_UC+0x1e8c3, %rdi
nop
sub %rax, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movups %xmm6, (%rdi)
xor $56835, %r8

// Store
lea addresses_normal+0x1c363, %rdi
nop
nop
nop
nop
inc %rsi
movl $0x51525354, (%rdi)
xor $54707, %rbp

// Store
mov $0xc41, %rdi
nop
and $2712, %r8
mov $0x5152535455565758, %rbp
movq %rbp, (%rdi)
nop
and %r9, %r9

// Store
mov $0xf63, %rax
add %r13, %r13
movb $0x51, (%rax)
add %r13, %r13

// Store
lea addresses_UC+0x4563, %r13
and $34055, %rbp
movw $0x5152, (%r13)
nop
add $59589, %r13

// Faulty Load
lea addresses_UC+0x4563, %rsi
nop
nop
add %rbp, %rbp
movntdqa (%rsi), %xmm2
vpextrq $1, %xmm2, %r9
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'44': 10760, '49': 6, '46': 6766, '00': 4295, 'ff': 1, '08': 1}
44 44 44 44 46 44 46 44 46 44 46 44 44 44 00 44 00 44 44 44 44 44 44 00 44 46 44 44 46 44 46 44 46 44 46 44 44 46 44 46 44 44 46 44 46 44 44 44 46 44 44 44 00 46 00 44 00 44 46 00 00 44 44 44 00 46 46 46 44 44 00 44 46 44 44 44 00 44 00 46 44 44 00 44 44 44 44 46 44 46 44 46 44 00 44 44 44 00 46 44 46 44 00 44 44 46 00 46 00 44 00 46 44 00 44 46 46 46 46 00 46 00 46 44 00 44 00 44 46 00 46 44 00 44 46 44 46 00 00 44 46 44 46 00 00 00 00 00 44 44 44 46 44 00 44 46 44 00 44 46 44 44 00 46 46 44 44 46 44 44 00 46 44 00 44 44 44 44 46 00 46 00 46 46 44 46 44 46 44 44 46 44 46 00 00 46 44 44 44 44 44 44 00 44 00 44 44 44 00 46 44 44 44 00 44 44 44 00 44 46 46 00 44 44 46 46 00 00 44 44 46 44 00 44 00 44 44 00 44 44 46 44 46 44 44 44 46 44 44 44 44 00 46 44 44 44 44 46 44 46 46 44 46 44 46 44 44 44 44 46 00 44 46 44 00 46 46 44 44 44 44 00 00 44 46 44 00 00 46 44 44 44 44 46 00 46 44 44 46 46 44 44 44 46 44 44 00 00 00 46 46 44 46 00 44 46 44 44 00 44 46 44 46 44 46 44 44 44 44 46 44 46 44 44 46 44 44 00 00 00 00 44 46 44 46 44 46 00 46 46 46 00 44 44 44 46 44 00 44 46 44 46 44 44 44 44 00 44 44 00 00 44 46 46 00 46 44 00 44 00 44 00 44 00 44 44 44 44 44 44 44 46 44 44 46 44 46 44 46 44 46 00 44 44 44 00 46 44 44 46 44 44 44 46 44 44 44 00 44 46 44 00 44 00 46 44 44 46 44 46 44 46 44 44 44 44 44 46 44 00 46 00 46 44 00 46 44 44 46 44 44 46 00 44 44 44 44 00 44 00 00 46 44 00 46 44 46 00 44 44 46 00 44 00 44 00 00 44 44 44 44 46 00 44 00 00 00 44 44 44 44 00 00 00 44 46 00 44 46 00 44 00 44 44 46 44 44 44 44 44 44 46 44 44 44 44 00 44 00 00 44 46 44 44 46 44 46 44 44 44 46 00 00 44 44 00 46 00 46 46 00 00 46 44 00 44 46 46 44 00 46 44 44 44 44 46 44 46 46 00 00 46 44 46 44 44 44 00 46 00 46 00 44 44 44 00 44 46 44 46 44 46 00 00 44 44 00 44 44 44 46 44 44 46 00 46 44 44 44 44 44 44 46 44 00 46 44 44 44 44 00 46 44 44 44 46 44 44 00 46 44 46 00 44 00 44 46 46 44 44 46 44 46 46 44 46 00 44 00 00 46 44 44 44 46 44 44 44 46 46 44 46 44 46 00 44 44 00 00 44 00 44 00 00 46 44 44 00 00 44 46 44 00 44 00 46 44 46 44 44 46 44 44 44 00 44 46 46 00 00 44 44 44 44 00 46 46 46 00 44 46 44 44 46 00 44 46 44 44 46 44 46 44 46 00 44 00 44 46 44 46 44 46 44 46 46 44 46 44 44 46 44 44 44 46 44 46 00 44 00 46 44 46 44 46 44 44 46 44 46 44 46 44 44 00 00 44 00 44 44 44 44 46 44 44 00 44 46 46 46 46 46 44 44 00 46 46 44 44 46 00 00 00 44 44 46 00 46 44 44 00 46 00 44 44 44 46 00 46 46 46 44 00 44 00 44 46 46 44 44 46 46 00 44 46 44 00 44 46 44 44 46 44 44 46 44 46 44 44 44 46 00 46 44 46 44 46 44 46 44 00 46 44 46 44 00 44 44 46 44 00 44 46 46 44 44 44 44 46 00 46 00 49 44 46 44 44 44 46 44 00 44 00 00 46 46 44 44 00 44 00 46 44 44 44 00 44 00 44 00 44 00 46 46 00 46 44 46 44 44 00 44 46 46 44 44 44 00 44 44 46 46 46 44 00 00 44 46 44 44 44 44 44 44 44 00 44 44 00 00 44 46 44 46 44 44 46 44 44 00 44 44 44 00 46 44 44 44 44 00 46 46 00 44 46 46 46 44 44 44 44 44 46 44 00 44 44 46 44 44 44 44 46 00 00 44 46 44 44 46 44 46 00 44 46 44 00 44 44 46 44 44 46 44 46 44 00 44 44 44
*/
