.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rdi
lea addresses_WC_ht+0xf385, %r8
nop
nop
nop
nop
nop
add $50461, %r11
mov (%r8), %r12w
nop
add %r15, %r15
lea addresses_WC_ht+0xc485, %r10
nop
nop
and $40179, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r10)
nop
nop
cmp $8471, %r15
lea addresses_WC_ht+0x10d45, %r15
nop
nop
inc %r10
mov (%r15), %r12w
nop
xor $27668, %r11
lea addresses_normal_ht+0x9a85, %r12
nop
nop
nop
nop
cmp $9166, %r8
movups (%r12), %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
nop
nop
dec %r11
lea addresses_WT_ht+0xe085, %r12
and $31581, %r10
mov (%r12), %r8w
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x1ce85, %r10
nop
nop
and %r8, %r8
movups (%r10), %xmm2
vpextrq $1, %xmm2, %r11
xor $63044, %r12
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rdx

// Faulty Load
mov $0x7776e10000000085, %rbp
nop
add $56690, %r14
vmovups (%rbp), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r9
lea oracles, %r15
and $0xff, %r9
shlq $12, %r9
mov (%r15,%r9,1), %r9
pop %rdx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'ef': 75, '63': 79, '1f': 78, '9e': 7, 'b3': 77, '94': 3, '44': 4, 'd9': 3, 'bf': 8, '6b': 8, '83': 81, 'cf': 75, '25': 80, '8d': 83, '2d': 1, '02': 77, '11': 3, 'f1': 3, '5f': 1, '7d': 76, '87': 82, 'eb': 155, '1e': 77, '04': 2, '27': 2, '13': 76, '09': 78, '4d': 8567, '64': 71, 'f6': 43, 'ca': 76, '23': 151, 'ab': 3, '93': 76, 'f5': 4, '0b': 2, '3f': 84, '4a': 5, '76': 3, 'af': 153, '38': 76, 'd2': 74, '2b': 5, 'b5': 76, 'da': 75, 'a1': 78, '2e': 74, '49': 4, '2c': 3, 'b2': 75, 'f3': 78, '77': 77, '88': 2, '0d': 80, '5c': 4, 'c4': 74, '9b': 155, 'a7': 2, '57': 75, 'bc': 3, '12': 74, 'e2': 4, '07': 71, 'e9': 4, '65': 76, '14': 5, '7b': 78, '40': 74, '7c': 75, 'fb': 79, '08': 75, '62': 75, '51': 78, 'ea': 72, 'ad': 1, 'ec': 3, '21': 78, 'bd': 3, '33': 7, '22': 3, 'e6': 75, '71': 152, 'fd': 7, 'e1': 4, 'd7': 153, '7a': 77, 'c1': 79, 'f2': 43, '0a': 4, '3b': 85, 'b1': 81, 'c6': 77, 'd6': 77, '9d': 151, '3d': 3, 'a4': 2, '0c': 5, 'df': 76, '56': 74, '9c': 71, '81': 7, '41': 76, '17': 82, '9a': 78, '16': 77, '34': 77, 'aa': 75, '2a': 76, 'ae': 5, '4e': 5, '75': 2, '5b': 75, 'de': 79, '37': 153, '86': 3, '82': 70, '1d': 72, '92': 76, 'c7': 5, '70': 1, 'd1': 73, '8f': 77, 'a5': 74, 'd3': 80, '18': 3, '66': 73, 'a8': 75, 'e8': 76, '8e': 75, 'db': 78, '45': 77, 'e7': 153, '3a': 78, 'e0': 77, '97': 3, '4b': 152, '4c': 1509, '4f': 76, '73': 149, '43': 78, '15': 7, '6f': 72, '29': 76, '50': 77, '00': 2, 'c9': 74, '8c': 6, '6d': 74, 'd5': 152, '42': 76, 'be': 6, 'cc': 3, 'ff': 80, 'f7': 6, 'c3': 6, '72': 77, 'f9': 6, '79': 81, 'ed': 80, '24': 77, '03': 7, '19': 3, 'f4': 42, 'c5': 153, 'b9': 4, '35': 79, '36': 73, '20': 74, 'dc': 3, 'a3': 1, 'bb': 3, '6e': 75, '89': 78, 'a6': 71, 'ba': 77, '67': 74, '30': 5, 'cb': 5, '68': 74, '58': 74, 'd0': 73, '98': 76, '2f': 72, '59': 2, '0f': 75, '5d': 154, '6c': 1, 'fc': 51, 'b6': 73, '55': 1, '99': 152, 'b0': 4, 'f8': 48, 'e5': 71, 'dd': 74, '78': 76, '61': 5, '1a': 5, '85': 80, '91': 5, '7e': 2, 'c8': 71, 'b4': 3, '01': 147, 'd4': 78, '90': 78, 'c0': 74, '28': 74, '9f': 74, '84': 4, '39': 6, '0e': 7, '60': 72, 'fe': 41, '5a': 4}
00 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d ab 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d ab 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d ab 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 04 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 04 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 4d 5d 5d 5d 5d 5d 5d 5d 5d 5d 4d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 4d 5d 5d 5d 5d 5d 5d 5d 5d 5d 5d 4d b6 b6 b6 b6 b6 b6 b6 b6 b6 4d b6 4d b6 b6 b6 b6 b6 b6 b6 b6 4d b6 4d b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 b6 4d b6 b6 b6 b6 b6 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 0f 4d 4d 4d 4d 4d 4d 4d 0f 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 68 68 68 68 68 68 68 68 68 68 68 68 68 68 68 68 68 68 68 68 68 68 4d 68 68 68 68 68 68 68 68 68 68 68 68 4d 68 4d 68 68 68 68 68 68 4d 68 68 68 68 68 68 68 68 68 68 68 68 68 68 68 68 68 68 68 4d 68 4d 68 68 68 68 68 68 68 68 68 68 68 68 68 4c c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 c1 4c c1 1a 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 1a 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 1a 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 1a 4d 4d 4d 4d 4d 4d 4d 4d 4d 1a 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 73 4d 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 4d 73 73 73 73 73 73 73 73 73 4d 73 73 73 73 73 73 73 73 73 4d 73 73 73 73 73 73 73 73 73 73 4d 73 73 73 73 73 73 73 73 73 73 73 73 73 4d 73 73 4d 73 73 73 73 73 73 73 73 4d cc 4d 4d 4d 4d 4d 4d 4d 4d 4d cc 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d cc 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 25 25 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 25 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 25 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 7e 4d 4d 7e 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d 4d d7 d7 d7 d7 d7 d7 d7 d7 d7 d7 d7 d7 d7 d7 d7 d7 d7 d7 d7 d7 d7 4c d7 d7 d7 d7 d7 d7 d7 d7 d7 d7 d7 d7 d7 d7 d7 d7 d7 d7 4c d7 d7 d7 d7 d7 d7
*/
