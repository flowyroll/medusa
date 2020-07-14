.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xb902, %r8
clflush (%r8)
nop
and $16231, %r13
mov (%r8), %rbx
nop
nop
nop
nop
nop
sub $65451, %rsi
lea addresses_normal_ht+0x2402, %r13
nop
nop
nop
nop
and %rbp, %rbp
movw $0x6162, (%r13)
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x7e62, %rsi
lea addresses_WT_ht+0x1782, %rdi
nop
nop
nop
sub %rbp, %rbp
mov $48, %rcx
rep movsb
nop
and $45457, %rcx
lea addresses_WT_ht+0x6482, %rsi
clflush (%rsi)
nop
nop
cmp $60003, %r13
movb (%rsi), %bl
nop
sub $16697, %rbp
lea addresses_UC_ht+0xbbc2, %r8
cmp %r13, %r13
movb (%r8), %cl
sub $60530, %rbx
lea addresses_WT_ht+0x18788, %rbp
clflush (%rbp)
nop
nop
nop
cmp %rdi, %rdi
movups (%rbp), %xmm1
vpextrq $1, %xmm1, %r8
inc %rcx
lea addresses_normal_ht+0x1a6cc, %rbx
nop
nop
nop
sub $63568, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
and $0xffffffffffffffc0, %rbx
vmovaps %ymm0, (%rbx)
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x4382, %r8
nop
nop
nop
and %rsi, %rsi
movb (%r8), %r13b
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x4c32, %rbx
nop
cmp $59959, %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
nop
nop
sub $53837, %rbx
lea addresses_UC_ht+0xe182, %rbp
nop
nop
nop
inc %r8
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
and $26837, %rbp
lea addresses_WT_ht+0x6272, %r15
nop
and %rsi, %rsi
movl $0x61626364, (%r15)
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x3f82, %rsi
lea addresses_A_ht+0x1b182, %rdi
and %rbx, %rbx
mov $39, %rcx
rep movsb
nop
nop
nop
inc %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rax
push %rbx
push %rdx

// Load
lea addresses_RW+0x4782, %rax
nop
nop
nop
nop
nop
add %rdx, %rdx
movups (%rax), %xmm6
vpextrq $0, %xmm6, %r15
nop
nop
add %rdx, %rdx

// Store
lea addresses_PSE+0x8c32, %r14
nop
nop
nop
add $61537, %rbx
movb $0x51, (%r14)
nop
nop
nop
and %r14, %r14

// Faulty Load
mov $0x159d790000000382, %rdx
nop
nop
nop
inc %rbx
vmovups (%rdx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r9
lea oracles, %r15
and $0xff, %r9
shlq $12, %r9
mov (%r15,%r9,1), %r9
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 7, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'ef': 148, 'ae': 74, '3c': 153, '1f': 77, '9e': 3, 'b3': 8, '6c': 75, '94': 150, '67': 5, '7f': 2, '44': 13, 'de': 140, '86': 19, 'a0': 75, '6b': 7, '92': 9, 'c7': 5, '70': 80, '41': 76, '25': 11, 'e0': 143, '8d': 75, 'd3': 4, '31': 4, '6a': 144, '66': 3, '5f': 15, '7d': 1, 'e4': 2, 'e8': 6, '87': 4, '45': 76, '5a': 2, 'c2': 19, 'e7': 4, '09': 4, '3a': 79, '28': 73, 'be': 2, 'ca': 71, '4c': 3, 'f6': 5, 'a3': 2, '23': 155, 'a1': 75, 'ab': 6, '43': 77, '15': 75, '80': 145, 'f5': 156, '0b': 377, '3f': 4, '29': 4, '50': 1, 'af': 5, 'ed': 9, '05': 8, 'cf': 3, 'e9': 155, 'c9': 9, '8c': 1, '56': 11, 'b8': 145, '35': 3, 'd7': 7, '13': 1, '2e': 10, 'da': 7, '48': 155, '1d': 3, '19': 74, '2c': 73, '77': 378, '88': 6, '5e': 81, 'f9': 72, 'fb': 8, '57': 1400, '33': 374, 'bc': 9, '2d': 5, '12': 141, '24': 152, 'ce': 77, '7a': 2, '20': 2, 'c5': 150, 'b9': 5, 'd5': 229, '65': 5, '72': 1, 'ac': 2, '36': 151, '7b': 160, '3e': 1, 'b4': 9, '81': 153, 'fa': 4, 'c3': 75, '6e': 3, 'fc': 73, '00': 5, 'a6': 74, 'ba': 9, '91': 4, '9f': 306, 'ec': 5, '69': 376, '54': 7, '58': 11652, '53': 76, 'bd': 7, '4d': 6, 'e1': 1, '22': 1, '93': 7, '59': 2, '0f': 3, '07': 152, 'ee': 76, 'd8': 4, 'fd': 10, '08': 4, '55': 4, 'a2': 6, '99': 2, 'd6': 5, 'd1': 4, 'f2': 8, 'd4': 5, '3b': 3, 'c4': 12, 'b1': 85, 'c6': 2, 'c1': 75, '9d': 76, '3d': 151, '2b': 8, '89': 150, 'e3': 152, 'df': 78, '6d': 229, '26': 9, '90': 214, 'c0': 4, '06': 152, '46': 148, '96': 16, '02': 1, '17': 6, '0e': 9, '76': 71, '1b': 2, '1c': 2}
06 00 06 06 00 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 58 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 58 58 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 58 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 58 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 58 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 09 58 58 58 58 58 58 09 58 58 58 58 58 58 58 58 58 58 58 09 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 09 58 58 fc 57 fc fc fc fc fc 57 fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc 57 fc fc fc fc fc fc fc fc fc fc fc 57 fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc 58 ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef 58 ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef 58 ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef ef 58 d5 d5 d5 58 d5 d5 d5 d5 d5 d5 58 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 58 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 58 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5 d5
*/
