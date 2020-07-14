.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xa68c, %rsi
nop
xor %rdx, %rdx
mov (%rsi), %r10w
nop
nop
nop
nop
mfence
lea addresses_UC_ht+0xa8d0, %r10
clflush (%r10)
nop
nop
add $24077, %rdi
movb $0x61, (%r10)
nop
xor %rbp, %rbp
lea addresses_WT_ht+0x16680, %rsi
and $36952, %rdx
mov $0x6162636465666768, %r10
movq %r10, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
add %r10, %r10
lea addresses_WC_ht+0x4600, %rsi
lea addresses_WC_ht+0x1eb28, %rdi
nop
nop
nop
nop
cmp %r12, %r12
mov $103, %rcx
rep movsq
nop
nop
nop
nop
add $25401, %rcx
lea addresses_A_ht+0x1b270, %r15
dec %rsi
movw $0x6162, (%r15)
xor %rcx, %rcx
lea addresses_UC_ht+0xb038, %rdi
nop
xor $4355, %rcx
mov (%rdi), %r10
nop
cmp $23565, %rdi
lea addresses_WT_ht+0x12dd0, %rdi
nop
nop
nop
sub %rcx, %rcx
mov (%rdi), %r12d
nop
and $41995, %rsi
lea addresses_WC_ht+0x65e0, %rcx
nop
xor %rbp, %rbp
mov $0x6162636465666768, %r12
movq %r12, %xmm2
and $0xffffffffffffffc0, %rcx
movaps %xmm2, (%rcx)
xor %r10, %r10
lea addresses_WC_ht+0x2680, %rdx
nop
cmp $20185, %rdi
movb (%rdx), %r10b
nop
nop
add %r10, %r10
lea addresses_WC_ht+0x9fc4, %rsi
lea addresses_WC_ht+0xe680, %rdi
clflush (%rdi)
nop
nop
inc %r15
mov $125, %rcx
rep movsb
nop
nop
add %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x3e80, %r8
nop
nop
nop
nop
nop
dec %rdi
movb $0x51, (%r8)
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_D+0x1ae80, %rbx
nop
nop
nop
cmp %rdi, %rdi
movb $0x51, (%rbx)
nop
nop
nop
nop
xor %r14, %r14

// REPMOV
lea addresses_D+0x9d40, %rsi
lea addresses_UC+0x1da80, %rdi
clflush (%rdi)
nop
and %rbx, %rbx
mov $74, %rcx
rep movsl
nop
nop
lfence

// Load
lea addresses_WC+0xca80, %rbx
nop
add $59558, %r14
movaps (%rbx), %xmm2
vpextrq $1, %xmm2, %rdi
nop
cmp $53465, %r14

// Load
lea addresses_RW+0x13680, %rbx
nop
nop
nop
nop
and $30576, %r8
mov (%rbx), %si
nop
nop
nop
nop
cmp $25434, %rcx

// REPMOV
lea addresses_WC+0x1ca70, %rsi
lea addresses_WC+0x19e80, %rdi
nop
and $50239, %rbx
mov $2, %rcx
rep movsl
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_WC+0x19e80, %r8
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%r8), %rbp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_WC', 'same': True, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'38': 21829}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
