.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x9d39, %rsi
lea addresses_D_ht+0x142d9, %rdi
nop
nop
nop
nop
add %r13, %r13
mov $40, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rbp
push %rdi
push %rsi

// Store
mov $0x539, %r11
nop
xor %r15, %r15
movw $0x5152, (%r11)
sub $60745, %rdi

// Faulty Load
lea addresses_UC+0x2b39, %r15
nop
nop
nop
nop
nop
dec %rsi
vmovups (%r15), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdi
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': True, 'type': 'addresses_D_ht'}}
{'44': 12404, '1f': 890, '00': 1729, 'ff': 1370, '3c': 4982, '80': 84, 'e0': 277, 'b0': 93}
44 00 3c 44 44 44 44 44 44 44 3c 44 44 3c 44 44 3c 3c 3c 44 44 3c 44 44 44 00 3c 44 3c ff 00 ff 44 3c 44 ff 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 3c 44 44 00 3c 44 44 44 44 3c e0 ff 00 44 3c 44 44 3c ff ff 44 44 3c 3c 3c e0 44 3c 00 44 44 3c 44 44 44 44 3c 44 3c 3c 3c 3c 44 3c 44 ff 44 44 44 44 44 44 00 44 44 44 44 44 3c 44 44 3c 3c 44 44 44 44 44 44 44 44 3c 44 44 44 44 3c ff 44 44 44 44 44 44 44 3c 3c 44 44 3c 44 44 3c 44 3c 80 3c 44 44 1f 00 44 44 00 3c 3c 3c 44 ff ff 00 44 44 44 00 3c 3c 00 1f 3c 44 44 44 1f 44 00 3c 44 44 44 3c 3c 44 44 44 44 3c 44 44 3c 44 3c 44 3c 3c 3c 1f 44 44 3c 44 3c 00 44 3c 44 3c 3c 44 3c 44 44 3c 3c 3c 3c 3c 44 ff 44 1f 44 44 3c 3c 44 3c 00 44 44 44 44 44 44 1f ff 44 1f 44 44 ff 00 44 44 44 44 ff 44 1f ff 00 3c 3c 44 44 44 3c 44 44 00 e0 44 44 3c 44 44 44 44 3c 44 44 44 44 44 3c 44 3c 3c 44 00 44 3c 44 3c 44 44 44 3c 80 44 44 44 44 44 3c 3c 3c 44 44 3c 3c 44 44 44 44 44 44 3c 1f 44 44 ff 00 3c 3c 44 44 44 3c 3c 3c 3c 44 3c 44 3c 44 00 ff 00 44 3c 44 44 44 44 3c 3c 44 44 44 ff 44 44 44 3c 3c 44 44 00 44 44 44 ff 00 00 44 3c 3c 44 44 3c ff ff ff 00 44 44 44 3c 3c 44 44 3c 1f b0 3c 00 44 3c 44 44 3c 3c 44 44 3c ff 00 44 44 3c 3c 44 44 44 3c 44 44 00 3c 44 44 44 44 44 3c 44 44 44 3c 44 44 44 3c 44 00 44 3c e0 44 44 3c 44 3c 44 44 44 44 3c 44 44 3c 44 3c 3c 44 44 ff 00 44 00 3c 44 3c 3c ff 00 44 3c 44 44 3c 3c 44 44 3c 44 44 44 44 44 3c 00 3c 44 44 44 3c 44 00 44 44 3c 3c 44 44 44 44 44 44 44 ff ff ff 44 44 44 00 44 3c 44 44 3c 44 44 44 ff 44 44 44 44 44 44 3c 44 44 44 44 44 44 44 3c 3c ff ff 44 44 44 1f 00 3c 44 3c 44 3c 44 44 44 00 44 44 3c 44 3c 44 ff 00 ff 80 3c 44 00 44 44 44 3c 3c 00 3c 44 44 44 e0 44 00 44 44 e0 44 ff 44 44 44 3c 3c 44 44 44 00 44 3c 44 3c 3c 44 44 44 3c 3c 44 44 44 3c 44 44 44 44 44 44 3c 44 3c 44 44 3c 44 1f 00 44 ff ff 44 44 44 44 44 3c 3c 44 44 3c 3c 44 44 00 44 44 44 3c 3c 3c 44 44 44 3c 3c e0 00 44 3c 1f 44 00 3c ff b0 44 44 44 e0 3c 3c ff 00 3c 44 3c 44 44 44 44 44 44 44 44 3c 44 44 44 44 44 e0 44 00 3c 44 3c 44 3c 1f 44 44 44 44 44 3c 44 3c 00 44 44 00 44 44 44 ff 44 44 00 44 44 3c 3c 3c 3c 44 3c 3c 3c 44 44 00 44 3c 3c 44 3c 3c 44 44 44 44 ff 00 1f 44 3c 44 3c 00 44 44 80 3c 3c 44 44 3c 44 44 3c 44 44 00 44 44 44 3c 44 44 44 3c 44 3c 44 44 44 44 3c 3c 44 44 44 3c 3c 3c 3c 44 ff b0 1f 00 3c 44 44 44 44 3c 44 44 3c 44 3c 3c 3c 44 44 3c 44 3c 44 44 44 44 1f 44 3c 44 1f 00 44 3c 44 3c 44 e0 3c 44 3c 44 3c 44 44 44 44 44 44 ff 44 44 ff 00 00 44 44 ff 00 44 44 3c 44 3c 44 1f 44 44 44 44 00 44 44 44 3c 44 44 44 1f 1f 44 44 ff ff 00 44 44 44 44 ff 1f 3c 44 3c 3c 44 44 44 3c 44 ff 00 3c 3c 44 44 00 00 00 3c 44 44 44 44 44 44 44 e0 44 3c 44 3c 3c 1f 44 3c 44 3c 44 3c 44 1f 00 44 1f 44 3c 3c 3c 44 3c 44 44 44 44 3c 44 3c 44 3c 1f 44 3c 3c e0 44 44 44 3c 3c 1f 44 44 44 44 3c 3c 44 1f 00 44 44 44 44 44 3c 44 44 3c 44 44 44 44 3c 3c ff ff 44 44 3c ff b0 e0 ff b0 1f 44 3c 3c 44 44 44 44 44 ff 00 00 44 44 44 44 3c 44 3c 44 44 3c 3c 44 44 3c 44 1f 00 44 44 44 3c 44 ff 00 e0 3c 44 3c 44 3c 3c 3c
*/
