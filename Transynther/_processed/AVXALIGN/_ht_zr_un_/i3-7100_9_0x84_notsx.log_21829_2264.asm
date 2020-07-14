.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xed6, %rsi
lea addresses_WT_ht+0xdd10, %rdi
nop
nop
sub %rbp, %rbp
mov $35, %rcx
rep movsl
cmp %r13, %r13
lea addresses_UC_ht+0x2946, %r15
nop
nop
nop
nop
nop
add %r10, %r10
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
movups %xmm2, (%r15)
nop
xor %r15, %r15
lea addresses_UC_ht+0x182d6, %rsi
lea addresses_normal_ht+0x5ed6, %rdi
nop
nop
nop
nop
nop
and $33089, %r9
mov $35, %rcx
rep movsq
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_A_ht+0x1ba2a, %rbp
nop
nop
nop
nop
nop
add $38891, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm1
vmovups %ymm1, (%rbp)
sub $23048, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %rbx
push %rcx
push %rdx
push %rsi

// Faulty Load
lea addresses_US+0x72d6, %rcx
nop
nop
nop
dec %rsi
vmovntdqa (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdx
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'e6': 1, 'e4': 1, '96': 2827, '44': 18982, '00': 16, 'fa': 1, 'db': 1}
44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 96 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 96 44 44 44 44 44 44 96 44 44 44 44 44 44 44 44 44 96 44 44 44 96 44 44 44 44 44 44 96 44 44 44 44 44 44 44 44 00 44 44 44 44 96 44 44 44 44 96 44 44 44 44 44 44 44 96 96 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 96 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 96 44 44 44 96 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 96 44 44 44 96 44 44 44 44 44 44 96 44 44 44 44 44 96 44 44 96 44 44 44 44 44 44 44 44 44 96 44 44 44 44 44 44 96 44 44 44 44 44 44 44 96 44 44 44 96 44 44 44 44 44 44 96 44 44 44 44 44 44 44 44 96 44 44 44 44 44 96 44 44 44 44 44 96 44 44 44 44 44 44 96 44 96 44 44 96 44 44 44 44 44 96 44 44 44 44 44 44 44 44 44 44 44 44 96 44 44 96 44 44 44 96 44 44 44 44 44 44 44 44 96 44 44 44 44 96 44 44 44 44 44 44 44 44 96 44 96 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 96 44 44 44 44 44 44 44 96 44 96 44 44 96 44 44 44 44 44 96 44 44 44 96 44 44 96 44 44 44 44 44 44 44 44 44 96 44 44 44 44 44 44 44 44 96 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 96 44 44 44 44 96 44 44 44 96 44 44 44 44 96 44 44 96 44 44 44 44 44 96 44 44 44 44 44 44 44 44 44 96 44 44 44 44 44 44 44 44 44 44 96 44 96 44 44 44 44 96 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 96 44 96 44 96 44 44 44 44 96 44 44 44 44 44 44 44 96 44 44 44 44 44 44 44 96 44 44 44 96 44 44 44 44 44 44 44 96 44 96 44 44 44 44 44 44 44 44 96 44 44 44 44 44 44 44 44 44 44 44 44 96 44 44 44 44 44 44 44 44 44 44 44 44 44 96 44 96 44 44 44 44 44 44 44 44 44 44 44 44 44 44 96 44 44 44 44 44 44 96 44 44 44 44 96 44 44 44 44 44 96 44 44 44 44 44 44 96 44 44 44 44 96 44 44 44 96 44 96 44 44 44 44 44 96 44 44 44 44 44 44 44 44 44 96 44 44 96 44 44 44 44 44 96 96 44 44 44 44 44 44 44 44 44 96 44 96 44 44 44 44 44 44 44 44 44 44 44 44 44 96 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 96 44 44 44 44 96 44 44 44 44 44 96 44 96 44 44 96 44 44 44 44 44 44 44 44 44 44 44 44 44 96 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 96 44 44 96 44 44 96 44 44 44 44 44 44 44 44 44 44 44 44 44 96 44 44 44 44 44 44 44 44 44 44 44 96 44 44 44 44 44 44 44 44 44 96 44 44 96 44 44 44 44 44 44 44 44 44 44 44 96 44 44 44 96 44 44 44 44 96 44 44 44 44 44 44 96 44 44 44 44 96 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 96 44 96 44 44 44 96 44 96 44 44 44 44 96 44 44 96 44 96 44 44 44 44 44 44 44 44 44 44 96 44 44 44 44 44 44 44 44 44 44 44 44 96 44 44 96 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 96 44 44 44 96 44 44 44 44 44 44 96 44 44 44 44 96 44 44 44 96 44 44 44 96 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 96 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 96 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 96 96 44 44 96 44 44 44 44 44 44 44
*/
