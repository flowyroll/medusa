.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1b40b, %rdx
inc %r10
mov (%rdx), %rbp
nop
nop
nop
nop
xor $5927, %rbx
lea addresses_normal_ht+0x1484b, %rbp
nop
nop
nop
sub %r10, %r10
vmovups (%rbp), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r13
and $25009, %r13
lea addresses_D_ht+0x11335, %rdi
nop
nop
nop
nop
cmp $31938, %r12
movl $0x61626364, (%rdi)
and %r13, %r13
lea addresses_normal_ht+0xddeb, %r12
mfence
mov $0x6162636465666768, %r13
movq %r13, (%r12)
cmp %r13, %r13
lea addresses_WC_ht+0xc28b, %rsi
lea addresses_WT_ht+0x45cb, %rdi
nop
nop
nop
add %r13, %r13
mov $102, %rcx
rep movsq
nop
nop
nop
cmp $22128, %rbx
lea addresses_UC_ht+0x1b84b, %rbp
nop
nop
nop
nop
nop
dec %rdx
mov (%rbp), %rsi
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0xe54b, %rdi
nop
nop
cmp $29931, %rsi
mov (%rdi), %r10d
nop
cmp $5541, %rbx
lea addresses_normal_ht+0x9d4b, %rdi
nop
nop
nop
nop
nop
cmp %r13, %r13
movw $0x6162, (%rdi)
and %rbx, %rbx
lea addresses_WC_ht+0xb73b, %rbp
nop
sub %rdx, %rdx
mov $0x6162636465666768, %r10
movq %r10, %xmm7
and $0xffffffffffffffc0, %rbp
vmovaps %ymm7, (%rbp)
nop
nop
nop
dec %rbx
lea addresses_WC_ht+0x1dc2f, %rdi
nop
nop
nop
nop
cmp $34013, %rdx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
add $44521, %rdi
lea addresses_UC_ht+0x96d3, %r12
nop
nop
nop
add $9409, %rdx
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x1018f, %r12
nop
nop
nop
xor $19564, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r12)
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x1354b, %r12
nop
nop
nop
nop
xor %rdx, %rdx
mov (%r12), %esi
nop
inc %rsi
lea addresses_WT_ht+0x16ecb, %rdx
sub $34529, %r12
and $0xffffffffffffffc0, %rdx
movntdqa (%rdx), %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
sub %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r9
push %rdx
push %rsi

// Store
lea addresses_WC+0x1284b, %r15
cmp %r14, %r14
mov $0x5152535455565758, %rsi
movq %rsi, (%r15)
nop
nop
nop
nop
dec %r9

// Store
lea addresses_RW+0x7d59, %r14
nop
nop
nop
nop
add %r10, %r10
movb $0x51, (%r14)
nop
nop
inc %r10

// Store
lea addresses_normal+0x12a61, %rdx
nop
nop
dec %r15
movl $0x51525354, (%rdx)
nop
dec %r13

// Store
lea addresses_WT+0x414b, %r9
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovntdq %ymm4, (%r9)
nop
nop
nop
cmp %r15, %r15

// Store
lea addresses_US+0x10fcb, %r9
nop
nop
add $34362, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovups %ymm1, (%r9)
inc %r9

// Store
lea addresses_WC+0x1138b, %r14
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm1
movups %xmm1, (%r14)
nop
nop
nop
sub %rsi, %rsi

// Load
mov $0x7f71c90000000d4b, %r9
clflush (%r9)
nop
nop
nop
nop
cmp %rdx, %rdx
movb (%r9), %r14b
nop
and %r10, %r10

// Faulty Load
mov $0x7f71c90000000d4b, %rsi
nop
cmp %r13, %r13
vmovups (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r15
lea oracles, %rdx
and $0xff, %r15
shlq $12, %r15
mov (%rdx,%r15,1), %r15
pop %rsi
pop %rdx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}}
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'src': {'NT': True, 'same': True, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'64': 1, 'a4': 2, '2a': 1, 'a5': 1, '08': 329, 'a8': 1, '72': 138, 'a6': 3, '44': 3954, 'ff': 6, '00': 9442, 'a7': 3, 'f0': 1, 'ba': 1}
f0 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 44 44 00 00 44 00 00 44 00 00 44 00 44 00 44 00 00 00 00 00 44 72 00 72 00 72 00 00 00 72 72 00 72 72 44 72 08 44 00 00 00 00 00 00 44 00 44 00 44 00 00 44 00 00 00 44 00 44 00 44 00 00 44 00 00 00 00 00 00 44 44 00 00 00 44 44 44 72 44 00 44 00 72 72 44 00 00 00 00 00 44 00 00 00 44 00 44 44 00 00 00 00 00 44 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 00 00 00 00 00 00 00 44 00 00 00 44 00 00 44 00 00 44 00 00 00 00 44 00 00 44 00 44 00 00 00 00 00 00 44 44 00 44 00 00 00 44 08 00 08 08 08 08 08 00 08 00 00 08 00 44 44 44 44 08 00 00 44 44 08 00 08 00 08 00 08 08 08 08 44 08 08 00 44 44 00 44 00 08 08 00 08 44 00 44 44 08 00 44 44 00 00 00 00 00 00 08 00 00 44 44 00 00 00 08 44 00 00 00 44 00 00 44 44 44 44 00 00 44 00 00 00 44 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 44 44 00 44 00 44 00 44 00 00 44 44 00 00 44 00 00 00 00 00 44 00 00 00 44 44 44 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 44 44 00 00 00 44 00 00 00 44 44 00 00 44 00 44 00 00 00 00 44 44 00 00 00 00 44 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 44 44 00 00 44 00 00 00 08 08 44 44 00 44 44 44 08 00 44 08 44 00 44 08 44 00 08 08 08 08 44 08 00 00 00 44 44 44 08 00 00 00 44 00 00 00 00 00 44 44 00 44 00 00 00 44 00 00 00 00 44 00 00 44 44 44 44 00 00 00 00 00 00 00 00 00 00 44 44 00 44 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 44 00 00 00 00 44 00 00 44 00 00 00 44 44 00 44 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 08 00 00 00 44 00 00 00 44 44 00 44 00 00 00 00 44 44 44 44 44 44 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 44 00 44 44 00 00 00 44 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 44 44 00 00 00 44 44 00 00 00 00 44 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 44 44 44 00 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 44 44 44 44 44 44 00 00 00 00 00 00 44 00 44 00 44 44 00 00 00 00 00 00 00 00 00 44 44 00 00 44 00 00 00 00 00 44 44 44 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 08 00 00 00 44 08 08 00 44 08 08 08 08 08 44 00 08 08 08 08 08 44 08 08 08 08 08 08 00 08 44 08 44 44 44 44 00 00 08 44 44 44 44 44 00 00 44 44 44 44 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 44 44 00 00 00 00 44 44 44 00 00 00 00 00 00 08 44 08 08 08 00 44 08 00 00 00 00 00 00 00 00 08 00 00 00 00 00 44 08 08 00 00 08 44 00 08 44 44 00 00 00 08 00 08 00 00 00 00 00 00 00 00 44 44 00 44 00 44 00 44 00 44 44 00 00 44 00 00 00 44 44 00 44 00 44 44 44 00 00 00 00 00 00 44 44 44 00 44 00 00 00 44 00 00 00 00 00 44 44 00 00 44 00 44 44 00 00 00 00 00 72 00 00 00 44 44 44 44 44 00 44 00 44 44 44 08 00 08 00 08 08 44
*/
