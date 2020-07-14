.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x13a3e, %rsi
lea addresses_A_ht+0x18efe, %rdi
nop
nop
nop
nop
sub %rbp, %rbp
mov $8, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_UC_ht+0x9d7a, %r12
nop
nop
nop
nop
xor %r9, %r9
mov (%r12), %rcx
cmp %rbp, %rbp
lea addresses_normal_ht+0xe536, %r9
nop
nop
nop
nop
nop
mfence
movb $0x61, (%r9)
nop
sub $46676, %r12
lea addresses_A_ht+0xb91e, %rdi
nop
nop
nop
nop
and $11281, %r8
movb (%rdi), %r9b
nop
sub $63068, %rbp
lea addresses_UC_ht+0x86fe, %rsi
lea addresses_D_ht+0x307e, %rdi
nop
nop
sub $14700, %r8
mov $94, %rcx
rep movsl
nop
nop
nop
nop
and %r9, %r9
lea addresses_normal_ht+0x1eb59, %rdi
nop
add %rcx, %rcx
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WT+0x9f9e, %r12
nop
sub %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, (%r12)
nop
add $1822, %r8

// Store
lea addresses_WC+0x9b41, %rdi
clflush (%rdi)
nop
nop
cmp $34837, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
xor %r8, %r8

// Faulty Load
mov $0x7198890000000efe, %rdx
nop
nop
cmp $8285, %rcx
vmovups (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'8d': 1, '12': 17722, 'df': 1, 'a7': 1, '2d': 1, '9b': 1, '7d': 1, '02': 1, 'f5': 1, 'cb': 1, '3b': 1, 'a9': 1, 'b7': 2, 'b5': 1, 'a3': 1, '07': 1, '41': 3576, '59': 1, '69': 1, '79': 1, '00': 511, 'c9': 1}
00 02 41 12 12 41 12 12 12 41 12 12 12 00 41 12 12 41 41 12 12 41 12 12 12 41 12 12 12 41 12 12 12 12 00 12 12 12 12 12 12 12 12 12 41 12 12 12 12 12 12 12 12 00 41 12 41 12 12 41 12 12 12 41 12 12 12 12 12 12 41 12 12 41 12 12 12 12 12 12 12 41 12 12 12 12 12 12 12 12 12 12 12 00 41 12 12 12 12 12 12 12 41 12 12 12 41 12 12 12 12 12 12 41 12 12 12 41 12 12 12 12 12 41 12 12 12 12 12 41 41 12 12 41 12 00 12 41 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 41 00 12 12 41 12 12 12 12 12 12 12 12 12 12 12 12 41 12 12 12 41 12 12 12 12 12 41 12 12 12 12 12 41 12 12 41 12 41 12 41 12 12 12 41 12 12 12 12 12 41 12 12 12 12 12 00 41 12 12 12 12 12 12 12 41 12 12 41 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 41 12 12 12 12 12 12 41 12 12 12 12 12 12 00 12 12 12 12 12 12 12 12 12 12 12 12 12 41 12 12 12 41 12 12 41 12 12 41 41 12 12 12 41 12 12 12 41 12 12 12 12 41 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 41 12 12 12 12 12 12 12 12 12 12 12 12 12 41 12 12 12 41 12 12 12 41 12 41 12 12 41 12 12 41 41 41 12 12 41 12 12 12 41 12 12 12 12 12 12 12 12 12 41 12 12 41 12 12 12 12 12 12 12 41 12 12 12 12 12 12 41 12 12 12 41 12 12 12 41 00 41 12 12 12 41 12 12 12 12 12 41 12 12 12 41 12 12 12 12 12 12 12 12 12 12 12 41 12 12 12 41 12 12 12 41 12 12 12 00 41 12 41 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 41 12 12 41 12 12 41 41 41 12 12 12 12 12 41 12 41 00 41 41 12 12 12 00 41 12 12 12 12 12 12 12 12 12 12 41 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 00 41 41 00 41 12 12 12 12 12 12 12 12 12 12 12 12 12 41 41 12 12 41 12 12 12 12 12 41 12 12 12 12 12 41 12 12 12 12 12 41 41 41 12 12 41 12 41 41 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 a3 12 12 41 12 12 12 41 12 12 12 12 12 12 41 12 12 12 12 12 41 12 00 41 12 12 12 12 12 12 41 12 12 12 12 12 12 12 12 12 41 12 12 12 12 12 41 12 12 12 12 12 41 12 12 12 41 12 12 12 41 12 12 41 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 41 12 00 41 41 12 12 41 12 12 12 41 12 41 00 12 12 12 41 41 12 12 41 12 12 12 12 41 12 12 12 41 12 12 12 12 12 12 41 12 12 12 12 12 12 12 41 12 12 12 41 12 12 41 12 12 12 12 41 41 12 12 12 12 12 12 12 41 12 12 12 12 00 41 12 12 12 41 12 12 12 41 12 12 12 12 12 12 12 12 12 12 12 12 12 41 41 12 12 12 12 12 12 12 12 00 41 12 41 00 41 12 12 12 41 12 12 12 41 df 12 12 12 12 12 41 12 12 12 12 12 12 12 41 12 12 12 12 12 12 12 12 12 12 41 12 12 12 12 12 12 12 12 12 41 41 12 12 41 12 12 12 41 12 12 12 41 12 41 41 41 00 12 12 12 12 41 12 12 12 12 12 41 41 12 12 12 12 12 41 12 12 12 41 41 12 12 12 12 12 12 12 12 41 12 41 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 41 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 41 12 12 41 12 12 12 12 41 12 12 12 41 12 12 12 41 12 12 12 12 12 00 41 12 41 12 12 12 12 12 41 12 12 12 12 12 00 12 12 12 12 12 12 12 12 41 12 12
*/
