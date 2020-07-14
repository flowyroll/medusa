.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x19585, %rbx
nop
nop
and %rdi, %rdi
mov (%rbx), %rsi
nop
sub $29092, %r12
lea addresses_WT_ht+0xc919, %rax
nop
nop
nop
nop
lfence
movb $0x61, (%rax)
nop
xor $43661, %rsi
lea addresses_D_ht+0x1e439, %rsi
lea addresses_A_ht+0x9139, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $33, %rcx
rep movsq
nop
sub $22145, %rsi
lea addresses_WC_ht+0x19539, %rsi
lea addresses_A_ht+0xe539, %rdi
nop
nop
add $16760, %r10
mov $18, %rcx
rep movsq
nop
nop
nop
and $35142, %r12
lea addresses_WC_ht+0x1f39, %rsi
lea addresses_UC_ht+0xef99, %rdi
clflush (%rdi)
nop
nop
nop
xor %r12, %r12
mov $54, %rcx
rep movsw
nop
inc %rbx
lea addresses_WC_ht+0x2b39, %r10
nop
nop
nop
nop
dec %rax
movl $0x61626364, (%r10)
nop
nop
lfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_D+0x15232, %r10
nop
nop
xor %r8, %r8
movups (%r10), %xmm1
vpextrq $1, %xmm1, %r12
nop
nop
nop
xor %r9, %r9

// REPMOV
lea addresses_PSE+0x2f51, %rsi
lea addresses_UC+0xd39, %rdi
add %rbx, %rbx
mov $77, %rcx
rep movsw
nop
and %r8, %r8

// REPMOV
lea addresses_PSE+0xc037, %rsi
lea addresses_WT+0xb309, %rdi
nop
nop
nop
nop
inc %r9
mov $62, %rcx
rep movsb
nop
nop
sub %r12, %r12

// Store
lea addresses_UC+0x57b9, %r8
nop
nop
nop
add $53870, %rbx
movb $0x51, (%r8)
nop
xor %r10, %r10

// Store
lea addresses_D+0x1cd39, %r9
nop
and %r10, %r10
movl $0x51525354, (%r9)
nop
nop
nop
inc %r8

// Store
lea addresses_WC+0x1ac39, %rbx
nop
nop
nop
and $21584, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
movups %xmm5, (%rbx)
nop
nop
nop
add $34810, %r9

// Store
lea addresses_PSE+0x1c139, %r9
nop
nop
nop
inc %r8
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r9)
nop
nop
nop
add %rdi, %rdi

// REPMOV
lea addresses_UC+0x16e19, %rsi
lea addresses_WC+0x1c419, %rdi
cmp %r12, %r12
mov $21, %rcx
rep movsl
nop
nop
sub $21146, %rbx

// Faulty Load
lea addresses_UC+0xd39, %rbx
xor %rcx, %rcx
movb (%rbx), %r10b
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_PSE'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_UC'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC'}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
