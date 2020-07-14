.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1603a, %rsi
lea addresses_UC_ht+0x805a, %rdi
nop
xor %r13, %r13
mov $114, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x1b82, %rsi
lea addresses_WC_ht+0xdba, %rdi
clflush (%rsi)
sub %r14, %r14
mov $0, %rcx
rep movsq
nop
nop
nop
nop
cmp $4384, %rdx
lea addresses_WT_ht+0x1343a, %rsi
lea addresses_A_ht+0x813a, %rdi
clflush (%rsi)
and $5667, %rdx
mov $102, %rcx
rep movsw
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x6a3a, %rsi
lea addresses_WC_ht+0x10cfa, %rdi
cmp $49255, %rbx
mov $34, %rcx
rep movsq
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0xcc3a, %rdi
dec %rsi
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WC_ht+0x3dfa, %rcx
clflush (%rcx)
nop
and %r13, %r13
movb $0x61, (%rcx)
nop
nop
nop
nop
cmp $53666, %r13
lea addresses_normal_ht+0x1e23a, %rsi
lea addresses_WC_ht+0x1c57a, %rdi
nop
cmp %r9, %r9
mov $50, %rcx
rep movsl
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x16409, %rdi
nop
xor $53858, %rcx
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbx
nop
nop
nop
sub $35440, %r13
lea addresses_normal_ht+0x1871a, %r14
nop
nop
sub $29148, %rdx
movw $0x6162, (%r14)
cmp %r14, %r14
lea addresses_normal_ht+0x3f3a, %rsi
nop
nop
nop
nop
nop
cmp %r9, %r9
movw $0x6162, (%rsi)
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x1c6a, %rsi
lea addresses_UC_ht+0x12367, %rdi
nop
nop
nop
cmp $10938, %rdx
mov $118, %rcx
rep movsw
nop
xor %rbx, %rbx
lea addresses_WT_ht+0x147fa, %rcx
nop
nop
xor %rbx, %rbx
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
nop
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x306a, %r14
xor %rcx, %rcx
movb $0x61, (%r14)
nop
dec %r9
lea addresses_UC_ht+0x1e93a, %rsi
sub %r13, %r13
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %rbx
nop
nop
nop
nop
nop
sub $57498, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rdi
push %rdx

// Store
lea addresses_UC+0x1743a, %r8
nop
cmp $24266, %rdi
movl $0x51525354, (%r8)
nop
dec %rbp

// Store
lea addresses_WC+0x1efba, %r12
clflush (%r12)
nop
nop
inc %r8
mov $0x5152535455565758, %r15
movq %r15, %xmm3
movntdq %xmm3, (%r12)
nop
nop
nop
nop
add %rdx, %rdx

// Faulty Load
lea addresses_RW+0xcc3a, %rbp
dec %r11
mov (%rbp), %r8
lea oracles, %r11
and $0xff, %r8
shlq $12, %r8
mov (%r11,%r8,1), %r8
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'32': 420}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
