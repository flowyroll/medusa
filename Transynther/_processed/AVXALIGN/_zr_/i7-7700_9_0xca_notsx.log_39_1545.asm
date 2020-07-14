.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x17168, %r14
nop
nop
and $56397, %rbp
mov (%r14), %r13d
nop
nop
nop
nop
nop
add $33441, %rsi
lea addresses_A_ht+0x19c18, %rsi
lea addresses_A_ht+0xe0e8, %rdi
nop
add $14891, %r8
mov $52, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x17f9e, %r8
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r8)
sub %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x41a8, %rsi
lea addresses_WT+0x1842c, %rdi
nop
nop
add %r10, %r10
mov $27, %rcx
rep movsw
nop
nop
nop
cmp %r9, %r9

// Faulty Load
lea addresses_D+0xb0e8, %rax
nop
nop
nop
and %r12, %r12
vmovaps (%rax), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r10
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WT'}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'00': 39}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
