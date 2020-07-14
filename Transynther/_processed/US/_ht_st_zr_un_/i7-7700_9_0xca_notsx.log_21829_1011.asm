.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x19330, %rsi
lea addresses_normal_ht+0xd58, %rdi
nop
dec %r13
mov $43, %rcx
rep movsq
cmp %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_D+0x181f0, %rbx
nop
nop
nop
and $32253, %r8
mov (%rbx), %r15
nop
nop
nop
and %r8, %r8

// Load
lea addresses_WC+0x1cc70, %rcx
and $57274, %r15
mov (%rcx), %rbp
nop
nop
and $16747, %r15

// REPMOV
lea addresses_PSE+0x7e30, %rsi
lea addresses_WC+0x1f730, %rdi
nop
nop
add %r12, %r12
mov $9, %rcx
rep movsb
nop
nop
sub $16762, %r15

// Store
lea addresses_WC+0xd95f, %rbx
clflush (%rbx)
nop
and %r8, %r8
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
and $63303, %r15

// Faulty Load
lea addresses_US+0x1f830, %r8
nop
nop
sub %rsi, %rsi
vmovups (%r8), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r15
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_PSE'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'00': 5270, '8c': 187, '80': 188, '9f': 182, '45': 10697, 'e0': 185, 'de': 2632, '3c': 2488}
45 de 45 3c 8c 00 3c 3c 45 45 45 3c 00 00 00 00 00 45 45 80 00 00 00 00 45 45 de 00 3c 3c 00 00 00 00 00 45 de 00 00 45 45 45 3c 00 9f 45 80 00 de 00 45 45 45 3c 45 de 00 45 3c 45 45 45 de 45 45 45 45 de 00 00 45 3c 45 00 00 00 00 00 00 45 45 45 3c 00 00 00 45 45 45 45 de de 45 45 de 45 45 45 de 00 00 45 8c 00 45 45 de 00 de 00 3c 45 45 3c 00 00 00 45 8c 45 de 00 45 45 3c 00 00 45 de 45 45 de 00 45 45 45 45 de 00 00 45 45 45 3c 00 45 45 3c e0 00 de 00 00 00 00 00 45 e0 00 00 3c 00 45 45 45 45 de 00 45 45 45 3c 45 45 de 45 3c 00 de de 3c 45 de 45 45 3c 00 80 00 45 45 de 00 80 00 45 3c e0 45 45 45 de 3c 3c 00 3c 00 45 de 80 00 00 00 45 45 45 45 45 3c 00 00 00 3c 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 de 45 de de 3c 45 3c 45 de 45 de 00 00 00 45 45 de 00 3c de 3c 00 00 00 00 00 00 e0 45 45 45 45 45 3c 45 45 45 45 de 00 00 00 00 00 45 45 45 45 de 00 45 3c 45 45 45 3c 45 45 de 45 de 00 45 45 de 45 45 8c 45 3c de 45 3c 45 45 45 80 00 00 00 00 00 45 de 00 00 3c 45 45 45 de 00 45 45 3c 3c 45 de 00 00 00 00 45 45 00 45 3c 45 45 80 00 00 00 9f 45 3c 45 45 3c 45 3c de 00 00 45 45 45 45 45 45 45 3c 45 45 45 3c de 00 45 45 45 de 45 45 45 45 45 45 45 45 3c 3c 00 45 45 45 45 45 de 00 00 45 45 45 45 45 3c 00 00 00 45 9f 45 45 45 45 3c 45 45 45 45 de 00 00 de 45 45 45 3c 45 3c de de 45 45 8c 00 00 00 45 45 45 e0 45 45 45 3c 45 3c 45 45 45 3c 00 45 de 00 00 00 00 45 80 00 00 00 00 00 00 00 45 3c 00 00 00 3c 9f 45 3c 00 e0 3c 45 45 3c 00 00 00 00 00 45 00 45 de e0 45 3c 45 3c 45 45 45 45 de 45 45 45 45 45 45 45 de 00 00 00 de de 3c 00 3c 00 3c 00 3c 3c 00 3c 00 45 45 3c 00 00 45 45 3c 00 00 00 00 45 3c 45 45 80 00 00 00 45 45 45 de 00 00 00 45 45 45 45 de 00 45 45 45 45 de 00 9f 45 de 45 45 45 45 45 45 45 45 45 45 45 9f 45 3c 00 00 e0 00 45 45 3c 45 3c 45 45 de 3c 00 00 00 45 45 45 45 de 45 45 45 45 de 3c 45 45 45 de de 3c 00 45 45 45 3c 00 de 45 45 45 45 45 45 de de 00 45 45 45 de 45 45 3c de 00 00 45 3c 00 45 45 3c 00 de 00 3c de 00 45 45 45 45 45 45 e0 45 3c 45 de de 45 45 45 de 00 00 00 45 45 45 3c 3c 3c 00 00 00 45 de 00 00 45 45 45 45 45 de 45 3c 45 45 45 45 3c 00 00 45 45 45 de 00 45 de 00 45 45 45 45 45 45 45 45 45 3c 00 00 00 00 00 3c 45 45 45 3c 45 de 00 de 45 45 45 45 de 45 3c 00 45 45 45 de 00 00 45 45 3c de 00 00 9f 3c 45 45 45 45 45 3c 00 00 45 45 3c 3c 45 45 45 45 de 45 45 45 de 45 45 45 45 de 45 45 3c 00 45 de 45 de 45 de 00 45 45 45 45 45 9f de 00 00 de 45 de 00 00 45 de 00 00 00 de 45 45 45 3c 00 45 3c 8c 00 45 45 45 45 45 de 45 de 45 de 45 3c 45 3c de 00 45 45 45 de 45 de 00 45 45 45 45 45 de 00 00 45 45 45 45 de 3c 45 3c 00 00 de de 45 45 de 00 80 45 45 45 45 de 45 45 45 45 de 00 00 45 45 3c 45 45 45 de 00 3c 00 00 00 00 00 00 00 00 45 45 45 3c 45 de 45 45 45 45 3c 00 45 45 3c 00 45 45 00 00 00 00 00 00 00 00 45 45 3c 45 de 00 45 45 3c 00 45 45 45 3c 45 3c 00 45 45 3c 00 de 3c 00 3c 00 45 45 45 3c 00 00 45 45 3c e0 00 45 3c 00 00 80 00 3c 00 00 00 45 45 45 3c 45 3c de 45 45 45 45 45 3c 00 3c 00 45 45 45 45 3c 45 45 45 de
*/
