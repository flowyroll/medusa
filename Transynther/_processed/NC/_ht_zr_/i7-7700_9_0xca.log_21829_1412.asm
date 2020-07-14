.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x11f7, %r11
nop
nop
nop
add $29940, %r12
mov (%r11), %r9
nop
nop
nop
inc %r12
lea addresses_A_ht+0xe7f7, %r8
nop
xor %r10, %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%r8)
sub %r8, %r8
lea addresses_WC_ht+0x17c9f, %rsi
lea addresses_A_ht+0x1526f, %rdi
add $28753, %r12
mov $94, %rcx
rep movsl
nop
nop
nop
sub $47853, %rcx
lea addresses_WT_ht+0x1089f, %r11
nop
nop
nop
nop
nop
sub %r10, %r10
movb $0x61, (%r11)
and %r10, %r10
lea addresses_A_ht+0x1b1cf, %r8
and %r10, %r10
mov (%r8), %di
nop
dec %r10
lea addresses_UC_ht+0x5513, %rsi
lea addresses_normal_ht+0x173f7, %rdi
nop
nop
nop
nop
nop
cmp $41994, %r10
mov $70, %rcx
rep movsq
nop
nop
nop
nop
add $30955, %rcx
lea addresses_A_ht+0x1ed85, %r11
nop
nop
sub %rcx, %rcx
movb $0x61, (%r11)
and $27414, %r8
lea addresses_WC_ht+0xf0b7, %rsi
lea addresses_WC_ht+0xf177, %rdi
inc %r10
mov $94, %rcx
rep movsq
and %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rax

// Faulty Load
mov $0x2bd09300000003f7, %r13
nop
nop
nop
cmp %r11, %r11
movups (%r13), %xmm6
vpextrq $1, %xmm6, %r10
lea oracles, %r12
and $0xff, %r10
shlq $12, %r10
mov (%r12,%r10,1), %r10
pop %rax
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}}
{'48': 13864, '00': 7965}
48 00 48 48 48 00 48 48 48 48 00 48 00 00 00 48 00 48 48 48 48 48 48 48 00 00 00 48 00 48 48 48 48 00 48 48 48 48 00 48 00 48 48 48 48 00 48 48 00 48 00 00 48 00 48 48 00 48 48 00 00 00 48 48 48 48 48 48 48 00 48 48 00 48 00 00 48 48 48 48 48 00 00 00 48 48 48 48 00 48 48 00 00 48 48 00 48 00 48 00 48 48 48 48 48 48 00 48 00 00 48 48 48 48 48 48 00 00 48 48 48 48 00 48 00 48 00 48 48 48 48 48 00 00 48 00 00 48 48 00 48 48 00 48 48 48 00 00 48 48 48 48 00 48 00 00 00 00 00 00 48 00 48 48 48 00 48 48 48 48 48 48 00 00 48 00 00 48 48 48 48 00 48 48 00 48 00 00 48 00 00 00 00 00 48 00 00 48 00 48 48 00 48 48 48 48 48 48 48 00 48 00 48 48 48 48 00 48 48 48 00 00 00 00 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 48 00 48 48 00 48 00 48 48 48 48 48 00 48 00 48 48 48 48 48 48 48 00 48 48 48 00 00 48 00 48 48 48 48 00 00 00 48 48 00 48 48 00 48 00 48 48 00 00 48 00 00 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 00 48 48 00 00 48 48 00 48 48 00 48 48 00 48 00 00 48 48 00 48 00 00 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 00 48 00 00 48 48 00 00 48 48 48 00 48 00 00 48 48 48 00 48 48 00 48 48 48 00 00 48 48 48 00 48 00 48 48 00 00 48 00 48 48 00 00 48 48 00 00 00 00 00 48 48 48 48 48 00 00 48 48 00 48 48 48 00 48 48 48 48 48 48 00 48 48 48 00 48 00 00 00 00 00 00 00 00 48 48 48 48 48 48 48 00 48 00 00 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 00 48 00 48 48 48 00 48 48 00 00 48 48 00 48 48 48 48 48 00 48 00 00 00 48 48 48 00 48 48 48 00 00 48 48 48 48 00 00 00 48 48 00 48 48 00 00 00 00 48 48 00 00 48 00 48 48 48 00 48 48 00 48 48 48 48 48 48 00 00 00 48 00 00 48 00 48 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 00 00 48 00 00 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 00 48 48 48 48 48 48 00 00 48 48 48 00 48 48 48 48 48 48 00 00 48 00 48 00 48 48 00 48 48 00 00 48 00 00 48 48 48 00 48 48 00 00 48 48 00 48 48 00 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 00 48 48 48 48 00 00 48 48 00 00 00 00 48 00 48 48 48 00 48 48 48 48 00 48 00 48 48 00 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 00 00 48 48 48 48 00 00 48 48 00 48 00 00 48 48 00 48 48 00 00 48 48 48 00 48 48 48 00 48 48 48 00 48 48 00 48 48 48 48 48 48 48 00 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 00 48 00 48 48 00 48 00 00 48 48 48 48 48 48 00 48 00 48 00 48 00 00 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 00 00 48 48 00 48 48 48 48 48 00 48 00 00 48 48 48 48 48 48 00 48 00 48 00 48 00 00 48 00 00 48 48 00 48 48 48 00 00 00 00 00 48 48 48 48 48 48 48 00 48 48 00 00 00 48 00 48 00 00 48 48 00 48 48 00 00 48 00 00 48 00 00 48 48 48 00 48 48 48 00 00 48 00 00 48 00 48 00 00 48 48 00 00 00 00 48 00 00 48 00 48 48 00 00 48 00 00 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 00 48 00 00 48 48 48 48 48 48 48 00 00 48 00 48 48 48 48 00 48
*/
