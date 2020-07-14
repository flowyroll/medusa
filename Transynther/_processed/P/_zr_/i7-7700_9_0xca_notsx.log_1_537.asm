.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x15767, %r9
nop
nop
nop
add %rax, %rax
movups (%r9), %xmm0
vpextrq $0, %xmm0, %r8
nop
nop
and %r9, %r9
lea addresses_UC_ht+0xd95e, %r12
nop
nop
nop
nop
xor %r14, %r14
movw $0x6162, (%r12)
nop
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0x1d15e, %r8
nop
nop
nop
nop
nop
dec %rdx
movw $0x6162, (%r8)
lfence
lea addresses_D_ht+0xde5e, %rdx
clflush (%rdx)
nop
cmp $53343, %r13
mov $0x6162636465666768, %r9
movq %r9, (%rdx)
nop
cmp $33449, %r12
lea addresses_UC_ht+0xf25e, %r13
nop
inc %r9
vmovups (%r13), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
nop
nop
inc %rdx
lea addresses_WT_ht+0x1a29e, %r13
nop
nop
nop
cmp %r9, %r9
movl $0x61626364, (%r13)
nop
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0x845e, %rsi
lea addresses_normal_ht+0xf95e, %rdi
nop
nop
xor %r8, %r8
mov $39, %rcx
rep movsl
dec %r8
lea addresses_WT_ht+0x995e, %r9
nop
nop
nop
nop
sub $60968, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r9)
nop
nop
nop
cmp $59254, %rdx
lea addresses_A_ht+0x1659e, %r8
nop
nop
nop
nop
nop
cmp $8246, %rcx
mov (%r8), %esi
nop
nop
sub $49509, %rcx
lea addresses_normal_ht+0x1bf0a, %rdi
nop
nop
nop
nop
and %r14, %r14
movups (%rdi), %xmm3
vpextrq $1, %xmm3, %rcx
nop
dec %r12
lea addresses_D_ht+0x6e08, %rdi
nop
nop
add %r9, %r9
movl $0x61626364, (%rdi)
nop
nop
nop
xor $4290, %r8
lea addresses_WC_ht+0x6fde, %r8
nop
nop
nop
xor %rdx, %rdx
movl $0x61626364, (%r8)
and %rdx, %rdx
lea addresses_UC_ht+0xe45e, %r9
sub %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, (%r9)
cmp $17784, %rax
lea addresses_A_ht+0x1a93e, %r13
nop
nop
nop
nop
cmp $45283, %r12
mov $0x6162636465666768, %r14
movq %r14, %xmm4
vmovups %ymm4, (%r13)
nop
nop
nop
nop
dec %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rcx

// Faulty Load
mov $0x95e, %r13
nop
and %r15, %r15
mov (%r13), %cx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'00': 1}
00
*/
