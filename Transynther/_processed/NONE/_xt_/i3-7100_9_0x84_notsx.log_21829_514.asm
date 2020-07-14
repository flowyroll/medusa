.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xc5f9, %rsi
lea addresses_UC_ht+0x15819, %rdi
nop
and $16465, %r10
mov $67, %rcx
rep movsq
nop
nop
inc %r13
lea addresses_D_ht+0x1d715, %rdx
nop
nop
nop
nop
nop
add %r10, %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
dec %rcx
lea addresses_A_ht+0x15379, %rdx
nop
nop
nop
nop
cmp $44707, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%rdx)
nop
xor $55718, %rcx
lea addresses_WC_ht+0x21b9, %rdi
nop
nop
and %r13, %r13
movb $0x61, (%rdi)
nop
inc %rcx
lea addresses_WT_ht+0x1d, %rdx
nop
nop
nop
inc %rcx
movb $0x61, (%rdx)
and $24517, %r8
lea addresses_A_ht+0x1d9f9, %rsi
nop
add $12263, %rcx
mov (%rsi), %r8
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x142b3, %rdx
nop
nop
nop
nop
nop
cmp %r8, %r8
movups (%rdx), %xmm7
vpextrq $1, %xmm7, %r13
nop
inc %r13
lea addresses_WT_ht+0x13ef9, %rsi
add %rcx, %rcx
movl $0x61626364, (%rsi)
nop
cmp $30265, %rdx
lea addresses_normal_ht+0x7d67, %r8
nop
nop
nop
sub %r10, %r10
mov (%r8), %dx
nop
xor $56337, %rdi
lea addresses_D_ht+0x31d9, %r13
nop
nop
and %r8, %r8
mov (%r13), %ecx
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x39f9, %r8
sub %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r8)
nop
sub %rdx, %rdx
lea addresses_A_ht+0x763d, %rsi
lea addresses_UC_ht+0x11b01, %rdi
nop
nop
nop
cmp %r14, %r14
mov $35, %rcx
rep movsb
nop
cmp $47889, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x9533, %r14
nop
nop
nop
add $42896, %r12
mov $0x5152535455565758, %rcx
movq %rcx, (%r14)
nop
nop
nop
nop
nop
and $64524, %rsi

// Store
lea addresses_UC+0x10f9, %r10
nop
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %rcx
movq %rcx, (%r10)
nop
sub $11798, %r12

// Store
lea addresses_UC+0xbe79, %r10
nop
and $56057, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovups %ymm1, (%r10)
sub %r14, %r14

// REPMOV
lea addresses_WT+0x3bf9, %rsi
lea addresses_A+0x1c3b9, %rdi
mfence
mov $3, %rcx
rep movsl
nop
nop
nop
nop
add %r8, %r8

// REPMOV
lea addresses_D+0xccd3, %rsi
lea addresses_normal+0x7b79, %rdi
clflush (%rsi)
xor %r14, %r14
mov $113, %rcx
rep movsb
nop
nop
xor %r10, %r10

// REPMOV
lea addresses_UC+0x198b9, %rsi
lea addresses_WC+0x13231, %rdi
cmp $4881, %r10
mov $83, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r10

// Faulty Load
lea addresses_WC+0x1f9, %r10
clflush (%r10)
nop
inc %rdi
mov (%r10), %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_WC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM'}
{'38': 21829}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
