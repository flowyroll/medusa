.global s_prepare_buffers
s_prepare_buffers:
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1103d, %rsi
lea addresses_UC_ht+0x983d, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $8, %rcx
rep movsq
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x4f522d0000000a3d, %rdi
nop
sub $5010, %rax
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
xor $57322, %rsi

// Faulty Load
mov $0x4f522d0000000a3d, %r9
cmp %r13, %r13
mov (%r9), %rax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'00': 608, 'fc': 5, '7c': 6, '42': 7, '62': 6, '14': 11, '60': 7, 'fe': 6, 'ba': 6, '78': 8, '0e': 2, 'f6': 5, '38': 12, '12': 4, '48': 5, 'ce': 5, 'da': 3, 'a8': 5, '2a': 7, 'd2': 3, 'dc': 5, '18': 4, '7e': 4, 'de': 4, 'cc': 10, 'd6': 6, '58': 27, '20': 5, '36': 2, 'f8': 8, 'ca': 5, '2c': 5, 'ee': 2, 'fa': 3, '70': 7, '9c': 8, 'aa': 5, '46': 4, '24': 6, 'bc': 8, 'ec': 4, 'ac': 3, '3c': 6, 'd8': 8, '32': 5, '1a': 3, '5a': 7, 'e6': 4, '30': 5, '9a': 4, '98': 5, 'b6': 6, '08': 3, '80': 5, '84': 4, 'be': 3, 'b2': 2, '34': 5, 'd0': 4, '8a': 1, '26': 4, '6a': 3, '40': 10, 'c8': 8, '6c': 7, '0c': 2, '6e': 4, 'c0': 7, '92': 4, '4c': 5, '54': 8, 'c6': 3, '28': 4, '10': 2, '1c': 4, '5c': 9, 'e0': 10, '5e': 2, '50': 5, 'e8': 7, 'e4': 7, 'a0': 6, 'b8': 2, '82': 5, 'c4': 7, '04': 2, 'd4': 6, 'a4': 6, 'b4': 4, '88': 3, '64': 3, '0a': 2, 'f2': 4, '7a': 3, 'e2': 4, '4e': 5, '44': 3, 'a2': 4, 'b0': 7, '52': 4, '94': 5, 'f0': 9, 'ae': 1, '4a': 7, 'f4': 4, 'ea': 3, '56': 2, '90': 2, '3a': 6, '72': 3, '68': 2, '16': 2, '8e': 3, '02': 3, 'c2': 3, '8c': 3, '06': 2, '3e': 1, '76': 3, 'a6': 1, '74': 1, '96': 1, '2e': 1, '86': 1}
00 fc 00 7c 00 00 00 42 62 14 00 60 fe 00 ba 00 78 00 0e f6 38 12 48 00 ce da a8 2a d2 00 dc 00 00 2a 00 18 7e 00 de 00 00 cc d6 58 00 00 20 36 dc 00 00 f8 00 ca 00 00 00 00 2c ee 00 fa 00 0e 70 9c cc aa 46 00 24 00 00 9c f8 bc ec 46 00 00 ac 00 14 3c 58 d8 00 00 32 1a 00 5a e6 30 00 00 9a 00 aa 98 00 00 de 00 00 b6 ec 00 08 00 00 00 00 80 bc 00 00 00 fc 00 de 84 00 00 00 00 00 be 38 b2 9c 34 00 58 00 d0 00 00 8a 26 00 dc 6a 6a 00 00 00 40 00 00 c8 6c 0c 6e c0 14 48 00 92 00 14 d8 00 4c 00 fe 00 98 54 d2 d8 5a c6 28 00 00 58 34 2a 2c 78 58 00 10 62 00 ee 46 00 32 00 12 30 1c 5c 54 e0 d6 00 00 5e 00 08 fc 50 cc e8 bc 00 e0 e4 60 00 00 e8 00 00 00 00 b6 00 00 28 00 a0 b8 b6 82 c4 00 00 04 60 00 9a 00 a8 00 d4 00 00 00 e4 a4 00 00 84 14 00 00 00 9c 6c 18 bc b4 00 88 00 00 82 00 58 64 00 3c 00 00 e0 0a 24 7c 00 f2 7a e2 00 c0 58 92 80 24 38 00 00 00 e6 00 d6 64 00 fe 00 00 00 00 00 10 00 c8 d0 00 00 00 6c 4e 4c 00 cc 00 42 78 44 a2 42 e8 7c b0 00 00 00 da 00 ca 52 a2 00 00 94 00 e4 00 f2 00 f0 00 e2 00 d6 00 e0 ca 00 40 ae 00 00 4a 00 d0 14 00 00 c4 6c c8 d4 80 00 7c ec 00 e0 94 00 0a 00 dc f8 00 f8 00 d6 00 f4 58 04 58 f2 00 5c 00 00 00 a2 d4 00 7e 00 ba 00 be 80 2a 00 00 00 00 28 94 f0 00 6a c4 14 34 00 f8 fe c0 c4 40 ea 00 3c 00 00 00 00 00 00 00 2a e0 56 54 00 00 00 ac 1a 00 90 e4 da 3a 58 00 b0 00 a0 00 00 84 70 00 00 00 78 48 00 50 6e ba ce 00 00 00 34 40 00 5a 58 00 50 00 88 00 00 00 00 52 00 a4 00 60 30 9a c8 62 00 00 3a 38 44 00 80 00 00 ca e6 4e 58 38 00 58 9a 00 00 00 00 00 00 3a 9c 92 98 00 00 00 20 4a 00 00 00 00 3a 00 94 f6 00 a0 00 00 00 bc 32 00 00 48 e4 00 00 c8 a0 c6 00 00 38 2a e2 00 a2 72 5c 26 00 00 00 68 00 f0 c8 00 16 00 cc 00 00 00 8e 5c 00 48 00 00 4a 00 fc 00 00 58 00 00 00 00 60 00 64 14 02 00 00 00 00 a8 00 9c 00 00 c2 00 d4 00 78 e8 00 00 00 c2 0c aa 00 02 02 12 00 00 00 58 30 00 5c 00 b4 38 a4 00 00 6c 00 c0 00 4e c8 8c 00 58 00 00 00 00 00 82 2c 5c 00 00 a0 00 00 54 00 4c 00 62 c4 00 00 4a 00 00 00 d8 00 e2 00 06 00 78 12 00 00 00 b8 58 f4 b4 e0 00 c8 00 7c 1a 00 4c 00 00 50 00 bc 00 f0 00 00 00 00 00 00 00 00 00 00 00 68 00 00 00 a4 00 c6 f8 00 00 46 20 00 00 00 c4 00 00 20 1c 00 00 42 ec b0 ce 00 00 00 00 5c 00 00 40 00 00 00 00 30 00 f0 00 00 d6 cc 00 ea 00 00 00 f4 00 14 00 c0 2c b6 de b0 00 00 00 00 e8 e6 00 b0 00 00 00 8e 6c ac 36 00 72 16 00 00 00 f2 00 00 ba f8 00 40 00 00 40 00 52 00 00 00 7a 00 00 a0 00 7e 00 3e 00 00 2c 98 00 18 00 3c 00 00 7e f4 00 42 4a 00 00 00 00 00 f0 e0 f6 00 62 e8 00 5a 00 00 00 00 4a ba 00 00 62 00 00 38 e8 f6 76 00 58 72 5c 00 00 3c 00 00 ba 3c 24 00 a4 00 00 00 00 6c 00 e0 a6 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 58 00 f0 00 00 fe 00 d4 58 a8 8e 00 d2 00 b6 00 00 00 dc 58 00 00 cc d8 00 00 28 00 50 00 b0 38 00 3a 00 d8 5a 00 00 9c 00 00 00 00 c4 38 cc 60 00 00 9c 00 00 f0 00 ea 00 00 74 78 34 00 00 00 00 1c 58 fa 00 00 70 00 aa 00 00 00 00 ce 00 8c 00 32 e4 70 00 be 00 00 ce 06 00 c0 00 00 00 00 a4 00 00 00 26 00 00 40 00 00 60 88 00 58 54 00 78 00 32 00 00 40 00 b2
*/
