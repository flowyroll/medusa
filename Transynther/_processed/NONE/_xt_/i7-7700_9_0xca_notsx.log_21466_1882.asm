.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x6e12, %r9
dec %r12
mov (%r9), %r13
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x1551, %rsi
lea addresses_D_ht+0x1b071, %rdi
nop
nop
cmp %r15, %r15
mov $44, %rcx
rep movsb
nop
nop
nop
nop
xor %r12, %r12
lea addresses_WT_ht+0x1cbd1, %rsi
lea addresses_D_ht+0xed71, %rdi
nop
nop
nop
nop
nop
sub %r9, %r9
mov $104, %rcx
rep movsl
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0xfe85, %rsi
lea addresses_WC_ht+0x52f1, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %r9
mov $112, %rcx
rep movsb
nop
nop
nop
nop
and $47787, %r9
lea addresses_D_ht+0x15ab9, %r12
nop
nop
nop
nop
nop
dec %rsi
mov (%r12), %di
nop
cmp $53734, %rsi
lea addresses_WT_ht+0x10471, %rdi
nop
and $65524, %rsi
mov (%rdi), %r12d
and %r13, %r13
lea addresses_A_ht+0xc6dc, %rsi
lea addresses_D_ht+0x1e0b1, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $823, %r12
mov $12, %rcx
rep movsw
nop
sub $18266, %r12
lea addresses_WT_ht+0xe271, %rdi
nop
nop
nop
cmp $21579, %r12
movw $0x6162, (%rdi)
nop
nop
nop
xor %r12, %r12
lea addresses_WC_ht+0x13029, %rcx
nop
nop
sub $15648, %rsi
mov (%rcx), %r9w
nop
nop
nop
nop
nop
cmp $16929, %rdi
lea addresses_WC_ht+0x1a0c9, %r13
clflush (%r13)
nop
nop
nop
xor %r12, %r12
mov (%r13), %r9
nop
inc %rsi
lea addresses_WT_ht+0x20f1, %r9
nop
nop
nop
nop
nop
cmp $26163, %r12
movb (%r9), %r15b
nop
nop
nop
dec %r9
lea addresses_D_ht+0xa871, %r13
xor $44956, %r12
mov $0x6162636465666768, %rdi
movq %rdi, (%r13)
nop
nop
nop
dec %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rsi

// Store
lea addresses_D+0x4471, %r14
nop
xor %rbx, %rbx
movb $0x51, (%r14)
nop
nop
nop
nop
sub $18456, %r10

// Store
lea addresses_normal+0xb26a, %r15
nop
nop
nop
nop
nop
inc %rsi
movb $0x51, (%r15)
dec %r10

// Store
lea addresses_WC+0x8e99, %rbx
clflush (%rbx)
nop
nop
nop
cmp %rbp, %rbp
movb $0x51, (%rbx)
and %r8, %r8

// Store
lea addresses_RW+0x1a871, %rsi
inc %r8
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movups %xmm5, (%rsi)
xor $16194, %r14

// Store
lea addresses_WT+0x12f1, %rbp
and $4378, %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm5
movups %xmm5, (%rbp)
nop
sub %r15, %r15

// Store
lea addresses_PSE+0xaf71, %r8
nop
nop
nop
nop
nop
xor $61013, %rsi
movb $0x51, (%r8)
nop
nop
sub %r14, %r14

// Load
lea addresses_normal+0x5171, %r14
nop
nop
nop
nop
xor $34359, %rbp
mov (%r14), %r15
nop
nop
xor %rbx, %rbx

// Load
lea addresses_WC+0x1aba1, %rbx
nop
nop
nop
nop
nop
add $27389, %rsi
movups (%rbx), %xmm5
vpextrq $0, %xmm5, %r8
nop
nop
nop
nop
and %r14, %r14

// Store
mov $0xd11, %rsi
nop
nop
nop
xor %rbx, %rbx
movw $0x5152, (%rsi)
nop
nop
nop
nop
inc %rsi

// Load
lea addresses_RW+0xc271, %r8
nop
nop
nop
and $1684, %rbp
vmovups (%r8), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r14
dec %r15

// Store
lea addresses_D+0xda71, %rsi
nop
nop
nop
inc %r14
movw $0x5152, (%rsi)
nop
nop
dec %rbp

// Store
lea addresses_D+0x15321, %r15
nop
sub $39753, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%r15)
nop
nop
nop
nop
nop
sub %r15, %r15

// Faulty Load
lea addresses_RW+0xc271, %r8
nop
nop
nop
nop
nop
add $55336, %rbx
vmovups (%r8), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r15
lea oracles, %rbx
and $0xff, %r15
shlq $12, %r15
mov (%rbx,%r15,1), %r15
pop %rsi
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'32': 21466}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
