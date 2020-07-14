.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xa09c, %rsi
lea addresses_UC_ht+0x30bc, %rdi
nop
cmp %r12, %r12
mov $94, %rcx
rep movsq
nop
nop
nop
nop
sub $14955, %rcx
lea addresses_WT_ht+0x11fb9, %r13
nop
nop
nop
nop
nop
sub $7387, %rax
movb (%r13), %r9b
nop
nop
and $6374, %r12
lea addresses_normal_ht+0x1581c, %rax
and $6642, %rsi
movb (%rax), %r12b
nop
nop
nop
nop
lfence
lea addresses_WT_ht+0x1569c, %r13
nop
nop
nop
nop
nop
sub $21439, %r12
movl $0x61626364, (%r13)
nop
and %rsi, %rsi
lea addresses_D_ht+0x1869c, %r9
nop
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r12
movq %r12, (%r9)
nop
dec %rax
lea addresses_UC_ht+0x59e4, %rsi
lea addresses_normal_ht+0x3264, %rdi
cmp $34426, %r12
mov $5, %rcx
rep movsq
nop
nop
dec %rdi
lea addresses_A_ht+0x1769c, %rsi
lea addresses_UC_ht+0x12e5c, %rdi
clflush (%rsi)
nop
xor $236, %r9
mov $95, %rcx
rep movsl
nop
and $22097, %rdi
lea addresses_A_ht+0x18404, %rsi
lea addresses_WC_ht+0xe124, %rdi
nop
nop
nop
nop
add $29982, %r10
mov $37, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x2e4c, %r9
nop
nop
nop
nop
nop
cmp %rax, %rax
mov (%r9), %rsi
nop
dec %rax
lea addresses_WC_ht+0x1449c, %rsi
lea addresses_WC_ht+0xf69c, %rdi
nop
nop
nop
nop
nop
and $10378, %r12
mov $31, %rcx
rep movsq
nop
nop
nop
and $38330, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_UC+0xc8e0, %r15
nop
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %r8
movq %r8, (%r15)
nop
cmp $35267, %rsi

// Store
mov $0xd9c, %rax
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, (%rax)
nop
nop
sub %r15, %r15

// Faulty Load
lea addresses_normal+0x7e9c, %r15
inc %rdx
mov (%r15), %si
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
