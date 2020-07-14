.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x341c, %rdi
nop
nop
xor %rcx, %rcx
mov (%rdi), %r14d
nop
nop
nop
nop
xor $13009, %r15
lea addresses_WC_ht+0x341c, %rsi
lea addresses_normal_ht+0x1710c, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r13, %r13
mov $25, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x1001c, %rsi
lea addresses_WT_ht+0x187fe, %rdi
nop
xor %rax, %rax
mov $105, %rcx
rep movsw
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x136e2, %rdi
sub %rsi, %rsi
movl $0x61626364, (%rdi)
nop
xor $45546, %rsi
lea addresses_WC_ht+0x1681c, %rax
nop
nop
nop
nop
inc %r14
mov (%rax), %r13w
nop
sub %r15, %r15
lea addresses_WC_ht+0xa26c, %rsi
lea addresses_UC_ht+0x5be4, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
mov $76, %rcx
rep movsl
nop
nop
nop
and $9398, %rsi
lea addresses_UC_ht+0x50dc, %rsi
nop
cmp $63821, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm3
vmovups %ymm3, (%rsi)
sub %r14, %r14
lea addresses_UC_ht+0x1c102, %rsi
nop
nop
nop
nop
nop
add $47847, %rax
mov $0x6162636465666768, %r15
movq %r15, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
nop
nop
xor $59614, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rax
push %rbx
push %rcx

// Load
lea addresses_RW+0x103ec, %r12
nop
nop
nop
nop
xor $63396, %rbx
mov (%r12), %r10d
dec %rcx

// Faulty Load
lea addresses_US+0x1201c, %rbx
nop
nop
nop
nop
and $40452, %rax
mov (%rbx), %r12
lea oracles, %rbx
and $0xff, %r12
shlq $12, %r12
mov (%rbx,%r12,1), %r12
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 116}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
