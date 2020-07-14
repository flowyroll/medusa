.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x686a, %rsi
lea addresses_D_ht+0xe6aa, %rdi
nop
nop
nop
nop
xor $20841, %rdx
mov $119, %rcx
rep movsb
nop
nop
nop
nop
xor %r12, %r12
lea addresses_WC_ht+0x11f46, %rbx
nop
nop
cmp %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_normal_ht+0x12bea, %rsi
lea addresses_UC_ht+0x749a, %rdi
nop
nop
nop
nop
nop
inc %r10
mov $47, %rcx
rep movsl
nop
sub %r10, %r10
lea addresses_A_ht+0x1194e, %rsi
lea addresses_D_ht+0x116a, %rdi
nop
nop
add %r15, %r15
mov $66, %rcx
rep movsb
nop
nop
and %r12, %r12
lea addresses_WC_ht+0xf25c, %r10
add $64717, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r10)
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x48ea, %rsi
lea addresses_A_ht+0x8ff, %rdi
nop
nop
cmp %r12, %r12
mov $9, %rcx
rep movsq
cmp %r15, %r15
lea addresses_UC_ht+0xc74a, %rcx
nop
nop
nop
nop
lfence
mov (%rcx), %r10d
nop
nop
xor $40921, %rdx
lea addresses_WT_ht+0xa3ea, %rdx
nop
nop
nop
nop
inc %r15
vmovups (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
nop
nop
xor %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rax
push %rbp
push %rsi

// Faulty Load
lea addresses_US+0x13cea, %rbp
add %rsi, %rsi
movb (%rbp), %al
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rsi
pop %rbp
pop %rax
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 35}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
