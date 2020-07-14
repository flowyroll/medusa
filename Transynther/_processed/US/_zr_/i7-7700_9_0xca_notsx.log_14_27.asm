.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1134, %r8
nop
nop
nop
nop
cmp $51899, %rbx
movw $0x6162, (%r8)
nop
sub %r12, %r12
lea addresses_WT_ht+0x16f14, %rsi
nop
sub %r14, %r14
movl $0x61626364, (%rsi)
nop
nop
nop
nop
xor $12684, %rsi
lea addresses_UC_ht+0x1eb54, %rsi
lea addresses_D_ht+0x1db34, %rdi
clflush (%rdi)
nop
add %rbp, %rbp
mov $123, %rcx
rep movsl
nop
nop
sub %r14, %r14
lea addresses_normal_ht+0x2de4, %rbx
nop
nop
nop
sub $52601, %rdi
movl $0x61626364, (%rbx)
sub %rsi, %rsi
lea addresses_WT_ht+0x129fb, %rdi
nop
nop
nop
and $22719, %r14
mov (%rdi), %bx
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x131b4, %rsi
lea addresses_A_ht+0xa6d3, %rdi
inc %rbx
mov $8, %rcx
rep movsq
nop
and $15599, %r12
lea addresses_D_ht+0x5ef4, %r14
nop
nop
cmp %rsi, %rsi
mov (%r14), %edi
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x1ca54, %r8
nop
nop
sub %rbp, %rbp
mov (%r8), %cx
nop
nop
nop
nop
add $409, %rbp
lea addresses_WT_ht+0x1d9ce, %rbp
nop
nop
nop
nop
xor $6471, %rcx
mov (%rbp), %di
xor %rcx, %rcx
lea addresses_A_ht+0x151b2, %rsi
clflush (%rsi)
sub $28802, %r8
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
and $63196, %rbp
lea addresses_UC_ht+0x15d24, %r12
nop
nop
nop
xor $26310, %r14
mov (%r12), %rbp
xor %rdi, %rdi
lea addresses_WC_ht+0x17f34, %r8
clflush (%r8)
nop
nop
nop
nop
and %rbp, %rbp
movb (%r8), %cl
nop
add $9077, %r14
lea addresses_WT_ht+0x7893, %rsi
lea addresses_normal_ht+0x11634, %rdi
xor %rbx, %rbx
mov $67, %rcx
rep movsl
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x19480, %rcx
nop
nop
nop
nop
nop
and $10704, %r12
mov (%rcx), %di
inc %rdi
lea addresses_UC_ht+0x1a734, %rcx
nop
nop
nop
nop
inc %rbx
vmovups (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
nop
nop
nop
nop
nop
xor %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rcx
push %rsi

// Faulty Load
lea addresses_US+0x6b34, %rcx
nop
add $36714, %rsi
mov (%rcx), %r8
lea oracles, %rsi
and $0xff, %r8
shlq $12, %r8
mov (%rsi,%r8,1), %r8
pop %rsi
pop %rcx
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'00': 14}
00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
