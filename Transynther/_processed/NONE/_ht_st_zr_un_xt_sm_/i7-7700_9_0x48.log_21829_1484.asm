.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x92e2, %rcx
nop
dec %r14
mov (%rcx), %r9d
sub %r15, %r15
lea addresses_normal_ht+0x199b2, %rdx
nop
nop
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %r8
movq %r8, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_normal_ht+0x3b62, %r9
nop
nop
nop
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r9)
nop
nop
nop
xor $64219, %r8
lea addresses_WT_ht+0x15232, %r14
nop
add %r8, %r8
movb (%r14), %r9b
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x4c32, %rsi
lea addresses_UC_ht+0x6e34, %rdi
and %r14, %r14
mov $22, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r12
lea addresses_WT_ht+0x1c632, %rsi
lea addresses_normal_ht+0xd832, %rdi
nop
nop
nop
xor %r15, %r15
mov $42, %rcx
rep movsb
nop
cmp %r14, %r14
lea addresses_D_ht+0x18ff2, %rsi
cmp %r14, %r14
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
nop
nop
nop
nop
nop
cmp $49108, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rcx
push %rdx

// Store
lea addresses_WT+0x12232, %r11
nop
nop
nop
nop
nop
sub $35262, %rcx
movl $0x51525354, (%r11)
nop
nop
sub $41603, %rcx

// Store
lea addresses_D+0x3e6a, %r12
inc %r13
movw $0x5152, (%r12)
nop
nop
xor %r15, %r15

// Store
lea addresses_RW+0x65cb, %r15
nop
nop
nop
nop
nop
add %r13, %r13
movb $0x51, (%r15)
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_RW+0xa432, %rdx
nop
nop
and %r13, %r13
movw $0x5152, (%rdx)
cmp $8532, %rdx

// Store
lea addresses_D+0x1bb8b, %r15
clflush (%r15)
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %r13
movq %r13, (%r15)
nop
add %rcx, %rcx

// Store
lea addresses_UC+0x11e32, %rdx
xor $43918, %rcx
movl $0x51525354, (%rdx)
nop
inc %r13

