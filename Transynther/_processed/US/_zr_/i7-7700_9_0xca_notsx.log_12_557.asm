.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x135f8, %rbp
sub %r10, %r10
mov (%rbp), %bx
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_A_ht+0x153f2, %rsi
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rsi)
nop
sub %rbp, %rbp
lea addresses_normal_ht+0xab8e, %rsi
lea addresses_WT_ht+0x1c578, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %r9
mov $91, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r9
lea addresses_UC_ht+0x177f8, %rsi
nop
inc %rbp
mov (%rsi), %r9w
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x2cf8, %rdx
add %rsi, %rsi
movb (%rdx), %bl
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0xac58, %r9
add %r10, %r10
movb (%r9), %cl
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0x9a58, %rsi
lea addresses_normal_ht+0x15ff0, %rdi
nop
nop
nop
nop
nop
and $40513, %rbp
mov $97, %rcx
rep movsl
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0x1c1f8, %r9
nop
nop
sub %rdi, %rdi
movb $0x61, (%r9)
nop
nop
nop
and $34671, %r9
lea addresses_D_ht+0x14176, %rbp
sub %r10, %r10
vmovups (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
sub %r10, %r10
lea addresses_WC_ht+0x16203, %rdi
nop
nop
sub $16380, %r9
mov (%rdi), %ebp
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_UC_ht+0x25f8, %rbp
cmp $27558, %r9
movb $0x61, (%rbp)
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x6220, %rsi
nop
nop
dec %rbp
mov (%rsi), %rdx
sub %r10, %r10
lea addresses_normal_ht+0x18f8, %r9
nop
nop
nop
nop
cmp $9083, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r9)
nop
nop
nop
nop
cmp $6225, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x13cb8, %rbx
nop
nop
sub %rax, %rax
movl $0x51525354, (%rbx)
nop
nop
nop
nop
add %rax, %rax

// REPMOV
lea addresses_RW+0xda10, %rsi
lea addresses_A+0x367e, %rdi
nop
sub %r10, %r10
mov $112, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_normal+0x166d8, %r10
nop
nop
nop
nop
xor $4463, %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%r10)
nop
nop
nop
nop
inc %rcx

// Faulty Load
lea addresses_US+0x1f5f8, %r10
nop
cmp %r14, %r14
mov (%r10), %edi
lea oracles, %r10
and $0xff, %rdi
shlq $12, %rdi
mov (%r10,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_RW'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
