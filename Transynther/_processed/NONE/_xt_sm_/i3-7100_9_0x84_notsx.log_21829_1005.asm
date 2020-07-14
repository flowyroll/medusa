.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x12060, %rsi
lea addresses_D_ht+0x1b760, %rdi
nop
nop
nop
nop
cmp $56361, %r8
mov $73, %rcx
rep movsq
nop
nop
nop
nop
xor %r8, %r8
lea addresses_A_ht+0x133c0, %rsi
lea addresses_D_ht+0x16460, %rdi
nop
nop
nop
nop
xor $24715, %r8
mov $29, %rcx
rep movsl
add $24326, %r8
lea addresses_WC_ht+0x1ec74, %rsi
lea addresses_WC_ht+0x1a9a0, %rdi
add $34175, %r9
mov $39, %rcx
rep movsl
nop
nop
add %r8, %r8
lea addresses_WC_ht+0xf860, %r10
nop
nop
nop
add $24289, %rdi
mov (%r10), %r9w
nop
nop
inc %r9
lea addresses_D_ht+0x15bfc, %rdi
and $22118, %rbx
movb $0x61, (%rdi)
cmp %rsi, %rsi
lea addresses_UC_ht+0x126e0, %r8
nop
and $5769, %rsi
movw $0x6162, (%r8)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x14b58, %r9
nop
add %rsi, %rsi
movups (%r9), %xmm1
vpextrq $1, %xmm1, %rbx
nop
nop
nop
nop
nop
inc %rbx
lea addresses_normal_ht+0x860, %rbx
and %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rbx)
nop
cmp %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Load
lea addresses_RW+0xa120, %r15
nop
nop
nop
nop
nop
sub $29264, %r12
vmovups (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rax
nop
inc %rax

// Store
lea addresses_D+0x1b060, %r10
nop
nop
nop
nop
nop
add $43775, %rax
mov $0x5152535455565758, %r12
movq %r12, (%r10)
nop
nop
nop
inc %rax

// Store
lea addresses_PSE+0x1ab3e, %r15
nop
add %r14, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%r15)
nop
nop
dec %r10

// REPMOV
lea addresses_RW+0x1aa20, %rsi
lea addresses_WC+0xfc00, %rdi
nop
add %r14, %r14
mov $89, %rcx
rep movsl
sub %r15, %r15

// Store
lea addresses_RW+0x1b9c0, %rdi
cmp %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovaps %ymm2, (%rdi)
nop
nop
nop
cmp $29970, %r8

// Load
lea addresses_normal+0x3ae0, %r8
and %rcx, %rcx
movups (%r8), %xmm5
vpextrq $1, %xmm5, %rax
and %r14, %r14

// Store
lea addresses_RW+0x7668, %r14
clflush (%r14)
dec %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%r14)
nop
nop
nop
cmp $54813, %r15

// Load
lea addresses_PSE+0x152b0, %r8
nop
nop
nop
and %r12, %r12
mov (%r8), %r10
add $52385, %rax

// Store
lea addresses_D+0x1c860, %r12
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r12)
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_UC+0x1045c, %rcx
nop
nop
nop
cmp %rax, %rax
movb $0x51, (%rcx)
nop
dec %rcx

// Store
lea addresses_US+0xc6e9, %rsi
add %r15, %r15
movw $0x5152, (%rsi)
nop
xor $6562, %rax

// Store
lea addresses_PSE+0x1e860, %r15
nop
nop
nop
nop
nop
dec %r12
movb $0x51, (%r15)
nop
nop
nop
add $46617, %r8

// Store
lea addresses_A+0x1cbe0, %r12
nop
nop
nop
and %r8, %r8
movl $0x51525354, (%r12)
and %rax, %rax

// Faulty Load
lea addresses_D+0x1b060, %r8
nop
nop
inc %r14
movb (%r8), %cl
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
