.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1c1f5, %r9
nop
nop
xor %r12, %r12
movw $0x6162, (%r9)
nop
and %r14, %r14
lea addresses_WC_ht+0x1b77d, %rsi
dec %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm3
vmovups %ymm3, (%rsi)
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0x11b5d, %rsi
lea addresses_WC_ht+0x7b7d, %rdi
clflush (%rsi)
nop
inc %r15
mov $40, %rcx
rep movsw
nop
sub $52330, %rbp
lea addresses_UC_ht+0x1307d, %rsi
lea addresses_WT_ht+0x1ee7d, %rdi
and %r12, %r12
mov $45, %rcx
rep movsb
cmp %rcx, %rcx
lea addresses_A_ht+0x8b7d, %r9
and %rcx, %rcx
mov (%r9), %r15d
nop
nop
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0x19d7d, %r9
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, (%r9)
nop
nop
nop
xor $46366, %rbp
lea addresses_WT_ht+0x16755, %rsi
lea addresses_normal_ht+0x17aa9, %rdi
lfence
mov $51, %rcx
rep movsb
nop
nop
nop
nop
nop
and $24881, %rsi
lea addresses_D_ht+0x523b, %rsi
nop
nop
inc %r9
mov $0x6162636465666768, %r12
movq %r12, %xmm4
movups %xmm4, (%rsi)
and $47939, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rax
push %rbx
push %rsi

// Store
mov $0x4a0f29000000037d, %r14
xor $54929, %r9
mov $0x5152535455565758, %r15
movq %r15, (%r14)
nop
dec %r14

// Store
lea addresses_D+0x727d, %r10
clflush (%r10)
nop
nop
nop
nop
add $1658, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%r10)
nop
nop
nop
sub $25180, %r9

// Faulty Load
lea addresses_US+0xb37d, %r14
xor $14384, %rax
mov (%r14), %r9w
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'c6': 1, '58': 77}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 c6 58 58 58 58 58 58 58 58 58 58
*/
