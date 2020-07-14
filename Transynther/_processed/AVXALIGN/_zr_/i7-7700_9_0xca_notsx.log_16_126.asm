.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1c692, %r9
nop
nop
nop
nop
dec %rdx
movl $0x61626364, (%r9)
lfence
lea addresses_normal_ht+0x9e42, %rsi
lea addresses_normal_ht+0xcf22, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r12
mov $93, %rcx
rep movsb
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0xd2, %rdx
nop
nop
nop
nop
nop
xor $22748, %rdi
movw $0x6162, (%rdx)
sub $8678, %rdi
lea addresses_WT_ht+0x15a0a, %r9
nop
nop
dec %r13
movb $0x61, (%r9)
nop
nop
nop
nop
add $37481, %rsi
lea addresses_D_ht+0x132de, %r12
nop
nop
sub $4810, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r12)
nop
nop
nop
xor $2933, %r9
lea addresses_D_ht+0x1e18a, %r13
nop
nop
nop
sub %rdx, %rdx
movups (%r13), %xmm3
vpextrq $1, %xmm3, %r9
nop
nop
nop
dec %r13
lea addresses_D_ht+0x17c52, %r12
nop
nop
nop
nop
nop
xor $64332, %rdx
mov (%r12), %r9w
nop
nop
nop
xor %rdx, %rdx
lea addresses_A_ht+0xa902, %r13
nop
nop
sub %r9, %r9
mov (%r13), %esi
nop
nop
nop
add $52932, %rdx
lea addresses_D_ht+0x166d2, %rsi
nop
nop
nop
nop
and $57845, %rdx
mov $0x6162636465666768, %r13
movq %r13, (%rsi)
nop
nop
and $42783, %rsi
lea addresses_A_ht+0xb1d2, %rsi
lea addresses_D_ht+0x1d292, %rdi
nop
nop
sub $20438, %r15
mov $19, %rcx
rep movsw
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x1de52, %rcx
xor %r12, %r12
movb (%rcx), %r15b
nop
nop
nop
nop
inc %r15
lea addresses_WT_ht+0x82d2, %rcx
add %rsi, %rsi
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
nop
add $47455, %r9
lea addresses_WT_ht+0x86d2, %rsi
nop
nop
nop
nop
and %r15, %r15
mov (%rsi), %r9d
nop
nop
sub $9334, %r15
lea addresses_D_ht+0x4442, %rdi
cmp $62265, %r15
movups (%rdi), %xmm4
vpextrq $1, %xmm4, %r13
nop
nop
nop
nop
nop
and $3610, %rcx
lea addresses_A_ht+0xf9e2, %rdx
nop
nop
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm4
movups %xmm4, (%rdx)
nop
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rax
push %rbp
push %rbx
push %rdi

// Store
lea addresses_normal+0x15ed2, %rbp
and $36329, %r15
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
cmp $34823, %r15

// Store
lea addresses_A+0x175a6, %rdi
nop
nop
nop
nop
nop
inc %rax
mov $0x5152535455565758, %r15
movq %r15, %xmm1
movups %xmm1, (%rdi)
nop
nop
nop
and $55492, %rax

// Faulty Load
lea addresses_US+0x166d2, %r15
nop
nop
add %rbx, %rbx
mov (%r15), %r13
lea oracles, %rbx
and $0xff, %r13
shlq $12, %r13
mov (%rbx,%r13,1), %r13
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'00': 16}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
