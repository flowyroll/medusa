.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xf689, %rsi
nop
nop
nop
nop
nop
sub $28507, %r12
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
xor %r13, %r13
lea addresses_UC_ht+0x63c9, %r15
nop
nop
nop
nop
nop
dec %rcx
movw $0x6162, (%r15)
nop
nop
add $36169, %r13
lea addresses_UC_ht+0x2289, %rsi
lea addresses_WC_ht+0x19507, %rdi
clflush (%rsi)
nop
xor %r10, %r10
mov $90, %rcx
rep movsq
add $59974, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x19189, %rsi
lea addresses_WT+0x1bc75, %rdi
nop
nop
nop
add $24270, %rbp
mov $79, %rcx
rep movsl
nop
nop
and %rdi, %rdi

// Store
lea addresses_normal+0x14d15, %r8
dec %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%r8)
nop
nop
nop
nop
nop
dec %r8

// Load
lea addresses_US+0x5ad5, %r8
nop
cmp $31451, %r9
vmovups (%r8), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
sub $50707, %rbp

// Faulty Load
mov $0xfe7360000000a89, %r8
nop
xor $40878, %r9
movaps (%r8), %xmm7
vpextrq $1, %xmm7, %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'47': 1, '00': 5000, '36': 16826, '45': 1, '30': 1}
00 36 36 36 36 36 00 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 36 36 36 36 36 36 36 00 00 36 36 00 36 36 36 36 00 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 00 00 36 36 36 36 36 00 00 00 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 36 36 36 36 36 36 00 00 00 36 36 36 36 36 36 36 00 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 00 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 36 36 36 36 36 00 00 36 36 36 36 36 36 36 36 00 00 36 36 36 36 00 00 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 00 00 00 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 00 00 36 36 36 36 36 36 00 00 36 36 36 36 36 36 36 36 00 00 36 36 36 36 36
*/
