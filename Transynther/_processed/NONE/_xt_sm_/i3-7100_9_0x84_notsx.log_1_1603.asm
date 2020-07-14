.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xd6f0, %rdx
nop
nop
nop
nop
dec %r13
movb $0x61, (%rdx)
add %r12, %r12
lea addresses_UC_ht+0x1d234, %r12
xor $16639, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r12)
dec %r12
lea addresses_UC_ht+0x6a34, %rsi
lea addresses_WT_ht+0x4054, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $87, %rcx
rep movsq
nop
nop
nop
nop
nop
add $42437, %r8
lea addresses_A_ht+0x6a34, %rsi
nop
nop
add %r13, %r13
mov $0x6162636465666768, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
nop
nop
cmp $51287, %r12
lea addresses_UC_ht+0x3e34, %r12
nop
and $12381, %rdx
movl $0x61626364, (%r12)
nop
nop
nop
inc %r13
lea addresses_WC_ht+0x14f44, %rsi
clflush (%rsi)
add $20802, %r13
movb (%rsi), %r12b
nop
nop
nop
and $10558, %r8
lea addresses_WC_ht+0x1c3b4, %rsi
lea addresses_D_ht+0x6a34, %rdi
clflush (%rdi)
nop
nop
add %r9, %r9
mov $49, %rcx
rep movsw
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x63b4, %rsi
lea addresses_WC_ht+0xe974, %rdi
nop
nop
cmp $23045, %r8
mov $48, %rcx
rep movsl
nop
nop
and $64025, %rdx
lea addresses_A_ht+0x1c334, %r8
nop
cmp $44271, %r13
movb (%r8), %dl
nop
nop
nop
xor %r9, %r9
lea addresses_A_ht+0xa34, %rdi
nop
xor %rsi, %rsi
mov (%rdi), %r9d
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x1c734, %rdi
sub $15944, %r8
mov (%rdi), %r13w
nop
nop
nop
add $7810, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x6bb0, %rbx
add %r13, %r13
movl $0x51525354, (%rbx)
nop
nop
add %rbx, %rbx

// Store
lea addresses_PSE+0x8034, %r12
nop
add $60470, %r14
movl $0x51525354, (%r12)
nop
xor %r10, %r10

// Store
lea addresses_WT+0xfab4, %r14
nop
nop
nop
nop
nop
inc %rdx
movl $0x51525354, (%r14)
nop
nop
nop
nop
and $54029, %rbx

// Store
lea addresses_UC+0xa634, %rdx
nop
nop
nop
cmp $61564, %r12
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
and %r14, %r14

// REPMOV
lea addresses_WT+0xc734, %rsi
lea addresses_A+0x16a34, %rdi
nop
nop
nop
nop
nop
and $49044, %r12
mov $4, %rcx
rep movsq
nop
nop
nop
nop
and $56353, %rdi

// Store
lea addresses_A+0x16a34, %r14
xor $28923, %rdi
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
and %r14, %r14

// Store
lea addresses_D+0x3616, %rbx
nop
xor $19223, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movaps %xmm7, (%rbx)
nop
nop
nop
nop
nop
add $19218, %r12

// Store
lea addresses_A+0x16a34, %rdx
nop
nop
nop
nop
nop
xor %r10, %r10
movb $0x51, (%rdx)
nop
nop
inc %r10

// Faulty Load
lea addresses_A+0x16a34, %rdx
nop
nop
nop
nop
xor %rsi, %rsi
vmovups (%rdx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r14
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'51': 1}
51
*/
