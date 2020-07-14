.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1ae3b, %r13
nop
nop
cmp %r9, %r9
mov $0x6162636465666768, %r12
movq %r12, %xmm3
vmovups %ymm3, (%r13)
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_normal_ht+0xd50b, %rsi
lea addresses_A_ht+0xcffb, %rdi
nop
nop
xor %r12, %r12
mov $93, %rcx
rep movsw
and %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Faulty Load
lea addresses_UC+0x1ddfb, %r13
nop
nop
nop
nop
inc %r8
vmovups (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': True, 'type': 'addresses_A_ht'}}
{'44': 13905, '00': 4286, 'ef': 870, '60': 31, '3c': 2612, '80': 50, 'e0': 75}
44 00 3c 00 3c 3c 3c 00 3c 44 44 ef 44 44 00 44 44 00 3c 44 44 3c 00 44 44 44 ef 3c 44 44 44 00 ef 00 00 44 44 44 44 44 44 00 44 44 00 3c 44 44 44 44 44 44 00 44 44 44 00 44 3c 44 3c 00 44 3c 3c 44 44 44 44 44 44 ef 44 44 44 44 44 3c 44 00 44 ef 44 44 44 00 44 44 44 44 44 00 00 44 3c 00 44 44 44 00 44 ef 44 44 00 44 44 44 44 00 00 44 44 44 44 ef 44 44 00 00 00 00 44 44 44 44 44 3c ef 44 44 44 44 80 00 00 44 44 44 3c 00 3c 44 44 44 44 44 44 44 44 3c 44 00 44 44 44 44 3c 44 44 44 3c 00 44 44 3c 44 00 44 00 00 44 44 3c 44 44 ef 44 00 44 44 3c ef 44 00 ef 44 44 44 00 44 44 44 44 44 00 00 44 44 44 00 44 44 44 44 3c 44 44 ef 3c 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 3c 44 3c 44 3c 44 60 44 44 44 44 00 44 00 44 44 44 44 44 3c 44 00 ef 3c 44 ef 44 44 ef 3c 00 44 3c 3c 44 44 44 44 44 44 3c 00 ef 44 44 44 00 44 ef 3c 00 44 44 44 ef 00 44 44 3c 44 44 44 44 00 00 44 44 00 00 00 ef 44 00 44 44 ef 44 00 44 00 44 00 44 44 44 44 44 44 3c 00 00 00 ef 00 ef 44 44 ef 00 ef 00 00 44 44 44 00 44 44 44 3c 00 60 3c 44 44 44 44 44 44 44 44 44 00 44 44 44 3c 44 44 44 00 44 00 44 44 00 44 44 00 3c 44 3c 3c ef 00 44 00 44 44 44 00 44 00 44 44 44 44 00 44 44 44 44 44 44 44 00 3c 00 3c 44 44 e0 ef 44 3c 44 44 44 44 44 44 44 ef 44 44 e0 44 00 44 44 44 3c 3c ef 44 44 44 3c 80 00 00 44 ef 00 44 44 00 44 ef 44 44 3c 44 3c 44 00 44 44 44 00 44 44 44 44 44 44 44 44 00 3c 44 44 00 00 44 ef 44 00 00 3c 44 3c 44 44 44 44 3c 44 3c 44 44 44 00 44 44 44 44 00 3c 44 44 3c 00 00 44 00 44 44 3c 44 44 3c 44 44 44 3c 00 00 00 3c 3c 44 44 00 3c 00 3c 00 44 00 44 44 44 44 44 44 44 44 3c 00 00 ef 44 44 00 00 44 00 44 44 44 00 00 44 00 44 44 44 44 3c 44 44 44 44 00 3c 44 00 44 44 00 00 44 44 44 44 00 44 44 00 44 00 3c 3c 3c 44 3c 44 44 00 00 44 44 44 44 44 00 44 44 44 44 44 00 44 00 44 ef 44 00 ef 44 3c 00 00 44 44 44 44 00 44 44 44 44 44 3c 44 44 44 3c 44 44 00 00 44 3c 44 44 44 44 44 ef 44 44 44 44 3c 44 44 44 3c 44 3c 44 3c 00 44 44 44 44 00 44 00 44 44 44 44 44 44 00 00 3c 00 00 44 3c 00 44 44 00 44 44 44 44 44 44 00 00 44 44 44 00 44 44 3c 44 00 44 44 00 44 3c 00 00 00 00 44 44 00 44 00 44 44 44 44 44 44 00 00 44 44 44 44 44 ef 44 44 44 44 00 00 44 44 3c 44 00 44 3c 44 00 44 00 3c 00 44 44 44 44 ef 00 44 44 00 44 44 44 3c 44 44 00 44 44 44 00 44 44 00 44 44 44 44 44 44 3c 00 44 3c 00 44 44 44 44 44 3c 44 00 00 00 3c 44 00 44 3c 44 44 00 00 44 44 44 44 ef 3c 00 44 44 44 44 3c 00 44 44 00 44 3c 00 00 44 44 44 00 00 44 44 44 3c 44 44 44 44 44 00 44 ef 3c 3c 44 44 00 44 00 00 00 44 44 44 44 44 44 44 44 44 44 3c 44 ef 44 44 44 44 44 00 44 44 3c 00 ef 44 44 44 44 3c 44 44 44 00 44 44 00 3c 44 44 00 ef 3c 44 44 44 44 44 3c ef 44 44 00 44 44 3c 44 00 44 44 00 3c 00 44 00 44 3c 44 3c 44 00 ef 44 44 44 3c 44 ef 44 00 44 44 3c 44 44 44 3c 00 00 00 44 44 ef 44 00 44 00 80 44 44 00 44 ef 00 44 44 44 00 44 00 44 00 44 44 44 3c 3c 44 ef 3c 00 44 00 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 3c 44 44 00 ef 44 3c 44 00 44 00 44 44 44 44 44 3c 44 00 44 44 44 00 44 44 00 44 44 00 44 44 44 44 00
*/
