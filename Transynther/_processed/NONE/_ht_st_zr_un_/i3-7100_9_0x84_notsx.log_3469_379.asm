.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1059d, %r10
nop
nop
nop
cmp %rbp, %rbp
movups (%r10), %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
cmp $11287, %rbp
lea addresses_A_ht+0x97ad, %r15
nop
nop
add %r8, %r8
movb $0x61, (%r15)
cmp $1207, %r15
lea addresses_D_ht+0x104ad, %rbp
clflush (%rbp)
and $53808, %rcx
mov (%rbp), %r8
nop
nop
nop
nop
add $29752, %r10
lea addresses_A_ht+0x476d, %rbp
nop
nop
nop
nop
nop
sub %r15, %r15
mov (%rbp), %rdi
nop
dec %r10
lea addresses_D_ht+0x1bea7, %rbp
nop
nop
nop
nop
xor $58500, %r8
mov (%rbp), %ecx
nop
nop
nop
nop
xor $11888, %r10
lea addresses_D_ht+0x532d, %rsi
lea addresses_D_ht+0xe46d, %rdi
nop
nop
nop
nop
nop
inc %rbp
mov $17, %rcx
rep movsw
dec %rbp
lea addresses_WC_ht+0x183ad, %rsi
lea addresses_WT_ht+0x1fad, %rdi
nop
sub %r10, %r10
mov $117, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_A_ht+0xcb6d, %r10
nop
nop
nop
cmp %rsi, %rsi
movb (%r10), %r12b
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x1d55d, %r15
clflush (%r15)
nop
nop
nop
nop
and $63391, %rsi
mov $0x6162636465666768, %r8
movq %r8, (%r15)
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0x1d87d, %r10
cmp %rcx, %rcx
mov (%r10), %r15d
nop
xor %rcx, %rcx
lea addresses_A_ht+0xddad, %rsi
lea addresses_D_ht+0xffe5, %rdi
nop
nop
cmp $1223, %r12
mov $83, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r10
lea addresses_UC_ht+0x1dbad, %rsi
nop
nop
nop
nop
cmp $62336, %rcx
movw $0x6162, (%rsi)
nop
add $44811, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x80ad, %rsi
mov $0x399c4600000007ad, %rdi
nop
nop
nop
nop
nop
and $21838, %r13
mov $22, %rcx
rep movsw
nop
dec %rax

