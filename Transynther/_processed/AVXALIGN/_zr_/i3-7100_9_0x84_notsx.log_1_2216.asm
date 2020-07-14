.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xbea4, %r8
nop
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%r8)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_D_ht+0xa224, %rsi
lea addresses_UC_ht+0x13842, %rdi
nop
nop
nop
sub $9410, %rbx
mov $35, %rcx
rep movsl
nop
dec %r8
lea addresses_WC_ht+0xd5a4, %rcx
nop
nop
nop
nop
nop
xor $41260, %r10
movb $0x61, (%rcx)
nop
nop
sub %r9, %r9
lea addresses_UC_ht+0x1309e, %rsi
lea addresses_D_ht+0x1def4, %rdi
nop
nop
add $3885, %r15
mov $105, %rcx
rep movsq
nop
and %rcx, %rcx
lea addresses_UC_ht+0xf024, %rsi
lea addresses_WC_ht+0xe035, %rdi
nop
nop
nop
nop
add %r10, %r10
mov $48, %rcx
rep movsb
nop
and $47539, %rbx
lea addresses_UC_ht+0x70a4, %rsi
lea addresses_A_ht+0x15fa4, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $51, %rcx
rep movsl
nop
lfence
lea addresses_normal_ht+0x168a4, %rsi
lea addresses_D_ht+0x15a4, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $22, %rcx
rep movsl
cmp %r8, %r8
lea addresses_D_ht+0x11fa4, %rsi
lea addresses_A_ht+0x27a4, %rdi
nop
nop
nop
nop
cmp %r10, %r10
mov $66, %rcx
rep movsb
nop
sub $5493, %r8
lea addresses_UC_ht+0x7fe4, %r9
nop
nop
nop
nop
add $59345, %r8
mov (%r9), %r15d
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x195e4, %r8
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r8)
nop
dec %rsi
lea addresses_WC_ht+0x13aa4, %rsi
nop
nop
sub $137, %r9
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
nop
nop
nop
nop
cmp $4853, %rdi
lea addresses_D_ht+0x10081, %rbx
nop
nop
nop
nop
nop
sub %rdi, %rdi
vmovups (%rbx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r9
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x10904, %rsi
nop
nop
nop
nop
xor $38055, %rbx
movw $0x6162, (%rsi)
nop
nop
nop
nop
add $49653, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdx

// Store
lea addresses_A+0x4aa4, %r12
nop
nop
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movups %xmm2, (%r12)
nop
nop
nop
sub $42175, %rdx

// Store
lea addresses_WC+0xce86, %r15
nop
nop
nop
nop
xor $41830, %r13
movl $0x51525354, (%r15)
nop
and %r9, %r9

// Store
lea addresses_UC+0xdaa4, %rdx
nop
nop
nop
nop
xor $36746, %rcx
mov $0x5152535455565758, %r15
movq %r15, (%rdx)
nop
sub $48848, %rcx

// Store
lea addresses_A+0xace4, %rcx
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
nop
add $55147, %r14

// Store
lea addresses_WT+0x1b54c, %r9
nop
nop
nop
nop
sub $42959, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovntdq %ymm0, (%r9)
nop
and %r14, %r14

// Store
lea addresses_D+0x140a4, %r12
nop
nop
and %r14, %r14
mov $0x5152535455565758, %r9
movq %r9, (%r12)
nop
nop
nop
nop
and %rdx, %rdx

// Store
lea addresses_WT+0xaca4, %r14
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %r9
movq %r9, (%r14)
add $6217, %rdx

// Store
lea addresses_D+0x10f72, %r15
nop
dec %r12
mov $0x5152535455565758, %rdx
movq %rdx, (%r15)
nop
nop
nop
nop
nop
and $25921, %r12

// Store
mov $0x61a21b0000000424, %r12
nop
nop
nop
nop
nop
xor %rdx, %rdx
movb $0x51, (%r12)
nop
nop
nop
nop
xor $32333, %r14

// Faulty Load
mov $0x770afb0000000ea4, %r9
clflush (%r9)
cmp $4837, %r14
vmovaps (%r9), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r13
lea oracles, %r9
and $0xff, %r13
shlq $12, %r13
mov (%r9,%r13,1), %r13
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 1}
00
*/
