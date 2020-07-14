.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1ee06, %rax
nop
sub $36085, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
nop
and $8543, %rax
lea addresses_normal_ht+0xcf42, %r14
nop
cmp %r15, %r15
vmovups (%r14), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r10
and %r10, %r10
lea addresses_normal_ht+0xd926, %r13
add $21840, %rcx
movb (%r13), %r15b
xor $37628, %rcx
lea addresses_WT_ht+0x1eea6, %r13
dec %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm4
and $0xffffffffffffffc0, %r13
vmovntdq %ymm4, (%r13)
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x6ba6, %r15
sub %r10, %r10
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
and $46872, %r10
lea addresses_normal_ht+0xb6a6, %r15
sub $24349, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm2
and $0xffffffffffffffc0, %r15
movntdq %xmm2, (%r15)
nop
add %r10, %r10
lea addresses_A_ht+0x14466, %rsi
lea addresses_UC_ht+0x17486, %rdi
nop
nop
nop
nop
cmp $42936, %r14
mov $54, %rcx
rep movsw
dec %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rbp
push %rcx

// Faulty Load
mov $0x57cb6200000006a6, %r13
nop
nop
nop
add %r12, %r12
movups (%r13), %xmm3
vpextrq $1, %xmm3, %rcx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM'}
{'45': 16496, '21': 1, '44': 5332}
45 45 45 45 44 45 44 44 44 45 45 44 45 45 45 44 45 45 44 45 44 45 44 45 45 45 45 45 44 44 45 45 45 44 45 45 45 45 45 44 44 44 44 45 45 45 44 44 45 45 45 45 45 44 44 44 45 45 44 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 44 44 45 45 45 45 45 45 44 45 45 44 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 44 44 44 45 45 44 45 45 45 45 45 45 44 45 44 44 44 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 44 45 45 45 44 45 45 45 45 44 44 44 45 45 44 45 45 45 44 45 45 45 45 45 45 45 44 45 45 45 45 44 45 45 45 44 44 45 45 45 45 45 45 45 44 44 44 44 45 45 45 45 45 45 45 45 44 45 44 45 45 44 45 45 45 45 45 45 45 45 45 45 44 44 45 44 44 45 45 45 45 45 45 45 44 45 45 45 45 45 45 44 45 45 45 44 45 45 44 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 44 44 45 44 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 44 45 45 45 45 45 45 45 44 44 44 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 44 45 44 45 45 45 45 44 44 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 44 45 45 44 45 45 45 44 45 45 45 44 44 45 45 45 44 45 45 45 44 45 45 45 45 45 45 44 45 45 45 45 44 45 45 45 44 44 45 44 44 44 45 45 44 45 45 45 45 44 45 45 44 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 44 45 45 44 45 45 45 44 45 45 45 45 44 44 45 45 45 45 44 45 45 44 45 44 44 45 44 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 44 45 45 45 44 44 44 44 45 44 44 45 44 45 45 44 45 44 44 45 45 44 44 45 45 45 45 45 44 44 45 45 45 44 45 45 44 45 45 45 45 45 45 45 44 44 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 44 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 45 45 45 44 44 45 45 44 44 44 45 45 45 45 45 45 45 45 45 45 45 45 44 44 45 45 45 44 44 44 45 45 44 44 44 45 44 45 45 45 44 44 45 44 45 44 44 45 45 45 45 44 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 44 44 45 44 44 44 45 45 44 45 44 45 44 44 44 45 45 45 45 45 44 45 45 44 45 45 44 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 44 45 45 44 44 44 45 45 45 45 45 44 44 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 44 44 44 45 45 45 45 44 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 44 45 45 44 44 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 44 45 45 45 44 45 45 44 44 45 45 45 45 45 45 45 45 45 44 45 45 45 45 44 44 45 44 44 45 45 45 45 45 45 45 44 45 44 45 45 44 45 45 45 44 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 44 45 45 44 44 45 45 44 45 44 44 45 45 45 45 45 45
*/
