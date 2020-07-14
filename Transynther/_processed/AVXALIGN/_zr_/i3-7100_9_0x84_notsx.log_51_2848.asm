.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x13262, %r14
clflush (%r14)
nop
nop
and $42078, %rdi
and $0xffffffffffffffc0, %r14
vmovaps (%r14), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r13
nop
sub $61831, %r9
lea addresses_WC_ht+0x1deb2, %r13
nop
nop
nop
nop
nop
cmp %r12, %r12
vmovups (%r13), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
nop
add %r9, %r9
lea addresses_normal_ht+0x1309a, %r12
nop
nop
nop
sub %r14, %r14
mov (%r12), %r13w
inc %r14
lea addresses_WT_ht+0xa9c6, %r13
nop
and %rcx, %rcx
movb $0x61, (%r13)
nop
inc %r14
lea addresses_normal_ht+0x1e8b2, %r13
nop
nop
nop
nop
nop
sub %rsi, %rsi
movb (%r13), %r9b
nop
nop
nop
and $24386, %rcx
lea addresses_WT_ht+0x133e2, %rsi
lea addresses_UC_ht+0xc372, %rdi
nop
nop
nop
add %r8, %r8
mov $105, %rcx
rep movsb
nop
nop
and $27920, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0xceb2, %rsi
nop
nop
nop
add %r14, %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
nop
nop
sub $34910, %r9

// Store
lea addresses_D+0x16132, %r8
nop
xor %r13, %r13
movb $0x51, (%r8)
nop
cmp $9865, %r14

// Store
lea addresses_normal+0x17c2a, %r8
and %rdi, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%r8)
nop
nop
nop
nop
nop
dec %r8

// Store
lea addresses_A+0x37b2, %rcx
nop
nop
dec %rsi
mov $0x5152535455565758, %r8
movq %r8, (%rcx)
nop
nop
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_PSE+0x93f2, %rsi
nop
nop
inc %rdi
movb $0x51, (%rsi)
nop
cmp %rcx, %rcx

// Faulty Load
lea addresses_US+0x4ab2, %r9
nop
nop
nop
nop
and %r13, %r13
mov (%r9), %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'00': 51}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
