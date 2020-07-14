.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x19b84, %rsi
lea addresses_D_ht+0xfd64, %rdi
nop
nop
xor %r8, %r8
mov $112, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r12
lea addresses_WT_ht+0xfc04, %r10
nop
nop
nop
sub %rbx, %rbx
movw $0x6162, (%r10)
nop
nop
add %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rbx
push %rdi

// Store
lea addresses_WC+0x11004, %rdi
nop
cmp %r11, %r11
movw $0x5152, (%rdi)
nop
xor %rdi, %rdi

// Store
lea addresses_WC+0x11004, %r13
nop
nop
xor %r9, %r9
movb $0x51, (%r13)
nop
nop
nop
nop
nop
xor $3898, %r12

// Load
lea addresses_A+0x2ab4, %rdi
nop
nop
nop
nop
nop
xor $30, %rbx
movups (%rdi), %xmm7
vpextrq $1, %xmm7, %r11
nop
nop
nop
dec %r8

// Store
lea addresses_US+0xc404, %r9
nop
nop
nop
dec %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r9)
nop
cmp %r12, %r12

// Faulty Load
lea addresses_WC+0x11004, %r13
add %r9, %r9
vmovaps (%r13), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'2a': 1298, 'ef': 7, '63': 14, '59': 3, 'b3': 64, '19': 4, 'af': 33, '5b': 22, 'd9': 3, 'e5': 1, 'bf': 12, '72': 2798, '7b': 58, '83': 1, '81': 163, 'd1': 26, 'fb': 368, '89': 4, '73': 1, 'dd': 14, '91': 44, 'a5': 58, '31': 33, 'b5': 243, 'ad': 10, 'f1': 2, '5f': 2, '7d': 5, 'bd': 2, '27': 1, '45': 27, '04': 2, 'a9': 146, 'e7': 44, '09': 1, '4d': 21, '4f': 42, 'b7': 11, '23': 129, '08': 3154, '55': 119, '93': 73, '99': 57, '0b': 48, '3f': 1, '29': 1317, '3b': 81, '00': 7118, '05': 1, '3d': 1, 'c9': 7, '9d': 1, '67': 17, 'a1': 342, 'cd': 67, '0d': 63, 'ff': 2037, '28': 55, 'f7': 30, 'c3': 2, '69': 10, '49': 1160, 'f9': 4, '75': 3, 'a7': 64, '1b': 248, '57': 32}
00 04 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 04 00 00 00 00 00 00 00 00 00 08 00 08 00 08 00 00 00 08 00 08 00 00 08 00 08 00 08 00 08 00 08 00 08 00 00 00 08 00 00 08 00 08 00 08 00 00 08 00 08 00 00 08 00 00 08 00 00 08 00 08 00 00 08 00 08 00 49 49 00 49 72 00 49 00 49 72 72 72 49 72 72 00 49 00 49 72 49 00 49 49 72 72 72 72 72 72 00 49 72 00 49 72 72 72 49 49 49 72 00 49 72 00 49 72 72 49 72 72 72 72 72 49 72 49 49 49 72 00 63 49 72 72 49 72 00 63 49 72 72 72 72 72 49 72 72 72 72 72 49 72 72 72 72 72 72 72 72 00 00 63 72 72 00 49 72 72 49 72 72 72 72 72 72 72 49 72 72 72 72 72 49 00 63 49 49 72 f1 00 63 08 00 63 72 72 72 72 08 00 63 08 00 08 00 08 00 63 72 72 72 72 08 00 63 72 00 63 72 08 00 63 72 08 08 08 08 00 63 00 08 00 63 72 72 72 72 72 72 72 72 08 00 63 08 00 49 00 08 00 08 00 08 00 08 00 08 00 08 00 08 00 00 08 00 08 00 08 00 08 00 08 00 08 00 08 00 08 00 08 00 08 00 08 00 08 00 08 00 00 08 00 00 08 00 00 00 00 08 00 08 00 00 08 00 00 08 00 08 00 08 00 00 ff 00 49 00 49 72 72 72 00 49 72 72 72 72 00 00 00 49 72 72 72 72 72 72 72 72 00 49 72 00 49 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 00 49 72 00 49 00 49 72 72 72 00 49 72 72 00 49 72 00 00 08 0d 0d 0d 0d 0d 0d 00 00 00 08 0d 0d 00 08 00 08 00 00 00 08 0d 0d 00 00 08 0d 0d 0d 0d 0d 00 00 00 08 0d 0d 0d 0d 0d 0d 00 08 00 08 0d 0d 0d 0d 0d 0d 0d 0d 0d 0d 0d 00 00 00 00 00 00 08 0d 0d 0d 0d 0d 0d 00 00 08 0d 0d 00 00 08 0d 0d 0d 0d 00 08 0d 0d 0d 0d 0d 0d 0d 0d 0d 0d 0d 00 00 08 00 08 00 00 00 00 00 00 00 08 0d 0d 00 00 00 08 0d 0d 0d 00 08 0d 0d 00 08 0d 00 00 28 72 72 72 00 28 72 72 72 00 28 72 72 00 00 00 28 00 28 72 72 72 00 28 72 72 00 28 00 00 00 28 72 72 72 72 00 28 72 72 00 28 72 72 72 72 72 00 28 00 28 00 00 00 28 00 28 72 00 00 28 00 00 28 72 72 72 72 72 00 28 72 72 00 28 72 72 00 28 72 72 72 72 00 28 72 72 72 72 00 28 72 00 28 72 72 00 00 28 72 72 72 00 28 72 00 28 72 72 72 72 00 28 72 00 28 72 72 72 00 28 72 72 72 00 28 72 00 00 00 00 28 72 72 72 00 28 72 72 72 72 72 72 72 72 00 28 72 00 28 00 28 72 72 72 72 72 72 72 72 72 72 72 72 00 00 28 00 28 72 72 72 72 72 72 72 00 28 72 72 00 28 72 72 00 28 72 00 28 72 00 00 00 00 28 00 28 72 72 00 28 72 72 72 72 00 28 00 28 00 00 00 28 00 28 00 00 28 72 72 00 28 00 00 28 72 00 28 72 72 72 00 28 72 72 72 72 72 72 00 28 72 72 72 00 28 72 72 00 28 72 00 49 00 49 00 49 72 72 00 49 72 00 49 00 00 49 00 49 72 72 00 49 72 00 49 72 72 72 72 72 72 00 49 72 72 72 72 72 72 72 00 49 72 00 49 00 49 72 72 72 00 00 00 49 72 72 00 00 49 00 49 72 00 49 ff 49 49 72 49 00 49 00 49 72 72 72 72 72 72 72 72 00 00 00 49 72 72 72 49 72 72 72 72 72 72 00 00 49 72 72 72 72 00 49 49 49 72 72 72 72 72 72 72 72 00 49 00 49 49 72 72 49 00 49 49 ff 49 72 72 72 72 49 72 72 49 72 72 72 72 72 72 72 49 72 72 00 49 72 72 72 49 49 00 49 72 00 00 49 72 72 72 72 72 72 00 49 00 49 49 72 72 72 00 49 72 72 00 49 72 72 49 49 49 72 72 00 49 08 0b 49 49 49 00 49 08 0b 49 49 08 0b 0b 00 49 08 0b 49 08 0b 0b 0b 49 00 49 08 49 08 00 49
*/
