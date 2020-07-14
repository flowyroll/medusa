.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rdi
lea addresses_normal_ht+0x10b54, %r11
clflush (%r11)
nop
nop
nop
nop
dec %rax
vmovups (%r11), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
and $30615, %r14
pop %rdi
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rbp
push %rdx

// Faulty Load
lea addresses_UC+0x154bc, %r10
nop
add $17354, %r9
movups (%r10), %xmm4
vpextrq $0, %xmm4, %rdx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rbp
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'44': 4354, '46': 1, 'f0': 249, '00': 3379, '53': 3022, 'de': 1, '36': 1, '20': 15, '79': 24, 'ff': 10778, 'a4': 1, 'aa': 1, '10': 2, '6c': 1}
ff ff ff f0 53 ff ff ff ff 53 ff ff ff 00 ff 44 00 ff 53 aa 00 ff ff ff ff 00 ff ff ff 53 53 ff 00 44 00 ff ff ff ff ff 44 ff ff 00 ff ff ff ff ff ff 44 00 00 ff 44 ff ff 44 ff ff ff 44 53 53 53 53 53 ff 44 ff ff ff ff ff ff 53 ff 44 00 ff 44 53 ff 44 00 00 53 ff 00 53 ff 00 53 ff 44 44 00 00 44 44 53 ff 44 00 ff ff 44 53 ff ff 44 ff 44 53 ff 44 ff 00 ff ff 44 44 ff ff 00 ff ff ff ff f0 44 00 44 ff 00 ff ff 44 53 53 53 ff ff ff ff 00 00 ff ff ff 44 ff f0 ff ff f0 00 44 53 53 ff ff ff ff ff ff ff 00 ff f0 ff 44 ff ff ff ff ff 53 53 ff ff ff 44 53 53 ff ff 53 ff 44 ff ff ff ff 44 53 ff ff ff ff ff 00 ff 00 00 ff 44 00 ff 00 ff ff ff 00 ff 53 53 53 ff 44 53 ff 44 ff 00 ff ff ff 44 ff ff 00 ff 00 44 00 44 53 ff ff ff ff ff ff 00 00 44 ff 00 44 44 53 ff 00 ff 00 ff ff ff 53 ff ff 44 44 ff 00 ff 00 44 53 53 ff ff 44 ff 44 ff ff ff 44 53 ff ff 00 44 ff ff 00 ff 44 44 00 ff 00 ff 00 44 53 ff ff ff 44 44 ff ff 44 00 ff 00 44 44 53 53 ff ff 44 00 44 ff ff ff ff 44 00 ff 44 53 ff 44 ff 00 ff ff 44 53 ff 44 53 53 53 ff 00 ff 00 ff 44 ff 53 53 ff ff ff ff 00 44 53 ff 44 53 ff 00 ff 53 53 ff 44 53 ff 44 53 ff ff ff ff ff 00 ff 53 ff 53 00 ff ff 44 53 53 53 ff ff 44 53 ff 44 44 ff 44 53 ff ff ff ff ff 44 ff 44 ff ff 44 00 ff 00 ff 00 44 53 ff 00 ff 44 ff ff 44 ff ff 00 00 ff ff 44 53 ff ff ff ff 00 ff ff ff 44 44 53 ff ff 00 00 44 53 ff 44 ff 44 53 00 53 ff 00 00 00 44 ff 44 44 53 ff 44 ff 44 00 44 44 00 44 53 ff ff ff 00 44 00 00 ff ff ff ff 44 ff 00 ff ff ff ff ff ff 00 ff ff ff ff 44 00 ff ff ff 00 00 00 44 ff ff ff ff 44 ff 00 44 ff 00 ff ff ff ff 44 53 53 ff 44 53 ff 00 44 53 53 53 53 ff ff 53 ff ff 44 00 00 44 ff ff 53 ff ff ff ff ff ff ff 00 00 44 53 ff ff ff 00 ff 44 44 44 00 00 ff ff ff ff 00 44 44 00 44 53 44 53 ff ff ff ff ff ff ff ff ff ff 00 00 ff ff 00 00 ff ff ff 00 00 ff 00 44 53 ff ff 00 ff 44 ff ff 00 ff 44 44 ff ff ff 44 ff f0 ff 00 ff ff 44 ff ff 00 ff 44 ff 44 44 44 ff ff ff 44 ff f0 00 44 44 53 53 ff ff 44 00 ff ff ff ff ff 44 44 44 53 53 ff ff ff 44 44 53 ff ff ff 00 00 00 ff ff ff ff ff ff ff 44 ff ff 44 ff 00 44 53 53 44 ff 00 44 ff 00 ff 00 ff ff ff ff 44 ff 44 53 53 ff 44 53 53 53 ff ff ff ff ff 44 53 ff 44 53 53 ff ff ff ff 00 00 ff 53 ff ff 00 53 ff ff ff ff 00 ff 00 44 44 44 ff 44 53 ff ff ff ff 00 00 44 ff 44 00 ff ff 00 00 ff 00 ff ff ff ff 44 ff ff 00 00 ff ff 00 44 53 53 53 44 ff 00 ff 44 44 44 ff 44 53 53 ff 53 ff ff 44 53 ff ff ff 44 ff ff 44 53 ff 44 53 53 44 44 ff ff 00 ff ff ff ff ff ff 44 44 53 ff ff ff 44 ff 44 ff ff 44 44 44 44 ff ff 44 ff 53 ff f0 44 44 53 ff 00 44 53 ff 44 ff 44 00 ff ff 44 ff 00 ff 44 53 ff ff ff 53 00 ff 44 53 ff ff ff 44 53 ff ff 44 00 ff ff 44 ff 44 53 ff 44 ff ff 00 ff ff 44 44 ff 44 53 ff ff 44 44 53 53 ff ff ff ff ff 00 ff f0 44 53 ff 44 53 53 ff ff ff ff 53 53 ff 44 ff ff 44 53 53 ff ff ff 00 00 00 00 ff ff ff ff 00 44 00 ff ff 00 ff ff 44 53 53 53 53 ff ff 53 53 53 53 ff ff 00 ff 44 53 ff ff 53 53 53 44 ff 44 ff 00 ff 44 44 44 44 53 ff 44 00 ff ff ff 44 ff ff ff ff 44 ff ff 44 ff ff ff ff ff
*/
