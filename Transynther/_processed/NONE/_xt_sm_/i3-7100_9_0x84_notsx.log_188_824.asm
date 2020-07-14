.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1ac1e, %r10
clflush (%r10)
nop
nop
nop
nop
inc %rcx
movl $0x61626364, (%r10)
and $17076, %r12
lea addresses_normal_ht+0x10b4e, %r14
nop
nop
nop
nop
cmp $64227, %rsi
movb (%r14), %r9b
cmp %r10, %r10
lea addresses_WC_ht+0x517e, %r10
nop
nop
nop
nop
nop
cmp $31323, %rdx
movl $0x61626364, (%r10)
sub $16281, %r12
lea addresses_A_ht+0x8ace, %rsi
lea addresses_D_ht+0x12aee, %rdi
nop
xor $21382, %r9
mov $98, %rcx
rep movsq
cmp $42033, %rcx
lea addresses_UC_ht+0xc5be, %rdi
nop
xor $56709, %r14
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r12
nop
nop
nop
nop
xor $26824, %r9
lea addresses_WC_ht+0xd0ce, %r12
nop
nop
cmp $1012, %r10
movups (%r12), %xmm1
vpextrq $0, %xmm1, %r14
nop
nop
nop
sub $49012, %rdi
lea addresses_UC_ht+0x1047e, %r14
nop
nop
nop
sub %rsi, %rsi
mov (%r14), %rcx
nop
nop
nop
nop
xor %r12, %r12
lea addresses_WT_ht+0x16310, %rsi
nop
nop
nop
nop
sub %rcx, %rcx
mov (%rsi), %r14w
nop
sub %r14, %r14
lea addresses_WC_ht+0x1ed2e, %rsi
dec %rdi
movl $0x61626364, (%rsi)
xor $9818, %rsi
lea addresses_WT_ht+0x264e, %rsi
lea addresses_D_ht+0x1da4e, %rdi
and $47033, %rdx
mov $113, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x1c5f6, %r10
clflush (%r10)
nop
nop
nop
nop
inc %rcx
movb $0x61, (%r10)
nop
nop
add %r10, %r10
lea addresses_WC_ht+0x150ce, %r14
add %rsi, %rsi
movw $0x6162, (%r14)
nop
nop
nop
nop
and %r12, %r12
lea addresses_A_ht+0x1c8b1, %r10
nop
nop
nop
nop
and %rcx, %rcx
movups (%r10), %xmm6
vpextrq $0, %xmm6, %rsi
nop
sub %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rax
push %rdx
push %rsi

// Load
lea addresses_A+0x27d0, %rsi
sub %r12, %r12
movb (%rsi), %r14b
nop
nop
nop
and %rax, %rax

// Store
lea addresses_A+0x734e, %r12
nop
add %r10, %r10
movb $0x51, (%r12)
nop
nop
nop
nop
add $52464, %r12

// Store
lea addresses_WT+0xaf6, %rax
nop
nop
nop
nop
inc %rdx
movb $0x51, (%rax)
nop
nop
nop
nop
nop
xor $38434, %r14

// Store
lea addresses_A+0x1c15e, %r12
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movntdq %xmm0, (%r12)
and %r14, %r14

// Store
lea addresses_PSE+0x1fa4e, %rsi
nop
sub %r14, %r14
movb $0x51, (%rsi)

// Exception!!!
nop
nop
nop
nop
mov (0), %rax
nop
nop
add $34897, %r10

// Store
lea addresses_D+0x1544e, %rdx
nop
nop
nop
inc %r14
movl $0x51525354, (%rdx)
nop
add $37566, %rdx

// Faulty Load
lea addresses_PSE+0x1fa4e, %rax
nop
nop
dec %rdx
movb (%rax), %r8b
lea oracles, %r12
and $0xff, %r8
shlq $12, %r8
mov (%r12,%r8,1), %r8
pop %rsi
pop %rdx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'51': 188}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
