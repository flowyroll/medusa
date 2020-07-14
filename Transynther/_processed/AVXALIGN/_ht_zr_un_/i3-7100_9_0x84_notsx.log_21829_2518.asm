.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1d47, %rsi
lea addresses_UC_ht+0x1c219, %rdi
nop
nop
inc %r9
mov $127, %rcx
rep movsq
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x17947, %rsi
lea addresses_WT_ht+0x17d47, %rdi
nop
inc %r9
mov $0, %rcx
rep movsb
nop
sub $60416, %rbx
lea addresses_normal_ht+0xd547, %rax
nop
and %r8, %r8
movups (%rax), %xmm7
vpextrq $0, %xmm7, %rbx
nop
nop
nop
nop
nop
xor $62717, %rdi
lea addresses_A_ht+0x1e847, %rsi
lea addresses_UC_ht+0x3c47, %rdi
nop
lfence
mov $64, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $42589, %rdi
lea addresses_UC_ht+0x14047, %rsi
nop
nop
nop
xor $56296, %rbx
movw $0x6162, (%rsi)
nop
nop
nop
nop
and $44534, %rbx
lea addresses_WT_ht+0x11d47, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $22119, %rax
mov (%rdi), %r9w
nop
nop
nop
nop
add %r8, %r8
lea addresses_A_ht+0x19047, %rsi
lea addresses_WC_ht+0x18e73, %rdi
nop
nop
nop
nop
cmp $62425, %r12
mov $97, %rcx
rep movsl
nop
add $47320, %rdi
lea addresses_WC_ht+0x98b7, %rsi
lea addresses_D_ht+0x14947, %rdi
sub $53411, %rax
mov $20, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rbx
push %rdi
push %rdx

// Store
lea addresses_D+0xed47, %r10
xor $54638, %rdi
movl $0x51525354, (%r10)
add %r10, %r10

// Faulty Load
lea addresses_D+0xed47, %r14
nop
nop
nop
nop
nop
and $6145, %r8
vmovntdqa (%r14), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'a5': 2, '80': 75, 'a6': 2, '49': 11428, '00': 10144, 'ff': 4, '45': 164, '08': 10}
49 49 00 00 49 00 49 00 49 49 49 49 49 49 00 49 00 49 00 49 00 49 49 49 00 00 49 00 00 00 49 49 49 49 00 49 49 49 00 00 49 49 49 49 00 00 49 49 49 49 49 49 49 49 49 49 49 00 49 49 00 00 49 49 49 49 49 49 00 00 00 00 49 49 49 00 49 49 49 49 00 49 00 49 00 00 49 00 49 00 00 00 49 49 49 80 49 00 00 00 49 49 00 49 49 00 00 00 00 00 49 00 00 49 49 00 00 49 49 49 00 00 49 49 00 49 49 00 49 49 49 00 49 49 49 00 49 49 49 49 49 00 49 49 00 49 00 00 49 00 49 49 49 00 00 49 49 00 00 49 00 49 49 00 00 00 80 49 00 49 49 49 00 00 49 49 49 80 00 49 49 00 00 00 49 49 49 00 00 49 49 49 49 49 49 49 00 49 00 49 00 00 49 00 49 00 49 49 49 00 00 49 49 49 49 00 49 49 00 49 49 00 00 00 49 00 49 00 49 49 49 49 49 00 00 49 00 49 49 49 49 00 49 49 00 49 49 49 49 00 49 00 00 49 49 00 00 00 49 49 00 00 49 49 49 00 00 00 00 49 00 00 49 49 49 49 00 00 49 00 49 49 00 00 49 49 49 00 49 49 49 49 00 45 00 49 00 49 00 49 00 00 49 00 00 49 00 49 49 00 00 00 49 00 49 00 49 00 00 49 00 00 49 49 49 49 49 49 00 00 00 00 49 00 49 00 49 49 49 49 49 49 00 00 49 00 49 49 00 49 00 49 49 00 00 49 49 49 49 00 00 49 00 49 00 49 49 00 49 00 49 49 49 49 49 00 00 49 00 00 00 49 49 00 49 49 49 00 00 00 49 49 49 00 00 49 00 00 00 49 00 80 49 00 49 49 49 00 00 00 00 49 00 00 49 49 00 00 49 00 00 49 49 00 00 00 49 49 49 00 00 49 49 00 00 45 00 49 49 00 49 49 49 00 00 49 00 49 00 49 00 49 49 49 49 49 49 00 49 00 00 00 49 49 49 00 49 49 00 49 00 00 49 49 00 49 49 00 49 49 49 00 49 00 00 49 49 00 00 49 49 00 49 00 49 00 00 00 49 00 49 49 00 00 49 00 00 00 00 49 00 49 00 00 00 49 00 00 49 00 49 49 00 49 49 49 00 00 49 49 00 00 49 49 49 49 00 49 49 00 00 00 00 49 49 49 49 49 00 00 49 49 49 00 49 49 00 49 00 49 00 00 00 49 49 00 00 00 00 00 49 49 00 00 49 00 00 00 49 00 49 a5 00 00 00 49 80 00 00 00 00 49 49 49 49 00 49 80 00 49 00 49 00 49 49 00 49 00 49 00 49 49 49 00 00 49 45 00 49 49 00 49 49 49 00 00 49 00 49 00 00 49 49 00 49 49 49 49 49 00 00 00 00 49 49 49 49 00 00 49 49 49 49 49 49 00 00 00 00 49 49 00 49 00 00 49 00 00 00 00 49 00 49 49 00 00 49 49 00 49 49 49 49 49 00 00 49 49 49 00 00 00 00 00 49 00 00 00 49 00 49 49 00 49 00 00 49 00 00 49 00 00 49 00 49 45 49 49 49 00 00 00 49 00 00 00 49 00 49 49 00 00 00 49 00 00 49 49 49 00 49 00 49 49 49 00 49 00 49 49 49 00 49 49 49 49 49 00 49 00 00 00 49 00 45 00 49 49 49 00 00 00 00 00 49 00 00 49 00 00 49 49 00 00 49 49 00 00 00 49 49 00 49 00 00 00 00 00 49 49 00 00 00 49 49 49 00 49 00 49 00 00 00 00 49 49 00 00 49 00 00 00 00 00 00 00 49 00 49 49 00 00 49 49 00 00 00 00 49 49 49 00 49 00 49 00 49 49 00 00 00 49 00 00 00 00 49 49 00 49 49 49 00 00 00 00 49 00 49 00 00 00 49 00 49 00 49 49 49 00 00 00 00 00 49 00 00 49 00 49 00 49 00 49 49 00 00 49 00 00 49 00 49 49 49 00 00 00 00 00 49 49 00 49 00 49 00 00 00 00 49 00 49 00 00 49 49 49 49 49 49 00 00 49 00 00 49 49 49 00 49 49 00 00 49 49 00 00 49 49 49 49 49 49 00 49 49 00 00 00 49 00 00 49 49 49 49 49 00 00 49 49 00 00 49 00 00 00 00 00 00 00 00 49 00 49 00 00 00 49 00 49 00 00 00 00 00 00 00 49
*/
