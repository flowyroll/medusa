.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xaf6f, %rsi
lea addresses_UC_ht+0x8527, %rdi
nop
nop
and %r9, %r9
mov $96, %rcx
rep movsl
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x11be7, %rsi
lea addresses_WC_ht+0xf5e7, %rdi
nop
nop
nop
nop
sub $18450, %rdx
mov $26, %rcx
rep movsl
nop
cmp %r9, %r9
lea addresses_WT_ht+0x10d27, %rbp
nop
xor $55978, %r13
vmovups (%rbp), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
nop
xor %r13, %r13
lea addresses_A_ht+0x143e7, %r13
nop
nop
sub $18306, %r9
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
sub $21048, %r13
lea addresses_WT_ht+0xb7e7, %rsi
lea addresses_UC_ht+0x9917, %rdi
nop
sub $44806, %rdx
mov $77, %rcx
rep movsq
nop
nop
nop
sub $5606, %rdx
lea addresses_D_ht+0x1be7, %rbp
clflush (%rbp)
add $56733, %rsi
movw $0x6162, (%rbp)
nop
and %rsi, %rsi
lea addresses_WC_ht+0xc8a7, %rbp
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%rbp)
nop
xor %r9, %r9
lea addresses_A_ht+0x8be7, %rdi
nop
nop
xor $23955, %r13
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x85e7, %rsi
nop
and $29606, %rbp
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x175e7, %rbp
nop
sub %rcx, %rcx
vmovups (%rbp), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0x21ab, %r13
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
and $0xffffffffffffffc0, %r13
vmovaps %ymm0, (%r13)
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x97a7, %r9
nop
sub %rsi, %rsi
mov (%r9), %ecx
nop
nop
cmp $53744, %rdi
lea addresses_normal_ht+0x177e7, %rbp
nop
nop
nop
nop
cmp $38787, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%rbp)
nop
nop
cmp $16877, %rdx
lea addresses_A_ht+0xc7a7, %rdx
nop
nop
nop
nop
and $29921, %rbp
mov (%rdx), %cx
nop
nop
nop
nop
and $59343, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rbp
push %rcx

// Store
lea addresses_UC+0x85e7, %rcx
nop
nop
nop
nop
nop
sub %rbp, %rbp
movl $0x51525354, (%rcx)
nop
nop
nop
nop
sub %r10, %r10

// Faulty Load
mov $0xbe7, %r8
nop
nop
sub %r10, %r10
movb (%r8), %al
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 21}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
