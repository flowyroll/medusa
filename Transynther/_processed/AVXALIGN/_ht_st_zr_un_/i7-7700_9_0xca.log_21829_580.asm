.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x111ba, %r15
nop
add $12613, %r10
movups (%r15), %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
nop
nop
cmp $59231, %r13
lea addresses_A_ht+0x27ba, %rsi
lea addresses_D_ht+0x38ca, %rdi
nop
and $62343, %r15
mov $124, %rcx
rep movsb
nop
nop
nop
xor $49836, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Faulty Load
lea addresses_US+0x133ba, %rcx
nop
nop
nop
and $35246, %rsi
mov (%rcx), %r8
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}}
{'45': 13480, '3c': 5013, 'de': 961, '80': 46, 'b0': 90, '79': 10, 'ff': 2030, '00': 19, 'b6': 1, 'e9': 88, 'e0': 89, '90': 2}
45 3c de de ff ff 45 45 45 3c 3c 45 45 de 45 45 de 45 45 45 45 45 45 ff ff 45 3c 3c 45 45 3c 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 de 45 45 45 80 3c 45 45 de 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 3c ff b0 3c b0 3c 45 45 45 45 3c 3c ff 45 3c 3c 3c 3c ff 45 45 3c 45 3c 3c 3c 3c 3c 45 3c 45 45 45 3c 3c 3c 45 ff 45 45 45 de 45 45 45 45 45 45 45 45 3c 45 45 3c 45 45 ff 45 45 45 45 45 45 45 45 45 45 45 45 45 45 3c 45 ff 45 45 45 45 45 45 45 45 45 45 de 45 45 45 45 45 3c 45 b0 45 45 45 45 45 45 45 45 45 45 45 45 b0 45 45 45 3c 3c 3c 45 45 45 de 3c 45 45 45 45 45 45 3c 45 45 45 45 45 45 e9 45 45 45 45 3c 3c 45 45 45 45 45 ff de 3c ff 45 3c 45 45 45 45 45 45 45 de 45 45 45 45 45 45 45 45 ff 3c 45 45 de de ff 3c 45 45 ff 45 45 45 45 ff 3c 3c 45 ff 45 45 e9 45 45 ff 45 45 3c 45 45 45 45 45 45 de 45 3c 45 3c 45 45 45 45 ff 3c 3c 45 45 45 3c 45 45 45 45 45 3c 3c ff 80 3c 45 45 3c 45 45 45 45 45 45 45 45 3c 45 3c 3c 3c 3c 45 45 3c 45 ff 3c ff 45 45 e9 45 45 3c ff 3c ff 45 45 3c 3c 45 3c 45 3c 45 45 3c 45 45 45 45 45 e0 3c 3c 3c 45 45 45 45 45 45 45 45 ff 3c 3c ff 45 45 45 45 45 45 45 45 45 3c 45 45 45 45 ff ff 3c ff 3c 45 ff 45 45 3c 3c ff de 45 45 45 3c 45 45 45 3c 45 45 45 3c 45 45 45 ff 3c e9 45 3c ff ff 3c de 3c 80 ff 45 3c 3c 45 45 45 45 45 45 45 45 3c 45 45 45 45 de 3c ff 45 45 45 45 45 45 45 45 3c 3c 3c 45 45 45 de 45 ff 45 45 45 45 45 45 3c 45 45 45 3c ff 3c 3c 3c 3c 45 45 de 3c 45 45 45 3c ff 45 3c 3c 45 45 ff 45 3c ff ff 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 3c 3c 3c 45 de 45 45 45 3c 3c ff de 45 45 45 45 79 3c 45 3c 45 3c 45 45 45 45 45 ff de de 45 45 45 45 3c 45 45 3c 45 45 ff 45 45 45 e0 3c ff 3c 45 45 45 45 45 45 45 de 45 45 45 45 3c 45 45 45 45 45 45 45 45 3c 45 de ff 3c 45 3c 45 45 45 45 45 45 3c 3c 45 45 3c 45 45 3c 3c 45 45 45 45 45 45 45 45 45 45 45 3c ff 3c 45 3c 3c 45 45 45 45 45 3c 45 45 45 45 45 45 3c 45 45 3c 45 45 3c 45 3c 45 45 45 45 45 de 45 45 ff 45 45 3c 45 45 45 45 45 45 45 45 ff ff ff 3c 3c 45 45 45 ff ff 3c de 3c 45 3c ff 45 45 45 3c 45 45 ff 3c 45 45 b0 3c 45 45 45 45 b0 3c 3c 3c 3c ff 45 45 45 45 45 45 45 de ff 45 45 45 45 45 45 b0 3c 45 45 45 45 45 45 45 de 3c 3c 45 45 de 45 45 45 45 45 45 de 3c 45 45 45 3c ff 45 45 45 3c 45 3c 45 45 45 45 e0 3c 3c 45 45 45 45 3c 3c ff ff 45 45 45 3c 45 45 45 3c 3c 45 45 45 3c 45 45 45 45 45 45 3c 45 45 45 45 45 45 3c 45 3c ff ff 45 ff 45 45 3c 3c 3c 45 45 45 45 3c 45 45 3c 45 45 45 45 3c 45 45 45 45 45 3c ff 45 45 45 3c 45 45 45 3c 3c 45 45 45 de 3c 3c ff 45 45 3c 3c ff de 45 3c 3c 45 45 45 45 3c 45 45 45 e9 45 45 3c 3c 45 45 45 de 45 3c ff 3c 45 45 45 e9 ff 3c 45 45 45 45 3c 3c 3c ff 45 45 45 45 ff 3c 45 45 45 3c 45 45 3c 45 45 3c 45 45 45 45 45 3c 3c ff 45 45 3c 45 3c 45 45 45 3c de 45 45 45 45 45 3c 3c 3c 45 de 3c 45 45 3c 3c 45 e9 45 3c ff 45 45 3c 3c 45 3c ff 45 3c 45 3c 3c 45 45 45 3c 3c de 45 45 45 de 45 e9 45 45 45 45 45 3c 3c 45 45 45 de ff de 45 3c ff 3c 3c 45 3c 45 3c 3c 45 3c 45 3c 45 45 3c 3c 45 e9 45 45 45 45 45 de 45 ff 3c 3c 3c 45 45 45 de ff 45
*/
