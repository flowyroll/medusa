.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rbx
lea addresses_A_ht+0x4c2c, %r8
nop
nop
nop
nop
nop
xor $63040, %r10
mov (%r8), %r12w
nop
cmp %rbx, %rbx
pop %rbx
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rax
push %rbp
push %rdi

// Store
mov $0x62c, %rax
and %rdi, %rdi
movw $0x5152, (%rax)
nop
sub $26410, %rdi

// Faulty Load
lea addresses_A+0x5e2c, %r15
nop
nop
nop
inc %r14
vmovups (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rax
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rdi
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'5b': 1, '8f': 1, '84': 1, '7b': 1, '90': 1, 'e5': 1, '58': 2, '4d': 2}
7b 4d 4d 8f 90 5b e5 58 58 84
*/
