.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rax
push %rdi
push %rdx
push %rsi

// Faulty Load
lea addresses_WT+0x1a437, %r8
nop
nop
nop
nop
nop
xor $7008, %rdx
movups (%r8), %xmm7
vpextrq $0, %xmm7, %rax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'3c': 371, 'ff': 10643, 'e0': 10815}
ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 3c e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 3c 3c ff e0 ff e0 e0 ff e0 ff e0 ff e0 ff e0 ff e0 3c 3c ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 3c e0 e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 3c e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 3c 3c 3c ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 3c ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 3c ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 3c 3c ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0
*/
