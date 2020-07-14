.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x19ed7, %rsi
lea addresses_D_ht+0x18c53, %rdi
sub %r9, %r9
mov $104, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_WC_ht+0x11a93, %r12
nop
nop
nop
nop
nop
add $17503, %rbp
mov (%r12), %r8w
inc %r12
lea addresses_WC_ht+0x6363, %r12
nop
nop
and %rsi, %rsi
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0xabaf, %rcx
nop
cmp %r9, %r9
mov (%rcx), %r12
nop
nop
nop
nop
add $39857, %rsi
lea addresses_WC_ht+0xf9ab, %r12
dec %rcx
vmovups (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbp
nop
nop
nop
add $8276, %rcx
lea addresses_D_ht+0x14273, %r9
nop
sub %r12, %r12
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
cmp $9656, %rcx
lea addresses_WC_ht+0xfcf3, %rcx
nop
nop
nop
nop
sub $39033, %r9
vmovups (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r8
nop
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0x19273, %rcx
cmp $23002, %r9
mov (%rcx), %di
nop
nop
nop
nop
cmp $46141, %rcx
lea addresses_UC_ht+0x1a4a3, %rbp
xor %r8, %r8
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0xda73, %rbp
nop
nop
nop
dec %r12
movb $0x61, (%rbp)
nop
nop
xor $24639, %rsi
lea addresses_normal_ht+0xfa73, %r12
nop
nop
nop
nop
nop
and %rdi, %rdi
movl $0x61626364, (%r12)
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WT+0x7b4b, %r9
nop
sub %rsi, %rsi
movw $0x5152, (%r9)
nop
xor $9284, %rcx

// Store
mov $0x591c2900000009f3, %rsi
nop
nop
nop
nop
nop
cmp $4821, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, (%rsi)
nop
nop
nop
nop
nop
xor %r10, %r10

// Faulty Load
lea addresses_WT+0x7273, %rsi
nop
nop
nop
nop
dec %r14
mov (%rsi), %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'39': 78}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
