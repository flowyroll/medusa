.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1590e, %r9
nop
nop
nop
nop
add %rbx, %rbx
movups (%r9), %xmm6
vpextrq $1, %xmm6, %r8
nop
xor %rdx, %rdx
lea addresses_D_ht+0xaf52, %r8
nop
nop
nop
nop
xor $13973, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
movups %xmm7, (%r8)
nop
nop
nop
nop
and %r8, %r8
lea addresses_WC_ht+0x6352, %rsi
lea addresses_WC_ht+0x14f52, %rdi
nop
nop
nop
nop
xor $60507, %r8
mov $81, %rcx
rep movsq
nop
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0x15b52, %rsi
lea addresses_D_ht+0x16006, %rdi
nop
nop
nop
sub $20053, %r9
mov $111, %rcx
rep movsl
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x61b2, %r9
add $10171, %rdi
movw $0x6162, (%r9)
dec %rbx
lea addresses_WT_ht+0x960e, %rsi
lea addresses_A_ht+0x3752, %rdi
nop
xor %rbx, %rbx
mov $70, %rcx
rep movsq
add %rsi, %rsi
lea addresses_WT_ht+0x1bdd2, %rsi
lea addresses_D_ht+0xb412, %rdi
clflush (%rdi)
add $39564, %r8
mov $85, %rcx
rep movsq
nop
xor $6537, %r9
lea addresses_A_ht+0x10d2f, %rcx
clflush (%rcx)
nop
nop
nop
sub $35326, %rsi
movb $0x61, (%rcx)
nop
nop
nop
nop
sub $1489, %r8
lea addresses_UC_ht+0x1c652, %rsi
nop
nop
nop
nop
cmp $30515, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x1d052, %rsi
lea addresses_D_ht+0x1d3c8, %rdi
clflush (%rsi)
add $3634, %r9
mov $32, %rcx
rep movsw
nop
add %rbx, %rbx
lea addresses_WT_ht+0x3f52, %rdi
dec %rcx
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
cmp $18907, %rdi
lea addresses_UC_ht+0x4752, %r8
nop
nop
inc %rdi
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
add $53999, %r8
lea addresses_D_ht+0xb952, %rsi
lea addresses_D_ht+0xf932, %rdi
nop
nop
sub %rbp, %rbp
mov $111, %rcx
rep movsw
nop
add %rbp, %rbp
lea addresses_A_ht+0x10577, %rsi
lea addresses_WC_ht+0x1702, %rdi
nop
nop
nop
dec %rbp
mov $77, %rcx
rep movsq
nop
nop
nop
dec %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_RW+0x19f52, %r13
nop
nop
nop
nop
and $50569, %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm6
movups %xmm6, (%r13)
nop
inc %r13

// Store
lea addresses_RW+0x8b52, %rsi
nop
nop
nop
nop
cmp $58459, %rdi
movw $0x5152, (%rsi)
add $55952, %r13

// Store
lea addresses_PSE+0xec92, %rbp
nop
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%rbp)

// Exception!!!
nop
nop
nop
mov (0), %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
mov $0x332c90000000752, %rcx
cmp %rdi, %rdi
movw $0x5152, (%rcx)
nop
nop
nop
nop
add $2041, %rbp

// Store
lea addresses_PSE+0x16782, %rbp
nop
and $58839, %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movups %xmm2, (%rbp)
nop
sub $6701, %r10

// Store
mov $0x882, %r10
nop
nop
nop
sub %rdi, %rdi
movb $0x51, (%r10)
nop
nop
nop
nop
xor %r10, %r10

// Faulty Load
lea addresses_RW+0x19f52, %r13
nop
nop
and %rcx, %rcx
mov (%r13), %ebp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 2, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'58': 9}
58 58 58 58 58 58 58 58 58
*/
