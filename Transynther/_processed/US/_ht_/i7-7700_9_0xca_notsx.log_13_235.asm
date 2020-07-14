.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x19c28, %rax
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%rax)
nop
nop
sub $46461, %rax
lea addresses_UC_ht+0x1a528, %rdx
and $40903, %r10
mov (%rdx), %r8
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x1b808, %rdi
nop
nop
nop
nop
nop
dec %rdx
mov $0x6162636465666768, %r8
movq %r8, %xmm0
vmovups %ymm0, (%rdi)
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x1d098, %r8
nop
nop
nop
cmp $36074, %r9
vmovups (%r8), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x668c, %rsi
lea addresses_A_ht+0x2aa8, %rdi
clflush (%rsi)
nop
nop
nop
xor $40491, %r9
mov $52, %rcx
rep movsb
nop
add $31304, %rsi
lea addresses_D_ht+0x870a, %rsi
lea addresses_D_ht+0xaf66, %rdi
nop
nop
nop
inc %rax
mov $13, %rcx
rep movsq
xor $54075, %r10
lea addresses_UC_ht+0x11228, %rcx
nop
nop
nop
nop
sub %r9, %r9
mov $0x6162636465666768, %r10
movq %r10, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x1b5f0, %rsi
lea addresses_UC_ht+0xf168, %rdi
xor $59974, %rax
mov $110, %rcx
rep movsb
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x1e518, %rdi
nop
nop
nop
nop
xor %rcx, %rcx
movw $0x6162, (%rdi)
nop
inc %rsi
lea addresses_UC_ht+0x3ae4, %rcx
cmp %r8, %r8
mov $0x6162636465666768, %rax
movq %rax, %xmm7
movups %xmm7, (%rcx)
nop
nop
and $22173, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rbp
push %rcx

// Faulty Load
lea addresses_US+0x12d28, %r8
dec %rcx
vmovups (%r8), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': True, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'45': 13}
45 45 45 45 45 45 45 45 45 45 45 45 45
*/
