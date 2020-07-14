.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xad, %rsi
lea addresses_normal_ht+0x5115, %rdi
cmp %r14, %r14
mov $119, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $9297, %r14
lea addresses_A_ht+0xfead, %rsi
lea addresses_D_ht+0x582d, %rdi
clflush (%rdi)
nop
nop
nop
add $16141, %r13
mov $46, %rcx
rep movsb
nop
nop
cmp $32943, %rcx
lea addresses_WT_ht+0x1db2d, %rax
and $57903, %r14
movb (%rax), %r13b
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x7fad, %rsi
lea addresses_WC_ht+0x8a6d, %rdi
inc %rdx
mov $97, %rcx
rep movsl
nop
nop
xor $29886, %r14
lea addresses_A_ht+0x982d, %rsi
lea addresses_UC_ht+0x1e82d, %rdi
dec %r13
mov $56, %rcx
rep movsq
nop
sub $48065, %rsi
lea addresses_WT_ht+0x95dc, %rax
nop
nop
and $27341, %r14
movb $0x61, (%rax)
nop
cmp $58282, %r14
lea addresses_normal_ht+0x1b52d, %r13
nop
nop
nop
nop
nop
dec %rax
mov $0x6162636465666768, %rcx
movq %rcx, (%r13)
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0xfe2d, %rsi
clflush (%rsi)
add $270, %rdx
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
cmp $34355, %rdx
lea addresses_A_ht+0x1f4d, %rsi
lea addresses_A_ht+0x1982d, %rdi
clflush (%rsi)
nop
nop
nop
nop
inc %rdx
mov $117, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0x1342d, %r14
nop
nop
nop
cmp $50907, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm2
movups %xmm2, (%r14)
nop
nop
and %r13, %r13
lea addresses_WT_ht+0x1a22d, %r13
add $6243, %rdx
mov (%r13), %edi
nop
add $13988, %r14
lea addresses_UC_ht+0x1e5c7, %rsi
lea addresses_D_ht+0xb36d, %rdi
nop
dec %rbp
mov $100, %rcx
rep movsl
nop
nop
dec %rbp
lea addresses_WC_ht+0x141df, %rsi
nop
nop
nop
nop
nop
xor $24048, %rcx
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
dec %rcx
lea addresses_D_ht+0x8e30, %r13
nop
nop
nop
nop
nop
and %rdx, %rdx
movups (%r13), %xmm1
vpextrq $1, %xmm1, %rax
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x86dd, %rsi
nop
nop
nop
nop
nop
sub $10419, %rax
vmovups (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdx
nop
nop
nop
nop
xor $63470, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rax
push %rbp
push %rdx

// Store
lea addresses_A+0x1a02d, %rax
nop
nop
nop
nop
nop
sub $32917, %r11
movl $0x51525354, (%rax)
nop
nop
nop
sub %rbp, %rbp

// Load
mov $0x7ad, %r11
nop
nop
nop
sub %r8, %r8
mov (%r11), %eax
nop
and %rdx, %rdx

// Faulty Load
mov $0x67485d000000002d, %rdx
nop
nop
nop
and %r15, %r15
mov (%rdx), %r8
lea oracles, %rax
and $0xff, %r8
shlq $12, %r8
mov (%rax,%r8,1), %r8
pop %rdx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 10}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'e2': 25, '1c': 31, '96': 29, '1a': 25, 'cc': 37, '68': 20, '80': 23, 'a6': 33, 'f6': 29, '00': 497, 'c2': 20, 'ca': 31, '36': 28, '6a': 23, '14': 26, '3c': 32, '4e': 27, '62': 25, 'b4': 22, '50': 42, 'f4': 32, '04': 33, 'a8': 33, 'f2': 43, 'f8': 38, '08': 36, '1e': 21, '58': 29, 'c6': 22, '82': 28, '6e': 47, 'c0': 31, 'ce': 31, 'c8': 28, '4c': 50, 'b0': 27, '0a': 25, 'ea': 29, '18': 29, 'ae': 19, '54': 17484, 'ee': 38, '66': 28, 'fc': 40, 'da': 29, '34': 30, 'ac': 30, 'e0': 31, '26': 36, '9c': 27, '72': 30, '02': 35, 'a4': 21, 'a2': 28, 'ec': 28, '8e': 36, '98': 25, '94': 37, '42': 43, 'b2': 31, '20': 33, '10': 32, 'be': 32, '8a': 35, '74': 30, '7c': 23, '5e': 25, 'b6': 40, '8c': 36, 'd8': 24, 'a0': 30, 'd4': 31, '52': 22, 'de': 33, '2c': 28, '16': 30, 'bc': 21, '7e': 25, '92': 42, '32': 19, 'e8': 24, '2e': 36, '64': 39, '7a': 28, '3e': 30, 'ba': 26, '76': 35, '46': 30, '38': 29, '56': 32, '3a': 21, '0e': 30, '28': 36, '60': 33, 'dc': 29, 'b8': 29, '4a': 37, '48': 31, 'aa': 28, '90': 21, 'fe': 41, 'fa': 35, '88': 26, '6c': 25, '12': 31, '84': 28, '78': 33, 'd2': 35, 'e6': 34, 'e4': 31, '22': 40, '70': 26, '40': 25, '44': 29, '24': 33, '5a': 40, '2a': 33, '5c': 27, 'd0': 30, '06': 40, 'd6': 28, 'c4': 33, '0c': 34, '9a': 36, '30': 22, '86': 29, 'f0': 31, '9e': 36}
54 54 2e b8 54 54 54 54 54 54 54 54 54 be 54 54 54 54 54 de 7a 2e 54 54 54 54 54 40 00 54 54 54 54 40 1c fc 54 54 54 54 54 54 54 54 54 54 54 54 54 54 a8 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 86 54 b0 54 82 96 de 54 86 54 54 e6 54 54 f0 54 54 54 54 54 54 a0 54 54 54 54 54 ba 54 54 54 54 54 54 54 54 d0 30 54 42 54 ca 54 fc 54 42 54 54 54 ce 54 54 fe 54 d8 ec 54 54 ce 54 ba 54 da 42 54 54 54 04 e4 54 54 54 54 54 54 8c 28 54 e4 54 54 50 54 54 54 54 54 54 00 54 54 54 54 54 54 54 d4 54 54 54 54 54 54 54 54 6e 54 54 54 54 54 54 80 54 54 54 12 5e 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 d4 54 54 66 54 54 54 54 54 54 54 54 54 54 66 bc 54 54 a6 54 54 54 54 9e 54 54 54 54 26 54 54 54 54 54 cc 54 06 54 54 54 54 6c 00 00 02 54 54 54 54 54 54 54 54 54 92 54 54 54 54 54 54 3a 54 54 54 54 54 14 22 54 58 54 54 54 54 54 54 54 54 54 54 54 54 78 54 30 54 54 54 00 54 54 54 d8 54 54 50 54 94 54 54 54 54 54 54 e6 54 54 54 54 54 54 54 54 54 54 54 18 54 54 54 54 58 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 6e 54 54 e8 54 48 54 54 54 54 18 54 54 54 40 54 54 54 54 78 54 54 54 54 54 54 54 54 54 54 54 54 54 58 54 54 54 54 36 00 92 06 de 76 54 54 54 54 54 00 54 54 54 4a 74 54 54 54 54 54 54 54 24 54 54 54 54 54 54 54 54 54 4e 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 f8 54 54 54 54 be b4 54 54 54 54 54 54 54 54 ea 54 54 2e 54 2e 54 54 54 54 54 54 54 54 54 54 58 54 a0 54 54 54 54 54 64 4a 54 54 54 54 54 54 54 54 54 ba 54 54 c8 54 54 54 54 54 54 50 c0 54 54 54 54 54 54 54 54 54 54 10 54 54 54 26 54 54 54 54 50 f0 54 54 e2 54 54 72 54 54 54 54 54 b6 54 54 54 86 54 54 54 54 e2 54 54 20 54 54 54 54 54 54 12 54 54 54 54 54 54 54 54 2a 54 54 54 54 6e 54 d6 54 aa 54 54 54 da 54 54 54 54 4a 00 0e 54 54 1e 54 b6 54 54 54 54 54 54 8a 54 54 54 54 54 34 b6 54 54 54 54 54 ae 54 02 04 54 54 54 54 54 00 54 54 54 54 54 10 fc 54 54 54 54 9a 54 54 54 54 54 54 54 da 94 54 54 54 54 54 54 54 54 54 54 4c 00 a2 d8 54 54 54 54 54 54 54 00 f6 54 54 54 54 54 d2 54 00 54 3c 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 98 54 54 54 54 54 54 54 54 54 54 54 fe 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 18 54 54 fc 54 54 54 54 54 00 bc 54 9c 54 54 54 c8 54 00 00 54 54 54 54 3c 54 54 54 54 54 54 54 ba 54 74 00 54 54 54 54 54 54 54 54 fe 54 54 54 54 54 54 54 54 54 54 54 54 54 ac 54 ae 54 0c 54 54 54 dc 54 f2 54 54 54 00 54 54 54 54 54 54 54 54 38 54 54 54 54 54 2c 08 54 54 54 54 54 54 54 54 36 54 00 c8 54 54 54 54 54 54 54 54 60 44 54 54 54 2c f6 54 54 0c 54 54 54 54 54 54 54 54 54 00 54 84 54 54 54 54 58 54 54 54 54 54 b6 54 54 54 54 54 54 00 fe 54 e2 54 54 54 54 54 b8 54 54 54 f6 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 24 54 8e 54 54 54 54 54 54 8e 54 54 54 70 54 54 54 54 54 ca 54 96 70 54 54 54 54 b2 4c fa 54 3a 54 54 54 54 54 f2 54 54 54 54 54 9e 54 54 44 54 54 54 54 6e 54 54 62 54 54 54 50 54
*/
