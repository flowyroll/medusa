.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x449b, %rsi
nop
nop
and $61804, %r15
mov $0x6162636465666768, %rbx
movq %rbx, (%rsi)
cmp %r11, %r11
lea addresses_D_ht+0x13b9b, %rcx
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $0x6162636465666768, %r9
movq %r9, %xmm6
vmovups %ymm6, (%rcx)
add $12530, %rcx
lea addresses_D_ht+0x989b, %rsi
lea addresses_D_ht+0x789b, %rdi
nop
nop
nop
inc %r10
mov $125, %rcx
rep movsw
nop
nop
nop
and %r9, %r9
lea addresses_A_ht+0x1479b, %rbx
nop
xor %rdi, %rdi
and $0xffffffffffffffc0, %rbx
vmovntdqa (%rbx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0xb31b, %rsi
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
nop
nop
dec %r10
lea addresses_UC_ht+0x16b4b, %rsi
lea addresses_A_ht+0x11b12, %rdi
nop
and %rbx, %rbx
mov $25, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x929b, %r9
nop
nop
nop
nop
nop
cmp $29680, %rdi
mov $0x6162636465666768, %r10
movq %r10, (%r9)
nop
nop
nop
nop
sub $32890, %r10
lea addresses_normal_ht+0x1969b, %r11
nop
nop
nop
nop
nop
xor %rbx, %rbx
movb (%r11), %r10b
nop
nop
nop
xor %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rdi
push %rdx

// Faulty Load
mov $0x5dd5ac000000009b, %r8
nop
cmp %r14, %r14
mov (%r8), %dx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 10, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 9}}
{'ff': 21, '26': 47, 'b2': 15, 'c3': 32, '36': 21, '95': 92, 'ef': 27, '17': 28, '42': 17, '9d': 99, '86': 99, 'a6': 87, '98': 98, 'd2': 45, '1c': 59, 'f2': 15, '44': 29, '1f': 59, 'ca': 19, 'ab': 50, '39': 33, 'c8': 10, 'c9': 10, 'ba': 67, 'de': 16, '12': 69, 'a5': 97, 'f1': 22, '7f': 91, 'd3': 29, 'c2': 9, 'b9': 22, 'd9': 23, 'eb': 41, '3f': 19, 'c6': 37, '21': 39, '43': 22, 'aa': 23, '73': 98, '76': 96, 'b6': 30, '9e': 101, '0e': 18, '77': 96, 'cf': 9, 'bd': 16, 'e5': 10, '9c': 98, 'e8': 37, '2f': 55, 'f7': 35, '81': 104, 'b7': 10, 'fe': 21, '28': 49, '85': 102, 'fa': 49, '32': 23, '2d': 51, '38': 53, 'dc': 15, '23': 65, '05': 40, 'ee': 22, '0d': 14, '9b': 103, 'ea': 30, 'bc': 33, '74': 98, 'fb': 19, 'd8': 26, '7c': 100, '97': 97, '9f': 97, 'a1': 101, 'e2': 35, '27': 18, '8b': 99, '1b': 58, '03': 46, '1e': 26, 'bf': 20, '15': 9, '7a': 96, '33': 24, '94': 95, 'ac': 19, '07': 24, '2e': 29, '2a': 49, '18': 20, 'e7': 18, 'db': 38, 'cd': 14, '90': 95, '22': 52, '00': 375, '1a': 19, 'a0': 96, 'fd': 21, 'd7': 33, '08': 44, 'ae': 30, '0f': 34, '75': 96, 'f3': 34, 'af': 39, 'ec': 30, 'c7': 11, '84': 99, 'd5': 19, 'ad': 57, 'a2': 98, '8d': 98, 'b0': 30, 'a4': 95, '45': 60, '82': 101, '31': 55, '11': 28, '99': 98, '35': 27, '3d': 17, '13': 61, '29': 34, 'e3': 32, 'f8': 18, '72': 98, 'e4': 5, 'b8': 9, '71': 4, '96': 100, '46': 11, 'ce': 5, 'd4': 32, 'c1': 16, 'a3': 97, '87': 97, 'e0': 30, '83': 97, '3b': 63, '06': 59, '1d': 63, '01': 23, '14': 24, 'e9': 11, '02': 48, 'e6': 13, 'bb': 56, '2c': 33, '34': 44, 'f4': 19, 'f9': 40, '0b': 13, '25': 22, '41': 8, 'b1': 32, '3a': 38, '24': 32, 'c4': 12, '78': 100, '19': 11507, '30': 67, 'f6': 45, '3e': 55, 'df': 21, 'be': 32, '80': 98, 'a7': 8, 'b4': 20, '93': 96, 'd1': 46, '20': 17, 'cb': 14, '92': 97, 'b3': 29, 'd0': 23, '79': 95, 'f5': 17, '04': 28, 'cc': 6, '91': 94, 'fc': 39, '0c': 21, '3c': 91, '37': 5, '16': 40, '0a': 31, '10': 51, '7d': 100, '40': 25, 'a8': 50, '9a': 101, 'd6': 31, 'b5': 22, '8e': 96, 'ed': 16, '8a': 95, '7b': 96, 'c0': 20, 'da': 13, '7e': 99, 'e1': 28, '88': 99, '8c': 99, '2b': 24, '89': 96, 'a9': 28, 'dd': 21, '8f': 100, '09': 22, 'f0': 31, 'c5': 38}
71 00 71 71 71 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 19 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 19 72 72 72 72 72 72 72 72 00 19 19 19 72 72 72 72 72 19 72 72 72 72 72 72 19 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 73 73 73 73 19 73 73 73 00 73 73 73 73 73 73 73 73 73 00 73 73 19 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 19 73 73 19 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 19 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 73 74 74 74 74 19 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 00 19 74 74 74 74 74 74 74 74 74 74 74 74 19 74 74 74 74 74 74 74 74 74 74 19 74 74 74 74 19 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 74 19 74 74 74 74 75 75 75 75 75 75 75 75 75 75 75 75 19 75 75 75 19 75 75 75 00 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 75 19 75 75 75 75 75 75 75 75 75 75 75 75 19 75 75 19 75 75 75 75 75 75 75 75 75 75 19 75 75 75 75 75 75 75 75 19 75 75 75 75 75 75 75 75 75 75 75 75 00 75 75 76 76 76 76 76 76 19 76 76 19 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 19 76 76 76 76 76 76 19 76 19 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 76 00 76 76 00 19 76 76 76 76 76 76 76 19 76 76 76 76 76 76 76 76 76 77 77 19 77 77 77 77 19 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 19 77 77 77 77 77 77 19 77 19 77 77 77 77 00 77 77 77 77 77 77 19 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 77 78 78 19 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 19 78 78 78 78 78 78 78 19 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 19 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 19 78 19 78 78 78 78 78 78 78 78 78 78 78 78 78 78 79 79 79 79 79 79 19 79 79 79 79 79 79 79 79 79 79 79 79 79 19 79 79 79 79 19 79 79 79 79 79 79 79 19 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 19 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 19 79 79 79 79 79 79 79 19 79 79 79 79 79 79 79 79 79 79 79 79 79 79 79 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 19 7a 7a 7a 7a 7a 7a 7a 7a 7a 19 7a 7a 7a 7a 19 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 19 7a 19 7a 7a 7a 7a 7a 7a 19 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 19 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 19 7a 7a 7a 7a 7a 7a 7b 7b 7b 7b 19 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 19 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 7b 19 7b 7b 7b 7b
*/
