.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1138, %r13
nop
nop
nop
nop
nop
xor $28838, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r13)
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0x1a838, %rdi
nop
nop
dec %rax
mov $0x6162636465666768, %r12
movq %r12, %xmm2
and $0xffffffffffffffc0, %rdi
movntdq %xmm2, (%rdi)
add %rcx, %rcx
lea addresses_D_ht+0xdb50, %rsi
lea addresses_UC_ht+0x104d0, %rdi
nop
nop
nop
nop
add %r15, %r15
mov $9, %rcx
rep movsw
nop
nop
nop
inc %r15
lea addresses_D_ht+0x5738, %rcx
nop
cmp $19118, %r15
movb (%rcx), %r13b
nop
nop
nop
cmp $65041, %r13
lea addresses_WC_ht+0xa538, %r12
xor %rdi, %rdi
mov (%r12), %rax
add $47014, %r12
lea addresses_WC_ht+0x138, %r12
nop
nop
nop
nop
nop
and $36752, %rbp
mov (%r12), %esi
nop
nop
nop
nop
cmp $14091, %rsi
lea addresses_D_ht+0x3a38, %rcx
nop
nop
nop
nop
sub $57030, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm3
vmovups %ymm3, (%rcx)
nop
xor $3794, %r15
lea addresses_A_ht+0x838, %r13
nop
inc %r15
mov (%r13), %rbp
nop
nop
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0xf238, %rbp
nop
nop
nop
and %r13, %r13
movl $0x61626364, (%rbp)
nop
nop
inc %rax
lea addresses_D_ht+0xcd38, %rcx
mfence
mov (%rcx), %r15w
nop
nop
nop
nop
inc %r12
lea addresses_normal_ht+0x5e38, %rsi
lea addresses_WC_ht+0x1acf8, %rdi
nop
nop
nop
nop
cmp %rbp, %rbp
mov $108, %rcx
rep movsb
nop
nop
nop
nop
xor %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_US+0x1fec8, %rdx
nop
xor $4855, %r10
mov (%rdx), %rbp
nop
sub %rbp, %rbp

// REPMOV
lea addresses_WC+0x19138, %rsi
lea addresses_normal+0x7720, %rdi
nop
nop
nop
nop
xor $10041, %r15
mov $109, %rcx
rep movsq
cmp $61829, %r15

// Load
lea addresses_WC+0xc598, %rbp
nop
xor %rcx, %rcx
movb (%rbp), %r10b
nop
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_A+0xba80, %r10
add %rsi, %rsi
mov $0x5152535455565758, %r15
movq %r15, (%r10)
nop
nop
and %rdx, %rdx

// REPMOV
mov $0xc38, %rsi
lea addresses_WC+0x1a258, %rdi
nop
nop
nop
nop
cmp %rdx, %rdx
mov $17, %rcx
rep movsl
nop
nop
nop
inc %rsi

// REPMOV
lea addresses_D+0x638, %rsi
mov $0x6c8, %rdi
nop
nop
nop
nop
xor $37630, %r15
mov $60, %rcx
rep movsl
nop
nop
nop
nop
xor %rcx, %rcx

// Store
mov $0xa38, %rdx
nop
nop
nop
lfence
mov $0x5152535455565758, %r10
movq %r10, (%rdx)
nop
nop
nop
nop
and $3829, %rsi

// Store
lea addresses_D+0x14738, %rcx
nop
nop
nop
nop
nop
dec %rdi
movw $0x5152, (%rcx)
nop
nop
nop
sub $3121, %rsi

// Store
lea addresses_WT+0x1d638, %rcx
nop
nop
nop
nop
nop
add %r12, %r12
mov $0x5152535455565758, %r10
movq %r10, (%rcx)
nop
nop
nop
nop
and $701, %rdi

// REPMOV
lea addresses_UC+0xaf04, %rsi
lea addresses_UC+0x9238, %rdi
clflush (%rdi)
nop
sub $61734, %r10
mov $112, %rcx
rep movsl
nop
nop
nop
nop
and $36387, %r12

// Load
lea addresses_WT+0x17a98, %rdi
nop
nop
nop
cmp %rcx, %rcx
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
nop
xor $15164, %rcx

// Load
lea addresses_WT+0x12dd8, %rdx
nop
nop
xor $46733, %r10
movups (%rdx), %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
nop
nop
nop
cmp $38815, %r10

// Store
lea addresses_WC+0xcff8, %r10
nop
nop
add $42441, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
movups %xmm7, (%r10)
nop
nop
nop
and %r10, %r10

// Faulty Load
lea addresses_US+0x1d238, %rdx
clflush (%rdx)
sub $37566, %r12
movb (%rdx), %r10b
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_P'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_D'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'0f': 1}
0f
*/
