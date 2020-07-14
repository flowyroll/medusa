.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xaa63, %rdi
nop
xor $50260, %r14
movb (%rdi), %r12b
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_normal_ht+0x19263, %rsi
nop
nop
nop
nop
and %r12, %r12
movb $0x61, (%rsi)
nop
nop
nop
sub $62909, %r10
lea addresses_UC_ht+0x263, %r9
nop
nop
nop
sub $29956, %rdi
movl $0x61626364, (%r9)
nop
nop
nop
cmp $15852, %r9
lea addresses_A_ht+0x1e463, %r9
and $34005, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
nop
add %r9, %r9
lea addresses_D_ht+0x16eb3, %rsi
add $34971, %rdx
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
xor $64213, %rsi
lea addresses_D_ht+0xf323, %rsi
lea addresses_UC_ht+0x167e3, %rdi
nop
cmp %r10, %r10
mov $75, %rcx
rep movsq
nop
nop
nop
nop
add %r10, %r10
lea addresses_D_ht+0x691e, %rsi
lea addresses_normal_ht+0x15e23, %rdi
nop
nop
nop
nop
xor %r10, %r10
mov $49, %rcx
rep movsl
sub $30188, %rcx
lea addresses_UC_ht+0x18c1f, %rsi
cmp %r10, %r10
mov $0x6162636465666768, %r14
movq %r14, (%rsi)
nop
nop
nop
nop
xor $9528, %r9
lea addresses_UC_ht+0x1cdc3, %r10
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r10)
nop
nop
nop
dec %r9
lea addresses_D_ht+0xbb63, %rcx
nop
add $33732, %rsi
movb $0x61, (%rcx)
nop
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x91b3, %rcx
inc %rdx
mov $0x6162636465666768, %r10
movq %r10, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
nop
nop
sub $62641, %rdx
lea addresses_normal_ht+0xe1a3, %rdx
nop
nop
nop
and %r9, %r9
mov $0x6162636465666768, %r10
movq %r10, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
lfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rdx

// Store
lea addresses_UC+0x92e3, %r9
nop
nop
nop
cmp $29626, %rbp
movw $0x5152, (%r9)
xor %r12, %r12

// Store
lea addresses_US+0x14263, %rdx
clflush (%rdx)
nop
xor $14581, %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm6
movups %xmm6, (%rdx)
add $41005, %r9

// Store
lea addresses_D+0x8b55, %rdx
nop
nop
nop
dec %r13
mov $0x5152535455565758, %r15
movq %r15, (%rdx)
nop
xor $45132, %r12

// Store
mov $0xea3, %r14
xor %r13, %r13
mov $0x5152535455565758, %r9
movq %r9, %xmm3
vmovups %ymm3, (%r14)
nop
cmp %rdx, %rdx

// Store
lea addresses_A+0x12bdb, %r13
nop
nop
nop
xor $1709, %rdx
movl $0x51525354, (%r13)
nop
nop
and %r9, %r9

// Store
lea addresses_WC+0x14c63, %r15
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %r14
movq %r14, (%r15)
cmp %r14, %r14

// Faulty Load
lea addresses_US+0x14263, %rbp
nop
nop
xor $58410, %r12
vmovups (%rbp), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r9
lea oracles, %r15
and $0xff, %r9
shlq $12, %r9
mov (%r15,%r9,1), %r9
pop %rdx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'00': 368}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
