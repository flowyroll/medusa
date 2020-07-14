.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x6743, %r9
nop
nop
nop
nop
nop
dec %rdx
vmovups (%r9), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
nop
add %rdi, %rdi
lea addresses_WC_ht+0x293, %rsi
lea addresses_normal_ht+0x5293, %rdi
cmp %r12, %r12
mov $68, %rcx
rep movsb
nop
nop
nop
sub %r12, %r12
lea addresses_A_ht+0x19293, %rdx
nop
nop
nop
nop
nop
and $4474, %r13
movb $0x61, (%rdx)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x12c5f, %r13
nop
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r13)
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_A_ht+0x8e43, %rsi
lea addresses_A_ht+0xc77b, %rdi
nop
add %r9, %r9
mov $33, %rcx
rep movsw
nop
xor $56938, %r13
lea addresses_WT_ht+0x1d8ff, %rcx
clflush (%rcx)
xor %rdx, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0xde07, %rsi
lea addresses_WT_ht+0x10693, %rdi
nop
nop
nop
nop
nop
xor $46766, %r12
mov $49, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x15883, %rsi
lea addresses_normal_ht+0x13a93, %rdi
clflush (%rdi)
nop
nop
sub $6100, %rdx
mov $87, %rcx
rep movsb
nop
nop
and %r13, %r13
lea addresses_normal_ht+0x13d13, %rsi
lea addresses_normal_ht+0xca93, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub $25468, %r15
mov $93, %rcx
rep movsq
nop
nop
nop
inc %r9
lea addresses_normal_ht+0x1a093, %rsi
lea addresses_UC_ht+0x9f93, %rdi
nop
nop
sub $29920, %r9
mov $7, %rcx
rep movsb
nop
nop
nop
dec %r15
lea addresses_WC_ht+0xcd3, %rdi
nop
sub %rdx, %rdx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
sub $33485, %rdx
lea addresses_WT_ht+0x7293, %rsi
lea addresses_UC_ht+0xd713, %rdi
nop
nop
nop
add %r12, %r12
mov $89, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x16093, %rcx
nop
cmp %r15, %r15
movb (%rcx), %dl
nop
xor %rsi, %rsi
lea addresses_normal_ht+0xca1b, %rdi
nop
nop
cmp %r13, %r13
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r15
nop
cmp $58053, %r13
lea addresses_WT_ht+0x7713, %rdi
and $23467, %r13
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
xor $54539, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rdi

// Store
lea addresses_normal+0x1b943, %r8
clflush (%r8)
nop
nop
nop
nop
nop
xor $20516, %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm2
movups %xmm2, (%r8)
and $50247, %r14

// Store
lea addresses_UC+0x12a93, %r8
nop
nop
and $60249, %rbp
mov $0x5152535455565758, %r14
movq %r14, (%r8)
nop
nop
nop
inc %r15

// Load
lea addresses_normal+0x2673, %r12
nop
inc %rdi
mov (%r12), %r15d
xor $17901, %rdi

// Store
lea addresses_PSE+0x10a93, %rdi
nop
nop
nop
xor $10337, %r12
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
add $22467, %r8

// Store
lea addresses_RW+0x1cb43, %r15
add %r12, %r12
movl $0x51525354, (%r15)
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_RW+0x5f2c, %r10
nop
nop
xor $62640, %r14
movb $0x51, (%r10)
nop
nop
nop
dec %r14

// Load
lea addresses_RW+0xac8b, %r10
nop
nop
nop
nop
inc %rdi
movntdqa (%r10), %xmm5
vpextrq $0, %xmm5, %rbp
nop
nop
sub $36055, %r8

// Store
lea addresses_WC+0x9763, %rdi
xor $37554, %r8
movb $0x51, (%rdi)
nop
nop
sub %r8, %r8

// Load
mov $0x693, %rdi
nop
nop
nop
nop
add $13430, %r8
mov (%rdi), %r12w
nop
add $58744, %r15

// Faulty Load
lea addresses_PSE+0x10a93, %r14
nop
nop
nop
add %rdi, %rdi
movb (%r14), %r15b
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_P', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'51': 21829}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
