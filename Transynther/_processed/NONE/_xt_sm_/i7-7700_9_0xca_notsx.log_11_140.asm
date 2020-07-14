.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1945a, %rsi
nop
nop
nop
nop
nop
add %r15, %r15
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
nop
nop
xor $28251, %r9
lea addresses_normal_ht+0x1176c, %r10
nop
nop
nop
nop
add $48895, %rbp
mov (%r10), %r13d
nop
dec %r15
lea addresses_D_ht+0x1c18c, %rsi
lea addresses_D_ht+0x87ac, %rdi
nop
and $31707, %r10
mov $76, %rcx
rep movsl
nop
nop
nop
nop
nop
add $46943, %r9
lea addresses_UC_ht+0x1b56c, %rdx
nop
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
xor $4809, %rdi
lea addresses_UC_ht+0x70bc, %rsi
lea addresses_WT_ht+0x18aec, %rdi
nop
nop
add $10528, %rdx
mov $46, %rcx
rep movsl
nop
inc %rsi
lea addresses_normal_ht+0xe56c, %rsi
lea addresses_UC_ht+0x1416c, %rdi
nop
nop
nop
nop
add %r13, %r13
mov $104, %rcx
rep movsw
add $19388, %r10
lea addresses_WT_ht+0x1cd6c, %rsi
lea addresses_A_ht+0x157d1, %rdi
clflush (%rsi)
nop
nop
inc %r15
mov $84, %rcx
rep movsq
cmp %r13, %r13
lea addresses_D_ht+0x13a3c, %r9
clflush (%r9)
nop
nop
sub $11368, %r10
movb (%r9), %cl
nop
nop
add $49199, %r9
lea addresses_WT_ht+0xf514, %rcx
sub %rdi, %rdi
mov (%rcx), %si
nop
cmp $10824, %rdx
lea addresses_A_ht+0x756c, %r10
clflush (%r10)
nop
nop
nop
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
and %r10, %r10
lea addresses_WT_ht+0x536c, %rsi
nop
nop
inc %r10
mov (%rsi), %ecx
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x8d6c, %r9
nop
xor $55690, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%r9)
nop
nop
nop
add $29930, %r9
lea addresses_normal_ht+0x9adc, %r15
nop
nop
nop
nop
nop
dec %r10
movl $0x61626364, (%r15)
nop
nop
xor %r15, %r15
lea addresses_normal_ht+0x79cc, %rbp
nop
sub %r15, %r15
movl $0x61626364, (%rbp)
nop
sub $27338, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %r9
push %rdx
push %rsi

// Store
mov $0x3539d2000000082c, %r8
nop
cmp %rdx, %rdx
movw $0x5152, (%r8)
nop
nop
add $50390, %r14

// Store
lea addresses_normal+0xdd6c, %rsi
nop
nop
nop
nop
add %r14, %r14
mov $0x5152535455565758, %r8
movq %r8, (%rsi)
nop
nop
and $24987, %rdx

// Store
lea addresses_WC+0x7e4c, %r12
nop
nop
xor $51466, %r13
movl $0x51525354, (%r12)
nop
nop
nop
xor %r8, %r8

// Faulty Load
lea addresses_normal+0xdd6c, %r9
nop
nop
add %rsi, %rsi
movb (%r9), %r12b
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rdx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'58': 11}
58 58 58 58 58 58 58 58 58 58 58
*/
