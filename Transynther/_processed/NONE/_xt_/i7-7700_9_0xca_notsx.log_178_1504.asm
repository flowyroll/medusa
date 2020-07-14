.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x3541, %r14
clflush (%r14)
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %r8
movq %r8, (%r14)
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x1c131, %rsi
lea addresses_normal_ht+0x15049, %rdi
nop
cmp $21799, %rbp
mov $65, %rcx
rep movsl
nop
nop
and $11500, %rdi
lea addresses_WT_ht+0x183c1, %rdi
dec %r14
vmovups (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r15
nop
nop
nop
nop
nop
and $40139, %r14
lea addresses_UC_ht+0x1ad01, %r15
clflush (%r15)
nop
nop
nop
nop
cmp %rbp, %rbp
movw $0x6162, (%r15)
nop
nop
nop
nop
and %r15, %r15
lea addresses_WC_ht+0xa0c6, %rbp
sub %r8, %r8
mov (%rbp), %ecx
nop
nop
nop
nop
nop
xor $34537, %r15
lea addresses_D_ht+0x1b841, %r8
nop
nop
xor %rsi, %rsi
mov (%r8), %di
cmp $20659, %r8
lea addresses_D_ht+0xbe29, %rsi
clflush (%rsi)
nop
nop
nop
cmp $3202, %r14
mov (%rsi), %r15d
xor $7198, %rsi
lea addresses_A_ht+0x10f41, %rdi
nop
xor $46937, %rcx
mov (%rdi), %rbp
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x1c441, %rsi
nop
sub %rbp, %rbp
mov (%rsi), %ecx
nop
nop
nop
nop
sub %r14, %r14
lea addresses_normal_ht+0x3341, %rdi
nop
cmp $15961, %rcx
movups (%rdi), %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
nop
cmp $10821, %rcx
lea addresses_A_ht+0xc9bf, %rdi
nop
nop
and %rbp, %rbp
vmovups (%rdi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
and %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %rbp
push %rdx
push %rsi

// Load
mov $0x21984000000008d1, %rdx
nop
nop
xor %rbp, %rbp
vmovups (%rdx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
nop
xor $60697, %r8

// Store
lea addresses_WT+0x1db39, %rbp
nop
nop
nop
nop
and $12047, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movups %xmm3, (%rbp)
and %r8, %r8

// Faulty Load
lea addresses_WT+0xf741, %r12
inc %rsi
mov (%r12), %r13d
lea oracles, %r12
and $0xff, %r13
shlq $12, %r13
mov (%r12,%r13,1), %r13
pop %rsi
pop %rdx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'39': 178}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
