.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x3f6b, %rsi
lea addresses_D_ht+0x16c77, %rdi
nop
nop
xor $21622, %r13
mov $65, %rcx
rep movsl
nop
nop
nop
and $4013, %r11
lea addresses_normal_ht+0xddf7, %r14
nop
nop
cmp %rbp, %rbp
mov (%r14), %r13d
nop
nop
nop
add %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %r8
push %rbx

// Store
lea addresses_normal+0x6ccf, %r13
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %r8
movq %r8, (%r13)
inc %r13

// Faulty Load
lea addresses_WC+0x25f7, %r14
nop
sub %r12, %r12
vmovups (%r14), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r11
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'44': 23, 'ac': 9, '48': 3043, '00': 4354, '53': 664, '50': 13, '80': 15, 'c0': 57, 'ff': 13305, 'e0': 73, '02': 80, '3c': 171, 'c4': 22}
ff ff 00 00 ff ff ff ff 48 ff ff ff ff 48 ff 00 ff 53 ff 48 ff ff ff ff ff ff ff ff ff 00 ff ff 00 ff ff ff ff ff ff ff ff ff ff 00 ff ff 48 ff 48 ff ff ff ff 48 48 ff 48 ff 48 00 ff 48 53 ff ff ff 00 ff ff ff ff 00 00 ff ff 48 ff ff ff ff 53 ff ff 00 ff ff ff ff 48 ff ff ff ff ff ff 00 ff ff e0 ff 48 ff ff 00 ff ff 00 ff ff ff 48 ff 48 00 ff 00 00 ff e0 ff ff ff ff 53 00 ff ff ff ff ff ff ff ff ff ff 00 ff ff 48 ff 3c ff ff ff ff 00 ff ff ff ff 48 ff ff ff 00 ff 48 00 ff ff 00 00 00 00 48 ff ff ff 00 48 00 00 ff 00 48 48 48 ff 00 ff ff ff ac 00 ff ff ff 00 ff ff ff ff ff 00 ff ff ff ff ff ff ff 48 ff 48 ff 3c ff ff ff ff ff ff 00 ff ff 00 ff 00 53 48 00 ff ff ff 00 ff 00 ff 00 48 53 53 ff ff 00 ff ff 00 ff ff ff ff 48 00 48 00 48 ff 48 00 ff ff ff ff ff ff 48 ff ff ff 00 00 ff ff 00 00 ff ff ff ff ff ff ff ff 3c 53 ff 48 53 ff 48 00 00 ff ff 48 ff ff ff ff ff 53 ff ff 00 00 00 ff 48 48 00 ff c4 ff ff ff ff ff ff ff ff 48 ff ff 00 00 ff 48 48 ff ff ff ff 00 ff 00 ff ff ff ff 53 00 ff ff ff ff 48 00 ff 48 00 ff ff 00 ff 00 ff 00 ff 48 c0 ff ff ff 48 48 53 ff ff 48 00 ff ff ff ff 00 ff 48 ff ff 48 00 ff ff 48 53 ff 48 48 00 ff ff ff ff ff ff ff ff 00 ff ff ff ff ff 48 ff ff 53 ff 00 ff ff ff 48 ff ff ff ff 48 00 48 ff 00 ff 48 00 ff ff 00 ff ff ff 00 ff ff ff 00 48 53 00 ff ff ff 48 3c ff ff 00 ff ff ff ff ff ff 00 ff ff ff 48 48 53 00 00 ff ff 00 00 ff ff 3c ff 00 ff ff ff ff 00 00 ff ff ff ff ff 48 00 48 00 ff 48 53 ff 00 ff ff 00 ff ff ff ff ff 00 00 00 ff 00 ff ff ff ff ff 48 ff 00 ff 00 ff 00 00 00 ff 00 00 ff 00 ff 48 ff ff ff 00 ff ff 00 ff 00 48 53 00 00 00 ff ff ff ff ff ff ff 48 ff ff ff ff 48 00 48 ff ff 00 ff ff ff ff 00 ff ff 48 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 48 ff ff 48 ff 48 ff ff ff 00 ff 00 ff ff ff 48 ff 00 ff ff ff ff ff 00 02 ff 00 ff 00 ff 00 00 ff 00 ff ff ff 48 00 ff ff 00 ff ff ff ff 48 00 ff 48 ff ff 00 ff ff 00 ff ff ff 00 48 00 ff 48 ff ff ff 00 44 48 ff ff ff ff ff ff ff ff ff ff 48 00 ff 00 ff ff 00 ff ff 00 00 ff 00 48 ff 00 ff ff ff ff 48 ff 53 53 ff ff ff 00 ff 00 00 ff 00 ff ff 48 ff 00 ff ff 48 00 48 ff ff 00 ff ff ff ff ff ff 00 ff 53 53 ff ff 00 00 48 48 00 ff 48 00 ff e0 ff ff 00 ff e0 48 ff 48 ff ff ff ff ff ff ff ff ff ff 48 ff ff ff ff 00 ff ff ff ff ff 48 ff ff ff 00 ff 48 53 ff ff ff ff 48 ff ff ff ff ff ff ff ff ff ff ff ff ff 48 ff ff 48 48 53 02 ff ff 00 ff ff ff ff ff 00 48 00 48 ff 00 00 00 ff ff ff ff ff ff ff ff ff ff ff ff 48 ff ff ff 00 00 ff ff 3c ff 48 00 ff 00 00 ff ff ff ff 00 ff ff ff ff ff 00 00 ff ff ff 00 ff ff ff ff 48 ff 00 48 00 ff ff 53 ff 48 ff 00 48 ff 00 00 ff ff 00 ff ff 53 48 ff 00 48 00 ff ff ff ff 48 ff ff ff ff 48 53 ff ff ff 00 ff ff 48 53 48 ff 48 ff ff 00 ff ff ff 00 ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff ff 48 00 48 00 ff ff ff 00 00 ff ff 00 ff ff 48 ff 48 ff ff ff ff 48 ff ff ff ff ff 48 48 ff ff 00 ff ff ff ff ff ff ff ff 00 ff ff ff ff ff 00 ff ff 48 ff 00 00 ac 00 00 ff ff ff 48 00 ff 00 ff 48 ff ff ff ff ff ff 00 00 ff 48 ff 48 ff 48 00 ff 02
*/
