.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rbp
push %rdi
push %rsi

// Store
mov $0x23f, %rbp
nop
nop
and %r14, %r14
movw $0x5152, (%rbp)
nop
nop
nop
cmp $65149, %rdi

// Store
lea addresses_RW+0xe467, %r14
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%r14)
nop
xor %r8, %r8

// Store
lea addresses_WT+0x13fbf, %rdi
nop
nop
dec %rbp
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
and $46798, %r14

// Faulty Load
lea addresses_WT+0x83bf, %r10
clflush (%r10)
nop
nop
and %r11, %r11
mov (%r10), %r14
lea oracles, %r10
and $0xff, %r14
shlq $12, %r14
mov (%r10,%r14,1), %r14
pop %rsi
pop %rdi
pop %rbp
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'53': 1, '00': 36, '01': 19, '58': 1, 'ff': 11}
00 58 00 00 00 01 00 01 01 00 01 01 ff 00 53 00 00 00 ff 00 00 ff 00 ff 00 01 00 00 ff 00 01 01 01 00 00 00 01 ff 00 00 01 01 01 01 00 00 ff 00 01 01 ff 00 01 00 ff 00 ff 00 00 00 00 00 00 00 ff 00 01 01
*/
