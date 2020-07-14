.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xd1e3, %rsi
lea addresses_D_ht+0x12053, %rdi
nop
nop
cmp %r12, %r12
mov $100, %rcx
rep movsq
sub %r10, %r10
lea addresses_normal_ht+0x1d8c3, %r8
and $15945, %rbp
mov (%r8), %edi
nop
nop
nop
nop
inc %r8
lea addresses_D_ht+0x127c3, %rsi
lea addresses_WC_ht+0x184c3, %rdi
clflush (%rdi)
xor $45284, %rax
mov $46, %rcx
rep movsq
nop
nop
cmp $39267, %rax
lea addresses_D_ht+0x17143, %r8
xor %r12, %r12
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
and $26143, %rsi
lea addresses_D_ht+0x4163, %r10
nop
nop
nop
add $47315, %rdi
movups (%r10), %xmm0
vpextrq $1, %xmm0, %rbp
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0x1eebb, %rdi
nop
xor $25819, %rax
mov $0x6162636465666768, %r10
movq %r10, (%rdi)
nop
nop
nop
nop
nop
sub %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rsi

// Load
mov $0x4c3, %rax
nop
nop
sub $24657, %rbx
movups (%rax), %xmm2
vpextrq $0, %xmm2, %r8
sub %rax, %rax

// Store
lea addresses_UC+0x23a3, %rbp
nop
nop
nop
nop
nop
sub $22968, %r12
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%rbp)
nop
nop
xor $9898, %rsi

// Store
lea addresses_PSE+0x1a98b, %rbp
nop
nop
add $64071, %rax
movl $0x51525354, (%rbp)
nop
nop
nop
xor $61588, %r9

// Store
lea addresses_WC+0x18936, %rbp
cmp $24708, %rax
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movaps %xmm2, (%rbp)
nop
nop
nop
cmp %rbp, %rbp

// Load
lea addresses_WC+0x6cc3, %rax
nop
nop
nop
nop
nop
cmp %r12, %r12
mov (%rax), %ebp
nop
nop
inc %rsi

// Store
lea addresses_PSE+0x1c903, %rbp
nop
sub %r9, %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm3
movups %xmm3, (%rbp)
sub %rbp, %rbp

// Faulty Load
mov $0x4c3, %rax
nop
nop
nop
nop
nop
dec %rsi
movntdqa (%rax), %xmm6
vpextrq $1, %xmm6, %rbp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'46': 59, '00': 19113, '45': 2657}
00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 45 45 45 45 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 00 45 00 45 00 00 00 45 00 45 45 00 00 00 45 00 45 00 00 00 45 45 00 00 00 00 00 00 45 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 45 00 00 00 00 00 00 00 45 45 00 00 00 00 45 45 00 00 00 45 00 45 00 45 00 00 45 00 00 45 45 00 00 45 00 00 00 00 00 45 00 00 45 45 00 00 45 45 00 00 00 00 45 00 00 00 00 00 00 45 45 00 00 46 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 45 45 00 00 00 00 00 00 45 00 00 45 46 45 00 45 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 45 45 00 00 00 00 00 45 00 45 00 00 45 00 00 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 45 00 00 00 00 00 00 45 45 00 00 00 45 45 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 45 00 00 45 00 00 45 45 00 00 00 45 00 45 00 45 00 00 45 00 00 00 45 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 45 45 00 00 00 00 00 45 45 00 00 46 45 00 00 00 00 00 00 46 45 00 00 00 00 00 00 00 45 00 00 45 00 00 00 45 00 45 00 00 00 00 00 45 00 00 00 45 00 45 46 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 45 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 45 00 45 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 45 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 45 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45
*/
