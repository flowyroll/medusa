.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xc097, %rcx
nop
nop
nop
and %r9, %r9
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
nop
dec %r10
lea addresses_WT_ht+0x258f, %rsi
lea addresses_WT_ht+0x5cd7, %rdi
nop
nop
nop
nop
nop
inc %r14
mov $21, %rcx
rep movsb
nop
nop
nop
sub %r14, %r14
lea addresses_A_ht+0x68d7, %rsi
nop
add %r14, %r14
movb (%rsi), %r10b
nop
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rdi

// Store
lea addresses_WT+0x174d7, %rax
nop
nop
lfence
movl $0x51525354, (%rax)
xor %r13, %r13

// Store
lea addresses_A+0x170f7, %r13
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %rbp
movq %rbp, (%r13)
nop
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_normal+0xd303, %r9
nop
nop
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm4
vmovups %ymm4, (%r9)
nop
nop
nop
nop
add %rdi, %rdi

// Load
lea addresses_D+0x1387f, %rdi
nop
nop
nop
and $39312, %rax
movb (%rdi), %r15b
nop
nop
sub %r14, %r14

// Load
lea addresses_D+0x192b7, %r15
nop
nop
nop
nop
and %r13, %r13
mov (%r15), %ax
nop
xor $58215, %rbp

// Store
lea addresses_RW+0xd5d7, %rax
nop
nop
nop
xor $14073, %r15
mov $0x5152535455565758, %rbp
movq %rbp, (%rax)
nop
nop
nop
nop
dec %r13

// Store
lea addresses_normal+0x3c67, %rdi
cmp $50918, %rbp
movw $0x5152, (%rdi)
add $51460, %r13

// Faulty Load
lea addresses_WT+0x174d7, %rbp
xor $18354, %rdi
mov (%rbp), %r13
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'54': 5}
54 54 54 54 54
*/
