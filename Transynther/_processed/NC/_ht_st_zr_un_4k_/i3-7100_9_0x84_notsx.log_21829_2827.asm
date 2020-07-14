.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xfba9, %rsi
lea addresses_normal_ht+0x104dd, %rdi
nop
xor $8491, %r12
mov $33, %rcx
rep movsb
and %r11, %r11
lea addresses_D_ht+0x2fa9, %rsi
lea addresses_UC_ht+0x1d329, %rdi
nop
xor %r12, %r12
mov $2, %rcx
rep movsb
nop
add %r12, %r12
lea addresses_WT_ht+0x110ad, %rsi
lea addresses_A_ht+0xfc73, %rdi
nop
add %r9, %r9
mov $103, %rcx
rep movsl
nop
nop
cmp $1529, %rcx
lea addresses_UC_ht+0x7aa9, %rsi
and $3847, %rbp
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x8fa9, %rsi
lea addresses_WT_ht+0x1cbea, %rdi
nop
xor $20318, %rbp
mov $12, %rcx
rep movsw
nop
nop
xor %r11, %r11
lea addresses_D_ht+0x66f, %r12
nop
cmp %rcx, %rcx
and $0xffffffffffffffc0, %r12
movaps (%r12), %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x1bb29, %rsi
lea addresses_D_ht+0x101a9, %rdi
nop
nop
nop
nop
add $49472, %r9
mov $118, %rcx
rep movsw
nop
nop
nop
sub $42590, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rcx
push %rdi

// Load
lea addresses_US+0x13fbb, %r10
add %r8, %r8
mov (%r10), %r9w
nop
nop
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_WC+0xeba9, %r9
nop
xor %rdi, %rdi
movb $0x51, (%r9)
nop
nop
cmp %r9, %r9

// Load
lea addresses_WC+0x237d, %rcx
and %r8, %r8
mov (%rcx), %r10w
cmp %r10, %r10

// Store
lea addresses_US+0x18829, %rdi
nop
nop
nop
nop
nop
sub %r10, %r10
movl $0x51525354, (%rdi)
sub $43252, %rdi

// Faulty Load
mov $0x7ff8fa0000000ba9, %r13
nop
nop
nop
nop
nop
sub %r10, %r10
mov (%r13), %r15
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'e6': 24, '1a': 17, '54': 17, '1e': 20, 'd8': 16, '1c': 10, 'd4': 19, '80': 23, '46': 21, '8a': 15, 'c4': 13, '0e': 22, '32': 9, 'dc': 18, '0a': 21, '5a': 9, 'e2': 13, '68': 17, '04': 25, '16': 24, '9c': 14, 'bc': 18, 'ae': 17, 'fe': 17, 'ee': 17, '5e': 13, '28': 16, 'f2': 7, '22': 10, '14': 17, '98': 19, 'a6': 15, '18': 24, '94': 11, '62': 12, '6e': 21, 'ea': 18, '60': 20, 'a2': 12, 'f0': 20, '51': 19222, '82': 10, '12': 18, 'ac': 15, '2e': 15, 'de': 16, '38': 14, '34': 11, 'd2': 9, 'b4': 14, '4e': 16, 'd6': 9, '9a': 9, '5c': 26, 'da': 19, '2a': 17, 'ca': 14, 'ba': 19, 'a8': 19, 'b8': 12, '48': 16, 'fa': 14, 'b0': 15, '2c': 18, 'ec': 11, 'f8': 16, 'e4': 18, '9e': 14, '44': 14, 'cc': 17, '66': 16, '0c': 17, '08': 13, '3c': 14, '24': 19, '36': 13, '72': 9, '4a': 14, 'ce': 12, '58': 14, '3e': 10, '78': 22, 'c2': 12, 'b2': 15, '26': 18, '74': 13, '50': 13, '76': 27, '30': 11, '3a': 13, 'be': 19, '90': 16, '88': 15, '8e': 11, '7e': 17, '6c': 25, '40': 17, '7a': 20, 'f4': 14, '52': 11, '6a': 19, 'fc': 14, 'e0': 14, '42': 4, 'f6': 12, '02': 19, 'd0': 16, '92': 10, 'e8': 10, '10': 18, 'c0': 12, 'c6': 14, '7c': 17, '96': 17, 'aa': 19, '4c': 18, 'c8': 9, '84': 14, '06': 14, '20': 17, '8c': 18, 'b6': 12, 'a4': 16, '86': 14, '70': 16, '56': 16, '00': 636, 'a0': 13, '64': 13}
52 c2 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 50 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 ce 51 51 51 51 51 51 51 51 51 51 e4 51 51 51 51 51 72 51 51 51 70 51 51 51 51 26 51 8e 51 51 51 51 51 51 51 51 d2 51 51 51 51 51 2a 51 51 51 51 51 51 51 51 51 51 88 51 51 51 51 51 51 51 04 51 4e 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 d4 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 28 51 51 51 51 51 51 51 51 51 51 94 00 51 51 51 51 51 51 74 51 00 51 51 51 51 51 51 51 51 51 6c 51 0e 70 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 d0 51 51 68 51 51 51 51 51 51 51 5e 76 00 51 10 51 00 51 51 51 51 51 51 5e 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 1a 51 51 51 00 51 51 51 51 51 68 00 51 51 51 51 51 51 51 04 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 9e 51 51 51 51 90 00 12 00 51 51 51 51 51 51 51 51 51 51 51 51 51 96 51 51 51 51 51 51 51 51 51 f8 51 51 51 51 51 fc 51 51 51 51 51 51 51 51 fe 51 51 51 51 51 51 00 51 51 51 51 51 51 51 02 51 c4 51 51 51 51 51 51 51 00 51 51 51 2a 51 51 51 51 51 51 51 51 51 51 51 8c ba 68 51 51 51 51 51 00 51 51 51 51 3e 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 bc 51 30 51 51 51 51 51 58 51 30 51 51 51 b6 00 51 51 51 51 51 51 51 51 51 51 00 51 51 50 51 38 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 dc 51 44 51 51 08 51 51 51 51 48 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 1a 51 51 51 51 51 b0 51 6a 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 c2 51 51 51 51 51 51 51 51 51 51 51 90 00 51 51 51 00 51 51 51 51 51 51 51 04 ae 51 51 51 51 00 b8 51 51 51 51 51 51 51 dc 00 51 51 51 51 51 ba 51 00 51 51 98 00 51 51 00 51 70 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 7c 51 ca 51 51 51 51 51 51 51 51 51 51 96 51 51 51 51 51 51 51 b2 51 51 00 51 51 51 51 51 51 51 51 51 51 b2 51 3a 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 02 51 51 51 51 51 51 51 51 51 2c 51 51 51 0a 51 51 51 51 51 c0 00 51 51 51 51 51 51 30 51 51 51 1c 51 51 51 51 51 51 d4 51 51 51 51 51 51 51 3c 5e 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 ac 51 51 51 51 51 00 51 51 51 51 51 00 51 c8 51 02 51 51 51 51 51 46 51 70 51 51 d0 51 51 51 51 51 51 51 51 51 51 51 51 51 f2 51 51 51 51 94 51 51 51 51 51 51 51 51 51 51 51 51 51 51 cc 51 51 51 51 51 51 51 fc 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 e6 26 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
