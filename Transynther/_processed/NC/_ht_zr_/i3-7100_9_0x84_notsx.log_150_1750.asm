.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1d9cc, %rsi
lea addresses_normal_ht+0x7bec, %rdi
nop
nop
and %rdx, %rdx
mov $76, %rcx
rep movsw
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_D_ht+0x1afdc, %r12
nop
nop
nop
nop
cmp $47648, %r10
and $0xffffffffffffffc0, %r12
movntdqa (%r12), %xmm0
vpextrq $0, %xmm0, %rbp
nop
nop
nop
nop
nop
add $27632, %rdx
lea addresses_WC_ht+0x1032c, %rsi
lea addresses_A_ht+0x2a2c, %rdi
clflush (%rdi)
sub %r13, %r13
mov $111, %rcx
rep movsl
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x3b7d, %rsi
lea addresses_WC_ht+0x164ec, %rdi
nop
add $10145, %r10
mov $26, %rcx
rep movsb
nop
nop
nop
nop
and %r12, %r12
lea addresses_A_ht+0x1c8ec, %rsi
dec %r12
mov (%rsi), %edi
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0x49ec, %rdi
nop
nop
and $56676, %r10
mov $0x6162636465666768, %r12
movq %r12, %xmm1
and $0xffffffffffffffc0, %rdi
vmovaps %ymm1, (%rdi)
nop
and $25181, %r12
lea addresses_D_ht+0xea14, %rdi
nop
dec %rdx
mov (%rdi), %r10d
nop
nop
nop
xor $29752, %r13
lea addresses_WC_ht+0x174ec, %rsi
lea addresses_WT_ht+0x130ec, %rdi
nop
nop
xor $1139, %rdx
mov $86, %rcx
rep movsw
sub $46135, %r12
lea addresses_normal_ht+0x182ec, %rsi
nop
nop
sub %rdx, %rdx
movw $0x6162, (%rsi)
nop
and %r13, %r13
lea addresses_WT_ht+0x26ec, %rcx
nop
nop
dec %r13
movw $0x6162, (%rcx)
nop
inc %r12
lea addresses_normal_ht+0x939c, %r10
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r10), %edx
nop
nop
nop
inc %rdi
lea addresses_D_ht+0xbacc, %rcx
nop
nop
inc %r12
movups (%rcx), %xmm1
vpextrq $1, %xmm1, %r13
nop
nop
nop
xor %r10, %r10
lea addresses_UC_ht+0x19eb0, %rsi
lea addresses_UC_ht+0x15ba4, %rdi
add $11637, %r12
mov $53, %rcx
rep movsl
nop
add $55737, %rdx
lea addresses_D_ht+0x114ec, %r10
nop
nop
nop
xor %rdi, %rdi
and $0xffffffffffffffc0, %r10
vmovaps (%r10), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbp
nop
nop
nop
nop
xor $48025, %rdx
lea addresses_A_ht+0x18604, %rsi
lea addresses_WT_ht+0xcfec, %rdi
dec %rdx
mov $89, %rcx
rep movsw
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
mov $0x399f7800000009ec, %r9
nop
nop
nop
xor $9754, %rsi
movl $0x51525354, (%r9)
nop
nop
nop
nop
dec %rsi

// Store
lea addresses_WT+0x15e6c, %rsi
and %rcx, %rcx
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_UC+0xfcec, %r12
nop
nop
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r12)
nop
nop
nop
nop
and $46635, %rcx

// Faulty Load
mov $0x2414700000004ec, %rsi
nop
nop
nop
add $46934, %r9
vmovups (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'46': 14, '00': 73, '48': 45, '45': 18}
00 00 00 00 00 00 00 45 00 48 46 46 48 45 00 00 00 45 00 45 48 00 00 00 00 48 00 00 48 48 00 48 46 48 00 46 00 00 48 00 00 00 48 00 48 45 00 48 45 48 48 00 45 00 46 00 00 48 00 00 00 00 46 00 48 45 00 48 00 46 00 48 00 48 45 00 48 00 00 48 48 00 45 46 46 00 00 00 00 48 00 45 48 45 48 45 48 48 48 00 46 00 00 00 48 45 00 48 00 48 48 46 48 46 00 00 48 00 00 48 48 48 48 48 48 00 00 00 00 00 00 46 46 48 00 45 00 00 45 00 00 00 48 45 48 45 00 48 00 48
*/
