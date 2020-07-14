.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x6bce, %rdi
and $21427, %r13
movb (%rdi), %r12b
nop
nop
nop
nop
add $33781, %r15
lea addresses_normal_ht+0xfda3, %r9
nop
nop
sub $44144, %r12
mov $0x6162636465666768, %r8
movq %r8, %xmm3
vmovups %ymm3, (%r9)
nop
nop
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0x12267, %rsi
lea addresses_D_ht+0x1dc67, %rdi
nop
nop
nop
nop
xor %r9, %r9
mov $100, %rcx
rep movsb
add %r8, %r8
lea addresses_D_ht+0xe8d9, %r13
nop
nop
nop
nop
nop
cmp $18866, %r9
movw $0x6162, (%r13)
nop
nop
nop
nop
lfence
lea addresses_WT_ht+0x1175e, %rdi
nop
sub $43798, %r15
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rax
push %rbx

// Faulty Load
lea addresses_A+0xe267, %r9
nop
cmp %rbx, %rbx
vmovups (%r9), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'44': 9466, '08': 4723, '04': 10, '72': 7630}
04 44 44 04 04 04 04 04 04 04 04 04 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 72 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 72 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 72 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 72 44 44 44 44 44 44 44 44 44 44 44 72 44 44 44 44 44 44 44 44 72 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 72 44 44 44 44 44 72 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 72 44 44 44 44 72 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 72 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 72 44 44 44 44 44 44 44 44 44 44 44 72 44 44 44 44 44 44 44 44 44 44 72 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 72 44 44 44 44 44 44 44 44 44 44 44 44 44 44 72 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 08 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 72 72 44 44 44 44 44 44 44 44 44 44 44 44 44 72 44 44 44 44 44 44 44 44 44 44 44 44 72 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 72 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 72 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 72 44 44 44 44 44 44 44 44 44 44 44 72 44 44 44 44 44 44 44 44 44 44 44 72 44 44 44 44 44 44 44 44 72 72 72 44 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 44 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 44 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 44 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 44 72 72 72 72 72 72 72 44 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 44 72 72 72 72 72 72 72
*/
