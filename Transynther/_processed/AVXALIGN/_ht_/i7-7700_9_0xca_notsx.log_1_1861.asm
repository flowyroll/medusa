.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xb2b7, %rdi
nop
nop
nop
xor %r13, %r13
movb $0x61, (%rdi)
nop
xor $42022, %r9
lea addresses_A_ht+0xd493, %r12
nop
nop
nop
nop
and %r15, %r15
movb $0x61, (%r12)
nop
nop
nop
sub $4815, %r13
lea addresses_normal_ht+0x1b9b7, %r14
clflush (%r14)
nop
add %r8, %r8
mov $0x6162636465666768, %r13
movq %r13, (%r14)
nop
nop
nop
xor $36944, %r15
lea addresses_WC_ht+0x14877, %rsi
lea addresses_A_ht+0x82b7, %rdi
nop
nop
nop
xor $49200, %r8
mov $23, %rcx
rep movsb
nop
nop
xor $18330, %r9
lea addresses_UC_ht+0x1ebb7, %r12
nop
nop
nop
nop
nop
cmp $21873, %r14
movups (%r12), %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_UC_ht+0x10a37, %rsi
lea addresses_WT_ht+0x1dcb7, %rdi
cmp $47017, %r15
mov $65, %rcx
rep movsw
xor %r9, %r9
lea addresses_WT_ht+0x15523, %r8
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm2
vmovups %ymm2, (%r8)
nop
nop
nop
add %r8, %r8
lea addresses_D_ht+0x1dab7, %r15
inc %r8
movb (%r15), %r9b
xor %r13, %r13
lea addresses_normal_ht+0x13ab7, %r14
nop
nop
nop
nop
nop
cmp $47269, %rcx
movb (%r14), %r12b
nop
nop
nop
nop
cmp $39500, %r12
lea addresses_D_ht+0xc5a7, %r9
nop
cmp $43366, %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
and $0xffffffffffffffc0, %r9
vmovaps %ymm1, (%r9)
nop
nop
nop
cmp %r8, %r8
lea addresses_WT_ht+0xc2b7, %r13
nop
and $15144, %r15
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x8477, %rsi
nop
nop
nop
nop
nop
dec %rdi
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
add %rcx, %rcx

// REPMOV
lea addresses_UC+0xecb7, %rsi
lea addresses_PSE+0x14d91, %rdi
nop
nop
nop
and %r8, %r8
mov $96, %rcx
rep movsl
nop
nop
nop
nop
lfence

// Faulty Load
lea addresses_UC+0x42b7, %rsi
nop
nop
nop
add $17177, %rbx
movaps (%rsi), %xmm2
vpextrq $1, %xmm2, %r10
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'48': 1}
48
*/