// Faulty Load
lea addresses_A+0xe7ad, %r13
clflush (%r13)
cmp %rsi, %rsi
mov (%r13), %ax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_NC', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'e6': 52, '1a': 25, 'ce': 18, '54': 26, '1e': 25, 'd8': 40, '1c': 20, '48': 28, '80': 24, '46': 15, '8a': 22, 'be': 25, '0e': 20, 'de': 15, '32': 34, 'dc': 60, '0a': 20, 'b8': 29, '5a': 19, '7e': 23, 'c0': 23, '68': 27, 'e2': 34, 'd6': 43, '9c': 26, 'bc': 24, 'ae': 25, 'fe': 41, 'ee': 28, '5e': 13, '28': 33, 'f2': 45, '22': 27, '14': 19, 'f0': 53, 'a6': 32, '18': 26, '94': 18, '62': 20, '6e': 18, 'ea': 39, '60': 22, 'a2': 24, '0c': 15, '12': 26, 'ac': 18, '2e': 29, '08': 18, '38': 23, 'f6': 48, 'd2': 43, 'b4': 21, '5c': 23, '2a': 28, 'ca': 21, 'ba': 32, '4c': 18, 'a8': 23, '72': 38, '4e': 22, 'fa': 48, 'da': 56, '2c': 28, 'ec': 55, 'f8': 43, 'e4': 31, '9e': 19, '04': 22, '44': 18, 'cc': 48, '66': 25, '82': 32, '9a': 18, '3c': 18, '24': 20, '98': 25, '36': 26, '06': 27, '4a': 18, 'c4': 12, '58': 24, '3e': 26, '78': 24, 'c2': 24, '84': 21, '26': 24, '74': 28, '50': 28, '5f': 1, '76': 26, '30': 20, '3a': 22, 'c8': 49, '90': 21, '88': 24, '8e': 24, '6c': 32, '40': 26, '7a': 17, '34': 18, 'f4': 31, '52': 21, '6a': 22, 'fc': 50, 'e0': 47, '16': 27, '02': 21, 'd0': 28, '92': 19, '00': 20, '10': 14, 'c6': 24, '7c': 25, '96': 18, 'aa': 18, '42': 26, 'b0': 25, 'b2': 13, '56': 30, '20': 26, '8c': 32, 'b6': 28, 'a4': 29, '86': 30, '70': 23, 'e8': 36, 'a0': 26, 'd4': 30, '64': 16}
22 86 8c b0 ec 62 a0 e0 fe 7c 54 18 96 f0 56 ee ec ca 28 82 12 a6 ba cc 42 32 5a 9c fc fa e0 3c 3e 74 aa fa e4 48 00 dc 30 9e e6 f6 d2 f2 ec 20 2c 72 60 3e d8 32 e2 82 ea c6 ca ea 70 9a 82 e8 d2 d8 50 72 64 28 66 d8 b0 be e8 0e 56 9e ec ee 58 aa 02 da 1a 18 d6 96 80 60 8a d2 ec d0 fe 60 1c 56 a4 f8 f4 76 ba 12 cc bc e6 d8 fe 12 16 ec ba 76 4a ae 76 96 d8 a4 94 8a 66 86 5a f2 50 a0 5c c6 7c cc 6c 20 d8 be 1e d2 e6 9e ae f8 7e dc a0 46 94 54 ac 12 0a ee f6 8e 20 2a d2 36 a2 68 1a 3a 86 98 40 f4 68 8c 76 e6 ba 12 f2 64 84 e0 04 8e e4 f6 48 e4 fe e6 36 ea 38 78 d4 70 d6 24 ee aa 3c 4e 90 f0 2c a2 2a 5a e6 32 3e ae 66 b2 e2 b2 7e 88 f0 66 d6 a6 04 ee c8 d4 e6 dc 52 e8 fa d6 86 28 22 3a 84 dc 64 22 72 a4 d6 b8 58 8e 46 14 2e e2 ea 94 b6 08 1e 48 48 2e d4 30 fa ec 22 c8 5e fc 04 fa cc e2 ea b4 24 98 d0 c6 00 04 86 2a 78 ec f2 50 b6 10 aa 82 36 58 54 d4 66 fe be de 7c 58 80 0a 2e 42 22 1a 66 a6 7e 7e fa 54 fc 16 32 24 2a 68 6c 2e bc b8 e4 52 92 8c ba cc 3c c6 a8 70 d6 b6 fe 64 40 42 d8 0e a0 b4 4a c2 70 70 fc 66 f2 78 18 20 f6 a4 c8 f2 a8 f8 6e 3c be c6 fe 5a c8 ae ca 24 a8 fc d0 c0 68 ee 62 1a 84 d6 36 38 f8 56 b0 42 d0 fe 90 b6 98 fc 2e 2a 2a f2 ae 0c dc 52 24 ec 7c ea 28 40 e2 c6 e8 4e 32 9e 42 42 34 f8 5c 4e d2 a0 dc d8 68 46 5e 86 8a a6 f2 04 a2 cc 18 22 0a 86 26 ec 7c 90 c8 fa 50 0a 60 ea 08 18 16 8c 24 f0 86 bc f8 da 82 f2 96 62 20 f8 b8 5a 9e 3e 04 72 cc 7c 8e 1e f2 02 20 be 2a 62 d8 be 4c 22 28 ee b0 e8 78 f8 e2 7a 66 7a 16 94 d8 58 a6 3c 84 0e 54 80 86 90 f6 4e 2a 1e cc 5e 3c 54 1c c4 dc 6e f8 fe 3c 72 a2 d0 fe 60 7a a8 74 36 f0 dc f4 fe b6 16 4a 28 1a 54 30 f4 2e b0 14 e6 da e8 2a ea 6c e6 70 ca 2e 58 92 6e a8 9c b4 ba 46 b0 c2 f0 7c f8 52 c8 34 cc f6 84 7e 0e b0 1a 72 02 6c 12 ea be 88 22 ce e0 fc aa 9c 7e 54 dc ee 50 f4 f8 f6 e6 3e 8c 56 98 9a 82 74 7c 2e 5c 2e e4 0c ce 52 8e b8 fe 3e 7e 6c 80 fc 7c da 18 34 40 54 12 3e f4 f0 42 8c a2 88 ee f8 08 10 c8 b0 da f2 96 04 50 5c c6 78 c2 d4 ca c2 d8 58 50 b4 d2 e2 28 6e 0a 54 a0 86 98 86 28 d8 f0 f0 a0 ec 2c cc ba fc a4 56 02 62 c0 b6 8c 1a dc e2 2e 7e 74 44 82 ca 68 d2 0a 28 ec a6 5a 2c 0e 56 90 8e 50 3a 72 3c 02 68 4e 80 a8 c2 7c a8 4c ec 0a f2 a4 9c 5c b6 d4 30 00 2a 12 f2 c4 c0 d6 3c ee 08 f8 96 06 ae 14 e0 f0 aa 32 dc 94 b2 da 28 56 c6 56 14 a4 54 c0 ac 30 26 da f8 1e 8a da ca d2 2a 30 f2 00 9a 0a 38 74 18 80 78 fc f0 6c 1a 28 06 dc aa 4a fa 32 e0 e8 fa 6c c0 4a 74 54 14 ac 66 00 8a 62 1e a2 f2 88 4c ec ee 8e 24 9e d4 82 ba ce 30 3a f0 b6 bc 58 d0 b2 6c 4a 28 a0 56 c0 f4 26 12 68 2a 54 c8 2c 8a 84 2a 4a ee 98 5a b2 88 94 bc 56 fc 70 3a ca ec fa 3a 1c 7c d0 e0 de b8 fe 02 be e6 36 e4 fe ea dc 2e 2c 4e 2c 02 6a ce 26 fa 7c da a0 96 7a 7a 54 1a 3a fa 08 5c dc 00 44 ee c0 0a 72 30 c0 ee a6 08 0e 12 4e e8 ce ba de 5e e8 dc 98 e6 86 ac e0 e2 56 3a 0c 70 8a b2 26 58 94 ea 28 be ea 2e bc f4 64 34 b2 f2 76 38 22 6c 94 d4 9a 40 8c 40 e8 38 56 f6 a2 70 8c e0 b4 f2 44 fa 2c 64 3e 82 68 26 d6 56 2e 82 20 a2 52 42 da fc 28 f4 d2 6e de e0 28 d2 96 e0 5a 48 26 ea 98 d8 88 1a 76 a2 6e 02 8c 08 08 68 34 0e 30
*/
