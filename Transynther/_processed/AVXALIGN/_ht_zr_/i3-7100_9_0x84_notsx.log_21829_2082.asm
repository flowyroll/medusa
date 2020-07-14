.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1dbf1, %r14
nop
cmp $57718, %r10
movw $0x6162, (%r14)
nop
nop
nop
nop
nop
inc %rbp
lea addresses_A_ht+0xa271, %rsi
lea addresses_normal_ht+0x1b951, %rdi
cmp %r8, %r8
mov $16, %rcx
rep movsw
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x15c51, %r14
nop
nop
cmp $26978, %r10
mov (%r14), %ecx
nop
sub %r8, %r8
lea addresses_UC_ht+0x13651, %r8
nop
nop
sub $58225, %rdi
movw $0x6162, (%r8)
nop
nop
and %r14, %r14
lea addresses_UC_ht+0x123dd, %r8
nop
nop
nop
nop
nop
sub $3264, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm5
vmovups %ymm5, (%r8)
nop
nop
nop
cmp $16736, %rbp
lea addresses_WC_ht+0x8c68, %r8
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
cmp %r14, %r14
lea addresses_A_ht+0x5849, %rsi
nop
cmp $36810, %rdi
movw $0x6162, (%rsi)
nop
nop
nop
cmp %r8, %r8
lea addresses_WC_ht+0x7fb1, %rsi
lea addresses_A_ht+0x16c7f, %rdi
nop
inc %r14
mov $96, %rcx
rep movsl
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x9d31, %rsi
lea addresses_WT_ht+0x184b1, %rdi
nop
cmp %rbp, %rbp
mov $90, %rcx
rep movsq
nop
nop
nop
nop
and $5882, %rbp
lea addresses_UC_ht+0x16071, %rsi
lea addresses_D_ht+0x9719, %rdi
nop
nop
nop
nop
and $44221, %r8
mov $44, %rcx
rep movsl
nop
cmp $54574, %rcx
lea addresses_WC_ht+0xcd31, %rsi
lea addresses_A_ht+0x901, %rdi
nop
nop
nop
add $56824, %rbx
mov $54, %rcx
rep movsq
nop
nop
nop
nop
and $57407, %r10
lea addresses_normal_ht+0x1d491, %rsi
lea addresses_WT_ht+0x1c531, %rdi
nop
nop
nop
nop
inc %r8
mov $74, %rcx
rep movsb
xor $1505, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rcx
push %rdx

// Faulty Load
lea addresses_WT+0x1cd31, %rcx
nop
nop
nop
inc %r8
movaps (%rcx), %xmm7
vpextrq $1, %xmm7, %r15
lea oracles, %rdx
and $0xff, %r15
shlq $12, %r15
mov (%rdx,%r15,1), %r15
pop %rdx
pop %rcx
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'49': 5302, '00': 8356, '48': 5335, '45': 118, '44': 2718}
49 48 00 48 44 48 44 44 48 00 48 48 48 48 48 48 48 48 48 00 44 48 44 44 44 48 44 48 48 44 48 48 44 48 44 48 44 44 44 48 44 48 44 44 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 00 48 48 48 48 00 48 44 00 48 48 44 44 48 48 00 44 44 44 48 44 44 44 48 44 48 48 00 44 48 44 44 44 48 00 44 48 48 00 00 49 49 49 49 49 49 48 49 49 49 49 49 49 49 49 49 49 48 49 48 49 48 49 00 00 00 00 00 00 00 00 49 49 49 00 00 00 00 00 00 00 00 00 00 49 00 49 49 49 49 49 49 49 49 48 49 49 49 49 49 49 49 49 48 48 49 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 49 49 00 49 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 48 49 49 49 49 48 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 49 48 49 49 49 49 48 49 49 49 49 48 49 49 48 49 49 00 00 00 00 00 00 00 00 49 48 49 48 49 49 49 49 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 48 49 49 49 49 49 49 49 48 49 00 49 00 48 48 48 00 48 00 48 48 48 48 44 48 44 48 48 48 44 48 00 44 48 48 48 48 48 48 00 48 48 48 44 44 44 48 48 48 48 48 44 48 48 48 00 00 00 00 00 00 00 00 00 00 00 49 49 49 49 49 48 49 49 00 00 00 00 00 49 49 48 49 48 49 49 48 49 49 48 49 49 49 49 00 00 00 00 00 00 00 00 00 48 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 49 49 48 49 49 00 49 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 49 49 49 49 49 49 49 49 49 49 48 49 49 49 49 49 49 49 49 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 49 48 49 00 00 00 49 49 49 48 49 48 49 49 49 49 49 49 49 49 48 49 48 49 48 49 49 49 49 49 49 49 49 49 00 00 49 00 00 00 00 00 00 00 00 48 00 49 00 00 00 00 00 00 00 00 49 49 49 48 49 48 49 48 49 48 49 49 49 49 49 49 00 00 00 00 00 00 49 49 49 49 48 49 49 49 48 49 49 49 48 49 49 49 48 49 49 49 49 48 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 48 48 44 48 48 48 48 00 00 45 44 44 44 45 48 44 48 00 48 48 48 00 48 48 48 48 00 48 48 00 48 44 00 44 48 00 48 00 44 44 44 44 48 44 48 48 00 44 00 48 48 44 44 44 48 48 48 48 44 00 48 48 00 48 00 48 48 48 48 48 44 48 48 48 48 48 48 48 00 48 48 44 48 00 48 48 49 49 49 49 49 48 49 49 48 49 49 48 49 48 49 48 00 00 00 49 48 49 49 49 49 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 48 48 48 44 44 48 48 48 44 44 48 44 48 44 48 00 44 48 48 44 48 44 48 48 48 00 48 44 48 44 44 48 48 48 44 44 48 48 48 44 48 44 44 48 44 48 48 48 48 48 48 00 44 48 44 48 00 44 48 48 44 48 00 48 48 44 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 44 44 48 44 44 44 48 00 48 48 48 48 44 44 44 48 48 48 48 48 48 48 48 48 48 48 44 48 48 00 00 00 00 00 00 00 00 00 00 48 48 48 44 00 00 00 00 00 00 49 49 49 00 00 00 00 00 00 49 49 49 49 49 49 49 49 49 49 49 48 00 48 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
