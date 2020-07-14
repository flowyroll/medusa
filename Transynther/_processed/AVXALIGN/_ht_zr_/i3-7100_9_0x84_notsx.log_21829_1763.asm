.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x11d74, %r15
clflush (%r15)
nop
cmp %r10, %r10
mov $0x6162636465666768, %r8
movq %r8, %xmm5
vmovups %ymm5, (%r15)
nop
nop
nop
nop
nop
dec %rax
lea addresses_WT_ht+0x8d74, %r8
nop
sub $31991, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r8)
nop
nop
nop
nop
nop
sub $15688, %rcx
lea addresses_WT_ht+0x1ecf4, %r10
nop
and $10103, %r14
movb (%r10), %al
nop
nop
inc %r10
lea addresses_normal_ht+0x1d374, %r9
nop
nop
add %rax, %rax
mov (%r9), %r10w
nop
nop
nop
nop
nop
dec %r9
lea addresses_WC_ht+0x7574, %r10
nop
nop
nop
dec %r8
mov (%r10), %ax
nop
nop
nop
cmp %r9, %r9
lea addresses_UC_ht+0xacdc, %rsi
lea addresses_UC_ht+0x1d574, %rdi
clflush (%rsi)
nop
xor %r14, %r14
mov $123, %rcx
rep movsb
nop
inc %rax
lea addresses_normal_ht+0x9474, %rcx
nop
nop
nop
inc %r8
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm6
vpextrq $1, %xmm6, %r14
nop
nop
inc %r8
lea addresses_WT_ht+0x193f2, %r10
nop
cmp %rcx, %rcx
movw $0x6162, (%r10)
dec %r9
lea addresses_D_ht+0x17b34, %r9
nop
nop
nop
nop
nop
xor $30474, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x1934c, %rcx
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm6
movups %xmm6, (%rcx)
nop
add $6034, %rcx
lea addresses_D_ht+0xf7bb, %rsi
lea addresses_WT_ht+0xf53e, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $27821, %r8
mov $97, %rcx
rep movsl
sub %rax, %rax
lea addresses_A_ht+0x4134, %rcx
nop
nop
nop
nop
nop
cmp $43336, %rax
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
and $61895, %r9
lea addresses_A_ht+0x1d4ac, %r14
clflush (%r14)
nop
nop
nop
nop
inc %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
nop
nop
nop
dec %r10
lea addresses_WT_ht+0x1df72, %r14
nop
and %rax, %rax
mov (%r14), %si
nop
nop
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rax
push %rcx
push %rdi

// Faulty Load
lea addresses_PSE+0xbd74, %r13
nop
sub $35030, %rcx
movaps (%r13), %xmm2
vpextrq $1, %xmm2, %rax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'46': 6163, '00': 13073, '48': 2, '44': 2591}
00 46 46 44 44 00 00 00 00 46 46 00 00 46 46 46 00 00 00 44 00 00 00 00 46 46 46 46 44 00 44 00 00 00 00 00 00 46 46 44 44 00 00 00 46 46 46 46 00 44 00 00 00 00 46 46 44 00 44 00 00 00 00 46 46 46 46 44 00 00 00 00 00 46 46 46 46 00 00 00 00 00 46 46 00 00 00 00 00 00 46 46 46 46 00 00 00 00 00 00 00 00 46 46 46 44 00 00 00 00 46 46 46 46 00 00 00 00 00 00 46 46 46 46 00 00 00 00 44 00 00 00 00 00 46 46 00 44 00 00 00 00 00 00 00 46 46 46 00 44 00 00 00 46 46 46 46 00 00 00 00 00 00 46 44 00 44 00 00 00 00 46 46 46 46 46 00 44 44 00 00 00 00 46 46 44 00 00 00 00 00 00 46 46 46 46 46 00 44 00 00 00 00 00 00 46 46 46 00 00 44 00 00 00 00 00 00 46 46 46 44 44 00 00 00 00 46 46 46 46 46 00 00 44 00 00 00 00 00 00 46 46 44 44 44 00 00 00 00 46 46 46 46 46 00 00 00 00 00 00 46 46 46 46 44 44 00 00 00 00 00 00 00 46 46 46 00 00 00 44 44 00 00 00 00 46 46 46 46 44 00 44 00 44 00 00 00 00 00 00 00 46 46 46 46 46 46 44 00 44 00 00 00 00 00 00 00 46 46 46 46 46 00 44 00 00 00 00 00 46 46 00 44 00 44 00 00 00 00 00 46 46 44 00 00 00 00 00 00 00 46 46 46 00 44 00 00 00 46 46 46 00 44 44 00 00 00 46 46 46 00 44 00 00 00 00 46 46 46 00 44 44 00 00 00 00 00 00 00 46 46 46 44 00 00 46 46 46 00 44 44 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 46 46 00 44 44 00 00 00 00 00 00 46 46 46 46 00 00 00 44 00 00 00 00 00 46 44 00 00 00 00 00 00 46 46 46 00 00 00 00 00 00 46 44 00 00 00 00 00 46 46 46 00 00 00 44 44 00 00 00 00 00 00 00 46 46 46 46 44 00 00 00 00 00 46 46 00 44 00 00 00 00 00 46 46 46 00 44 44 44 00 00 00 00 00 46 46 00 46 00 00 00 00 00 46 46 00 44 44 00 00 00 00 00 00 46 46 46 46 46 00 00 44 44 00 00 00 00 00 00 46 46 00 44 44 00 00 00 00 00 46 46 46 46 00 44 44 00 00 00 00 00 46 46 46 46 44 00 00 00 00 00 00 46 46 46 00 44 00 00 00 00 00 46 46 44 44 00 00 00 00 46 46 00 00 44 00 00 00 00 00 00 46 46 46 46 46 00 00 00 00 44 44 00 00 00 00 46 46 46 46 46 00 44 00 00 00 00 00 00 00 00 00 46 46 00 44 44 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 00 00 46 46 46 46 00 44 00 00 00 00 00 46 46 46 00 00 44 44 00 00 00 00 46 46 46 46 44 44 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 44 00 00 00 00 00 00 00 00 46 46 44 44 00 00 00 00 00 00 00 00 46 46 00 00 00 00 46 46 46 00 44 00 00 00 00 00 00 46 46 44 00 00 00 00 00 00 00 46 46 46 00 44 00 00 00 46 46 46 00 44 00 00 00 00 00 46 46 00 44 00 44 00 00 00 46 46 00 00 00 00 00 00 00 00 46 46 46 46 00 00 44 00 00 00 46 46 46 00 44 44 00 00 00 00 00 00 00 46 46 46 46 46 44 44 00 00 00 00 46 46 46 46 46 44 00 00 00 00 00 00 00 00 46 46 46 00 44 00 00 00 00 00 00 00 46 46 46 46 44 00 00 00 00 00 46 46 46 46 00 44 00 00 00 00 00 46 46 46 46 46 00 44 44 00 00 00 00 00 46 46 46 44 44 00 00 00 00 00 46 46 00 00 00 00 00 00 46 46 46 46 00 00 00 00 00 00 00 00 00 00 46 46 46 46 44 44 44 44 00 00 00 00 00 46 46 46 46 46 46 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 46 46 46 46 46 00 44 44 00 00 00 00 00 46 46 46 00 00 00 00 00 46 46 46 46 00 44 00 00 00 00 00 00 46 46 46 46 44 00 00 00 46
*/
