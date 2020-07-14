.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x18db9, %rsi
lea addresses_normal_ht+0xf49d, %rdi
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $104, %rcx
rep movsb
nop
nop
nop
nop
sub $33071, %r12
lea addresses_WC_ht+0x1c6ad, %rax
nop
and $532, %r13
movb $0x61, (%rax)
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x1ebad, %rcx
nop
nop
nop
nop
xor %rdx, %rdx
mov (%rcx), %edi
nop
add %r13, %r13
lea addresses_WT_ht+0x1030d, %r12
nop
nop
nop
nop
nop
add $57264, %rsi
movb (%r12), %dl
nop
nop
nop
add %r13, %r13
lea addresses_WC_ht+0x12c2d, %rsi
lea addresses_A_ht+0x2b65, %rdi
clflush (%rdi)
dec %r12
mov $31, %rcx
rep movsw
sub $32170, %r12
lea addresses_WT_ht+0x196d5, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $11111, %r12
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %rcx
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0x114ad, %rax
nop
nop
cmp $47660, %r12
vmovups (%rax), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x143ad, %rsi
nop
nop
sub $6605, %rdx
movw $0x6162, (%rsi)
nop
nop
nop
nop
and $12504, %rdx
lea addresses_A_ht+0x1dfad, %rax
nop
nop
nop
nop
nop
cmp $6059, %rdi
mov (%rax), %r12
nop
nop
nop
nop
nop
dec %rdx
lea addresses_A_ht+0x62fd, %rsi
lea addresses_normal_ht+0xf7b3, %rdi
nop
nop
nop
nop
nop
cmp $28306, %rax
mov $33, %rcx
rep movsw
nop
sub %rsi, %rsi
lea addresses_WT_ht+0xd5ad, %rsi
nop
nop
cmp $57813, %rax
mov (%rsi), %rdi
and %r13, %r13
lea addresses_UC_ht+0x99ad, %rcx
nop
nop
nop
nop
nop
sub $14415, %r12
movw $0x6162, (%rcx)
nop
xor $44959, %r12
lea addresses_UC_ht+0x177ad, %r13
nop
cmp %rdx, %rdx
and $0xffffffffffffffc0, %r13
movaps (%r13), %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
nop
and %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rbx
push %rcx

// Load
lea addresses_normal+0xb52d, %rcx
nop
nop
nop
nop
xor $50379, %r14
movb (%rcx), %r12b
nop
nop
nop
nop
nop
add %rax, %rax

// Store
lea addresses_A+0xe5ad, %r13
cmp %rbx, %rbx
mov $0x5152535455565758, %rax
movq %rax, (%r13)
and $12289, %rbx

// Store
lea addresses_WT+0xd3ad, %r13
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, (%r13)
nop
nop
nop
dec %r12

// Store
lea addresses_D+0x1942d, %rbp
nop
nop
sub $25287, %rbx
movl $0x51525354, (%rbp)
nop
nop
sub %r13, %r13

// Store
lea addresses_RW+0x865, %rbx
nop
nop
mfence
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rbx)
nop
and %rbp, %rbp

// Load
lea addresses_PSE+0x5e3, %rbx
cmp %r13, %r13
vmovaps (%rbx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r12
nop
dec %r14

// Faulty Load
lea addresses_A+0x133ad, %rbx
nop
nop
nop
nop
add $26903, %r12
vmovups (%rbx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rax
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 4, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'44': 38, '45': 6, '47': 3, '48': 20, '00': 51}
45 48 44 44 00 48 45 44 44 00 00 44 45 48 44 44 47 00 48 48 00 48 44 00 45 00 44 00 45 48 47 44 48 44 44 00 44 44 00 00 00 48 00 00 00 00 48 00 48 48 00 00 44 00 44 00 00 44 44 48 48 48 00 44 44 00 00 48 00 44 44 44 00 48 00 00 44 00 00 00 44 00 44 00 44 44 44 00 00 00 00 48 00 44 00 48 44 00 00 00 00 44 44 00 45 44 44 00 48 00 44 44 00 00 00 00 44 47
*/
