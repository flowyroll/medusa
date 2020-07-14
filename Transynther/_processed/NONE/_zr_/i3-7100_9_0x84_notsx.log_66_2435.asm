.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x87dd, %rsi
lea addresses_D_ht+0x128dd, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
mov $21, %rcx
rep movsq
xor $11173, %r14
lea addresses_D_ht+0xca3d, %rdx
nop
nop
nop
nop
nop
inc %r13
movb (%rdx), %r15b
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x110dd, %rcx
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov (%rcx), %rsi
nop
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0x205d, %rsi
lea addresses_WC_ht+0x21dd, %rdi
and %r12, %r12
mov $107, %rcx
rep movsw
nop
nop
nop
nop
xor $30441, %r12
lea addresses_WC_ht+0x1acdd, %rsi
lea addresses_WT_ht+0x13705, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $6773, %rdx
mov $9, %rcx
rep movsw
nop
cmp %r15, %r15
lea addresses_WC_ht+0x108dd, %rdx
nop
nop
nop
nop
nop
dec %r12
mov (%rdx), %r15d
nop
nop
nop
xor $35458, %rsi
lea addresses_WT_ht+0xfacd, %rdx
nop
xor %r13, %r13
mov (%rdx), %cx
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_UC_ht+0x30dd, %r12
nop
nop
and $58626, %r13
vmovups (%r12), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0xb2dd, %rsi
lea addresses_normal_ht+0xa0dd, %rdi
nop
nop
dec %r14
mov $76, %rcx
rep movsl
xor $3885, %r15
lea addresses_UC_ht+0x13565, %rcx
and %rdi, %rdi
mov (%rcx), %si
cmp $12799, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rbx
push %rdi
push %rsi

// Store
lea addresses_normal+0x19159, %rdi
and %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovntdq %ymm3, (%rdi)
nop
nop
nop
nop
nop
inc %r14

// Store
lea addresses_UC+0x185dd, %rbx
nop
nop
nop
nop
nop
and %r15, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
nop
nop
nop
cmp %r14, %r14

// Store
mov $0xfdd, %rsi
nop
nop
nop
nop
xor $49201, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
nop
nop
dec %rsi

// Faulty Load
lea addresses_A+0x1a8dd, %r14
nop
nop
nop
nop
sub $48604, %r15
vmovups (%r14), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 66}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
