.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x11a9a, %r10
nop
nop
nop
xor $43422, %r15
movb (%r10), %r12b
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0xa4ba, %r13
nop
cmp $37768, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm7
movups %xmm7, (%r13)
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x16a3a, %rsi
lea addresses_D_ht+0x106ba, %rdi
xor $628, %r12
mov $54, %rcx
rep movsb
nop
nop
nop
nop
inc %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rcx
push %rsi

// Faulty Load
mov $0xcba, %r9
nop
add %r11, %r11
mov (%r9), %r10
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rcx
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}}
{'de': 290, '00': 1, 'ff': 445, 'e0': 381}
00 de e0 e0 ff ff e0 de de e0 e0 ff ff e0 ff e0 e0 ff e0 e0 ff e0 ff e0 de ff ff e0 ff e0 ff de ff ff ff de de ff e0 ff e0 de e0 ff de de ff de de e0 e0 de de e0 ff ff e0 e0 de e0 ff e0 ff e0 ff ff de ff e0 e0 e0 e0 e0 e0 ff ff e0 e0 de de de ff e0 de ff ff e0 de ff ff de de ff de e0 e0 e0 de de e0 ff ff e0 de ff de de de ff de ff ff de de de ff ff ff e0 de de ff e0 ff e0 ff ff ff ff de de ff ff ff ff ff ff ff ff e0 e0 e0 de e0 de ff de e0 e0 e0 de de ff e0 de de ff ff ff ff e0 ff e0 de ff e0 ff ff de ff e0 de ff e0 ff ff ff e0 ff e0 de ff ff ff e0 e0 de ff ff ff ff ff ff de ff ff ff e0 e0 ff ff ff de ff e0 ff e0 ff ff e0 ff ff de e0 e0 ff e0 ff ff ff ff de de e0 e0 de ff e0 de ff ff e0 e0 de e0 e0 de e0 de e0 ff ff e0 e0 ff ff de de ff de ff ff ff de de e0 de de ff de ff e0 ff e0 e0 ff de e0 ff de e0 e0 ff ff e0 ff ff de ff de ff e0 e0 ff de de e0 ff ff ff ff e0 de e0 de ff e0 de ff ff de e0 ff ff ff e0 de e0 ff ff ff de e0 e0 ff ff ff de e0 ff de de e0 ff ff de e0 ff de ff ff ff ff e0 de ff e0 e0 e0 e0 de de ff ff de ff de de de e0 e0 ff e0 ff e0 de e0 de e0 ff ff ff ff de de de de e0 ff de e0 de e0 ff ff de ff de de e0 e0 e0 ff de ff ff e0 ff e0 e0 de de e0 e0 ff de e0 de ff ff ff e0 e0 ff de ff e0 ff de de ff ff e0 ff ff e0 de de e0 ff ff e0 de e0 ff de e0 e0 de e0 e0 e0 de ff ff ff ff de ff ff de ff e0 ff ff ff e0 de ff ff e0 e0 ff ff e0 e0 ff ff e0 de de e0 e0 ff de ff ff de e0 ff e0 ff e0 e0 ff e0 e0 de e0 ff e0 ff de e0 e0 ff ff e0 ff e0 de de ff e0 ff de de e0 de e0 de e0 e0 e0 e0 e0 de de de e0 ff e0 de de de de de ff ff de de ff de ff ff ff ff ff ff e0 e0 ff de ff ff de ff de e0 ff de ff ff de e0 e0 e0 ff e0 e0 ff de e0 de e0 ff e0 de e0 de ff ff ff ff ff e0 ff de ff ff ff de de de de de de e0 e0 ff de ff ff e0 ff e0 ff e0 ff e0 e0 de de ff e0 e0 e0 de e0 e0 e0 e0 de e0 e0 ff ff de de e0 e0 e0 de e0 de de de ff e0 e0 ff e0 e0 e0 de ff ff de ff ff de ff e0 e0 e0 e0 ff e0 e0 ff e0 e0 de de e0 de e0 e0 ff e0 de e0 ff de de e0 e0 de ff ff ff ff ff e0 ff de e0 ff ff e0 e0 e0 ff de e0 ff de e0 e0 de de e0 ff e0 ff e0 ff e0 de e0 ff e0 ff e0 ff e0 e0 e0 e0 e0 de ff de ff de ff e0 ff e0 de ff ff e0 e0 de e0 ff e0 e0 ff e0 de de e0 e0 de e0 ff ff ff e0 de ff ff ff ff e0 de e0 e0 de ff ff de ff de ff e0 ff e0 e0 e0 ff ff ff de ff ff e0 de ff ff ff ff ff ff e0 e0 ff ff ff ff ff e0 e0 e0 de e0 de ff ff e0 e0 ff e0 e0 de de ff ff ff ff ff de de de ff e0 de e0 ff e0 ff ff e0 de ff e0 e0 ff e0 e0 e0 e0 e0 de ff e0 e0 e0 e0 e0 ff e0 de ff ff e0 ff de de e0 de ff ff e0 e0 e0 ff de de e0 e0 e0 ff e0 ff de ff de e0 ff de de e0 e0 de de e0 e0 ff ff e0 ff de de de de de ff de e0 ff de de ff de ff ff ff ff de ff de ff e0 ff de de ff ff ff e0 ff ff e0 ff ff ff ff ff ff de e0 e0 de e0 e0 de ff ff ff ff de ff de ff de e0 de e0 e0 ff e0 ff ff ff de de ff de ff ff e0 e0 e0 de ff ff de e0 de de de de e0 de ff e0 e0 e0 de e0 e0 e0 ff e0 e0 ff ff de ff de ff ff ff e0 e0 ff de e0 ff ff e0 ff ff e0 de ff e0 de ff ff e0 e0 de ff ff ff ff ff de e0 e0 e0 e0 de e0 e0 e0
*/
