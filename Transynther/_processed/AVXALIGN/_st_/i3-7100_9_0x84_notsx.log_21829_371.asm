.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xa577, %rsi
lea addresses_D_ht+0xf3e7, %rdi
nop
nop
nop
nop
nop
cmp $62260, %r15
mov $58, %rcx
rep movsl
nop
nop
nop
nop
mfence
lea addresses_UC_ht+0xfbaf, %r13
nop
nop
xor $20667, %r14
mov $0x6162636465666768, %r12
movq %r12, %xmm4
movups %xmm4, (%r13)
nop
nop
nop
nop
sub %r12, %r12
lea addresses_WC_ht+0x187e7, %rsi
nop
nop
nop
dec %rcx
movups (%rsi), %xmm2
vpextrq $0, %xmm2, %r12
nop
nop
nop
nop
nop
add $21259, %rsi
lea addresses_WC_ht+0x1b277, %rsi
lea addresses_WC_ht+0xd297, %rdi
and $30815, %r9
mov $59, %rcx
rep movsq
nop
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x2be7, %rsi
nop
nop
nop
cmp $48117, %rcx
movb (%rsi), %r9b
nop
nop
nop
nop
and %r12, %r12
lea addresses_D_ht+0x106b7, %r14
nop
nop
nop
nop
sub $56545, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm1
movups %xmm1, (%r14)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x1c947, %rsi
lea addresses_WT_ht+0x30a7, %rdi
clflush (%rdi)
nop
nop
nop
and %r14, %r14
mov $61, %rcx
rep movsw
nop
nop
dec %rsi
lea addresses_A_ht+0xa3e7, %r13
nop
nop
nop
nop
sub $26626, %r14
mov $0x6162636465666768, %r15
movq %r15, %xmm1
vmovups %ymm1, (%r13)
nop
nop
nop
nop
nop
and $19168, %rsi
lea addresses_A_ht+0xf405, %rsi
lea addresses_WT_ht+0x5a37, %rdi
clflush (%rsi)
nop
nop
nop
add $45902, %r12
mov $86, %rcx
rep movsb
nop
nop
xor %r13, %r13
lea addresses_normal_ht+0xc617, %rsi
lea addresses_UC_ht+0x3fe7, %rdi
clflush (%rdi)
nop
nop
nop
nop
lfence
mov $18, %rcx
rep movsl
nop
nop
nop
add $32086, %r13
lea addresses_D_ht+0xfee7, %r12
nop
nop
nop
nop
add %r14, %r14
mov (%r12), %si
sub %r12, %r12
lea addresses_D_ht+0xa5e3, %r9
nop
nop
sub %r12, %r12
mov (%r9), %r13w
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WT_ht+0x1cde7, %r13
nop
nop
nop
nop
sub $54576, %r15
movw $0x6162, (%r13)
add $46015, %r9
lea addresses_UC_ht+0x10be7, %rdi
nop
nop
add %r9, %r9
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r14
nop
nop
nop
dec %r12
lea addresses_D_ht+0x4ce7, %r9
nop
nop
nop
nop
nop
add %r14, %r14
movl $0x61626364, (%r9)
nop
nop
nop
nop
nop
xor $8802, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
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
push %rax
push %rcx
push %rdi
push %rsi

// Load
lea addresses_WT+0x1b707, %rax
clflush (%rax)
nop
inc %rsi
mov (%rax), %di
nop
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_D+0x15067, %rax
clflush (%rax)
nop
nop
add %r13, %r13
movl $0x51525354, (%rax)
nop
nop
nop
nop
add %r9, %r9

// Load
lea addresses_PSE+0x1cc67, %r9
nop
nop
nop
inc %r14
mov (%r9), %esi
nop
and %rax, %rax

// Store
lea addresses_A+0x1743b, %r8
nop
nop
nop
nop
and %r13, %r13
mov $0x5152535455565758, %rsi
movq %rsi, (%r8)
nop
add $39844, %rax

// Load
lea addresses_UC+0x3e7, %rdi
nop
nop
nop
and %r14, %r14
mov (%rdi), %r8w
nop
nop
nop
nop
nop
xor %rdi, %rdi

// REPMOV
lea addresses_UC+0x3e7, %rsi
lea addresses_normal+0x76e7, %rdi
nop
nop
nop
nop
cmp $59865, %r9
mov $22, %rcx
rep movsb
nop
nop
cmp $14814, %r8

// Store
lea addresses_PSE+0xd6a7, %rcx
nop
nop
nop
xor $4058, %rdi
movl $0x51525354, (%rcx)
nop
nop
cmp %rax, %rax

// Store
lea addresses_normal+0x9df7, %r14
nop
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %rsi
movq %rsi, (%r14)
nop
and %rsi, %rsi

// Faulty Load
lea addresses_UC+0x3e7, %rsi
nop
inc %rcx
mov (%rsi), %r9
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_normal', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'37': 21829}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
