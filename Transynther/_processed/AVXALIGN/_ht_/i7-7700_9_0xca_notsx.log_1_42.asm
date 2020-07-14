.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xaac6, %rdx
clflush (%rdx)
nop
nop
dec %r9
movw $0x6162, (%rdx)
nop
nop
nop
nop
inc %r14
lea addresses_WT_ht+0x1e146, %r15
nop
nop
nop
nop
cmp $5945, %r9
mov (%r15), %ebp
nop
nop
nop
dec %r9
lea addresses_normal_ht+0x79c6, %rsi
lea addresses_WT_ht+0x10c96, %rdi
nop
nop
nop
dec %r9
mov $73, %rcx
rep movsb
nop
nop
and $7342, %rcx
lea addresses_normal_ht+0x1d2a6, %rdi
nop
cmp $43437, %r9
vmovups (%rdi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r15
nop
add %r14, %r14
lea addresses_normal_ht+0x1a9b6, %rsi
lea addresses_A_ht+0x66c6, %rdi
nop
nop
nop
inc %r9
mov $75, %rcx
rep movsq
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x116c6, %rdi
clflush (%rdi)
nop
nop
dec %rcx
mov $0x6162636465666768, %rdx
movq %rdx, (%rdi)
nop
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x6c1e, %rdi
nop
nop
nop
nop
nop
cmp %r14, %r14
movb (%rdi), %cl
nop
nop
nop
sub $1246, %rsi
lea addresses_WT_ht+0x165cb, %rdi
nop
nop
nop
nop
nop
lfence
movl $0x61626364, (%rdi)
nop
nop
nop
sub $39905, %rcx
lea addresses_WT_ht+0xa386, %rsi
lea addresses_WC_ht+0x134c6, %rdi
nop
nop
nop
nop
nop
cmp $35444, %r9
mov $50, %rcx
rep movsb
nop
nop
nop
sub $9484, %r15
lea addresses_WT_ht+0x12e26, %rsi
lea addresses_A_ht+0x1df06, %rdi
nop
nop
nop
inc %r14
mov $73, %rcx
rep movsb
nop
nop
nop
and $30679, %r14
lea addresses_D_ht+0x1d4c6, %rdi
nop
nop
nop
nop
and $50927, %r15
mov (%rdi), %rsi
nop
dec %rsi
lea addresses_D_ht+0x16f46, %rdi
nop
cmp %r9, %r9
vmovups (%rdi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdx
nop
nop
nop
nop
nop
add %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdx

// Store
mov $0x2a91c00000000902, %rcx
nop
nop
and %rdx, %rdx
movl $0x51525354, (%rcx)
nop
nop
nop
inc %r15

// Store
lea addresses_PSE+0x10546, %r13
nop
nop
nop
nop
nop
cmp $28673, %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovups %ymm6, (%r13)
nop
nop
nop
nop
nop
cmp $61934, %rdx

// Store
lea addresses_RW+0x38b6, %r14
nop
nop
nop
dec %r15
mov $0x5152535455565758, %r13
movq %r13, (%r14)
nop
nop
nop
nop
nop
inc %rdx

// Store
lea addresses_PSE+0x164c6, %r13
nop
nop
add $27147, %r14
mov $0x5152535455565758, %rcx
movq %rcx, (%r13)
cmp %r8, %r8

// Store
lea addresses_US+0xb0b0, %r8
nop
nop
nop
nop
dec %r14
movb $0x51, (%r8)
nop
sub $3342, %rbx

// Store
lea addresses_normal+0x24c6, %rdx
nop
xor $19948, %rbx
movb $0x51, (%rdx)
nop
nop
nop
nop
nop
dec %rbx

// Faulty Load
lea addresses_RW+0x14c6, %rbx
dec %r15
vmovaps (%rbx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r8
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 9, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'44': 1}
44
*/