// Faulty Load
lea addresses_WT+0x12232, %r10
and %r11, %r11
vmovups (%r10), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r15
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rdx
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 4, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'ef': 21, 'ae': 46, '3c': 90, '83': 23, '4e': 802, '9e': 913, 'af': 34, '44': 1, 'de': 847, 'bb': 2, 'bf': 36, '86': 121, '8d': 14, '92': 33, '70': 1, '74': 197, 'd1': 26, '35': 34, '1f': 119, 'a5': 75, 'd3': 115, '11': 23, '7d': 130, 'e4': 15, '8e': 2, '45': 143, '1e': 394, '61': 27, 'e7': 1, '09': 1, 'ca': 1, '59': 68, '4f': 395, '94': 102, 'a3': 26, 'f0': 33, '73': 100, '62': 116, '43': 1, '6c': 90, '80': 218, '1a': 8, '0b': 64, '52': 51, '29': 31, '50': 68, '9b': 166, 'd2': 75, 'd8': 20, 'c9': 105, 'b8': 11, 'a1': 10, '47': 127, '13': 1, '7e': 1, '8a': 26, '5e': 538, '48': 6, 'e9': 179, '3d': 189, '2c': 1, '77': 261, '88': 54, 'f9': 154, 'a7': 35, '57': 1, '5b': 88, 'cc': 117, '03': 1622, 'e2': 1, 'b9': 1, 'e5': 837, '72': 1797, '36': 104, '20': 17, '3e': 34, 'b4': 68, 'a6': 200, 'fa': 225, '60': 2, '53': 115, '89': 98, '00': 3800, 'dd': 501, 'c2': 38, '51': 27, 'ea': 125, 'ec': 2, '54': 33, '58': 97, '27': 2, 'e6': 295, '93': 1, '33': 84, 'fb': 68, '07': 1, '95': 49, '71': 133, '32': 1, 'b6': 71, '55': 39, '99': 217, 'c1': 75, 'f2': 68, '0a': 77, 'aa': 26, '3b': 1728, 'c6': 4, '8b': 149, '85': 47, '0e': 148, '91': 146, 'df': 14, '6d': 1, '26': 1, '01': 1, 'cb': 119, '06': 119, '81': 118, '17': 43, '34': 25, '1b': 178, '28': 56, '5a': 158}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 3b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 e4 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 72 00 72 72 5e 72 72 72 72 5e 5e 72 5e 5e 5e 72 5e 5e 5e 72 72 72 5e 5e 72 72 72 5e 5e 72 5e 72 5e 72 72 72 5e 5e 72 5e 5e 5e 72 5e 5e 5e 5e 72 5e 5e 5e 72 00 72 de 72 de de 72 72 72 de 72 de de de 72 de de 72 de 72 de 72 72 de de de de de de 72 de de 72 de 72 72 de de de 72 de 72 de de de de 72 72 de de de 72 de de de de de de de de de 72 de 72 72 de de de de de de 72 de de de de 72 de de de de de de 72 de de de de de de 72 de de de de de de 72 de de de de 72 de de de de 72 de 72 72 de de 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 9e 5e 5e 5e 9e 5e 9e 9e 9e 9e 9e 5e 9e 5e 9e 9e 9e 9e 9e 5e 5e 5e 9e 5e 9e 5e 9e 9e 9e 9e 9e 9e 9e 9e 5e 9e 9e 9e 9e 9e 9e 9e 9e 9e 5e 9e 9e 9e 9e 9e 9e 5e 9e 5e 5e 5e 9e 9e 5e 9e 5e 9e 5e 9e 9e 9e 5e 5e 5e 5e 9e 9e 9e 5e 9e 9e 5e 9e 9e 9e 9e 5e 5e 5e 5e 9e 9e 9e 9e 5e 9e 5e 9e 9e 9e 5e 5e 5e 5e 5e 5e 9e 5e 9e 9e 5e 5e 5e de de 00 de 00 de 00 de de 00 de 00 de 00 de de 00 de 00 de 00 de 00 de 00 de 00 de 00 de 00 de 00 de 00 de de 00 de 00 de 00 de 00 de 00 de 00 de 00 de 00 de 00 de 00 de 00 de 00 de de de 03 de de 03 de 03 de de 03 de de 03 de 03 de de 03 de 03 de 03 de 03 de 03 de 03 de 03 de 03 de 03 de 03 de 03 de 03 de 03 de de 03 de 03 de 03 de de de 03 de 03 de 03 de de de 5e 5e de de 5e 5e de 5e de 5e 5e de 5e 5e 5e de 5e 5e de 5e 5e de 5e 5e de 5e 5e de 5e de 5e 5e de 5e 5e 5e 5e de 5e 5e 5e 5e 5e de 5e 5e de 5e 5e 5e de 5e de 5e 5e 5e de de de 5e 5e 5e 5e 5e de 5e 5e de 5e 5e de 5e 5e 5e de 5e 5e de 5e 5e de de 5e de 5e 5e 5e de 5e 5e de 5e 5e de de 5e de 5e 5e 5e 5e de 5e de 5e 5e de 5e 5e 5e de 5e 5e de 00 72 de de 9e 9e 9e de 9e de de de de 9e 9e 9e 9e 9e de 9e 9e 9e 9e de de de de 9e 9e 9e 9e 9e de 9e 9e de 9e 9e de 9e 9e de 9e 9e de 9e 9e 9e 9e de 9e 9e 9e de 9e 9e de 03 72 00 72 00 72 de 00 72 00 de 00 72 de de 00 de 00 72 00 72 de 00 72 00 de 00 72 de 00 72 00 72 00 de 00 72 de de 00 72 00 de 00 72 00 de 00 72 de 00 72 00 72 00 72 de 00 72 00 5e 5e 5e 5e 00 72 5e 5e 5e 00 72 00 5e 00 72 5e 5e 00 5e 00 72 5e 00 72 5e 00 5e 5e 5e 00 72 5e 00 72 00 5e 5e 00 72 5e 00 72 00 5e 5e 5e 5e 5e 00 72 5e 72 72 72 00 72 00 72 00 03 72 72 72 72 72 72 00 72 00 03 72 72 00 03 72 72 00 03 72 00 03 72 00 72 00 03 72 00 03 72 72 00 72 72 00 03 72 00 72 72 72 72 00 03 72 5e 00 72 00 03 72 72 00
*/
