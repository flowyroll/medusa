.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x19a23, %r9
dec %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
and $0xffffffffffffffc0, %r9
vmovaps %ymm4, (%r9)
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_A_ht+0x11ec1, %rsi
lea addresses_normal_ht+0x8fc1, %rdi
dec %rax
mov $43, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $18321, %r9
lea addresses_UC_ht+0x28c1, %rdi
nop
sub %rsi, %rsi
mov (%rdi), %eax
nop
add $43487, %rcx
lea addresses_A_ht+0x17941, %rsi
lea addresses_normal_ht+0x90c1, %rdi
cmp %r13, %r13
mov $59, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $42204, %r9
lea addresses_UC_ht+0xd8e9, %rdi
nop
inc %rsi
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %r13
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0xc0d5, %rcx
clflush (%rcx)
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %r8
movq %r8, (%rcx)
nop
nop
cmp $1747, %r8
lea addresses_D_ht+0x461b, %rsi
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov (%rsi), %r9d
nop
inc %r8
lea addresses_A_ht+0x8231, %rsi
lea addresses_WT_ht+0x56c1, %rdi
nop
nop
nop
cmp $31786, %r9
mov $18, %rcx
rep movsb
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x12c39, %rdi
nop
cmp %r14, %r14
movw $0x6162, (%rdi)
nop
dec %rsi
lea addresses_WC_ht+0x196c1, %r8
nop
nop
nop
nop
nop
dec %rdi
mov (%r8), %ax
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x98a1, %rsi
lea addresses_A_ht+0xb6c2, %rdi
nop
nop
nop
nop
sub $44809, %rax
mov $104, %rcx
rep movsw
nop
inc %r8
lea addresses_WC_ht+0x1bce1, %rsi
lea addresses_UC_ht+0x124c1, %rdi
clflush (%rsi)
cmp $48921, %r14
mov $103, %rcx
rep movsl
nop
nop
nop
add $39474, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x63c1, %r14
nop
nop
and %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, (%r14)
nop
nop
nop
nop
nop
and %r12, %r12

// REPMOV
lea addresses_normal+0x2f21, %rsi
lea addresses_UC+0x1d1c1, %rdi
clflush (%rdi)
nop
nop
add $43110, %r10
mov $13, %rcx
rep movsw
cmp %rcx, %rcx

// Load
lea addresses_PSE+0x1d081, %r12
nop
and %r14, %r14
vmovntdqa (%r12), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbx
sub %r14, %r14

// Store
lea addresses_D+0x14037, %r10
nop
nop
cmp $53772, %rcx
mov $0x5152535455565758, %r14
movq %r14, (%r10)
nop
nop
nop
nop
nop
sub %r10, %r10

// Faulty Load
lea addresses_PSE+0x1e2c1, %rbp
cmp $21288, %r12
movups (%rbp), %xmm7
vpextrq $1, %xmm7, %r10
lea oracles, %r14
and $0xff, %r10
shlq $12, %r10
mov (%r14,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'33': 446}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
