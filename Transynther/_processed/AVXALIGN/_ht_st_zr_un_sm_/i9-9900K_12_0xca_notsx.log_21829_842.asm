.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x19e88, %rax
nop
nop
and %r9, %r9
mov (%rax), %r8w
nop
xor %r15, %r15
lea addresses_D_ht+0x1e658, %rsi
lea addresses_WC_ht+0x1d268, %rdi
nop
nop
nop
nop
nop
add %r8, %r8
mov $7, %rcx
rep movsb
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x11ae8, %rcx
dec %r8
movb (%rcx), %al
nop
nop
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rdi

// Store
mov $0x3326ff0000000688, %rdi
nop
nop
nop
dec %r11
movb $0x51, (%rdi)
nop
nop
nop
xor $55738, %r9

// Faulty Load
mov $0x3326ff0000000688, %r11
nop
nop
nop
xor $62789, %r13
mov (%r11), %r8
lea oracles, %r11
and $0xff, %r8
shlq $12, %r8
mov (%r11,%r8,1), %r8
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'26': 115, '66': 108, '64': 109, '08': 117, 'ae': 107, '2a': 120, '5e': 108, '58': 121, '36': 107, '84': 106, '68': 114, 'a6': 97, '82': 97, '98': 136, '3e': 94, 'd2': 128, 'ba': 106, '1c': 97, '3a': 108, 'b0': 120, 'a4': 104, '54': 109, '44': 118, 'ca': 170, '24': 107, '56': 112, '4e': 121, '6c': 107, '04': 101, 'e8': 133, 'c8': 128, 'b2': 119, 'f8': 136, '92': 106, 'e4': 145, 'b8': 110, '12': 117, '8a': 105, '46': 96, 'ce': 113, 'd4': 146, '60': 121, 'c2': 102, 'e0': 146, '4a': 121, '6e': 125, '06': 97, '5a': 118, 'c6': 122, '9c': 112, 'a0': 141, 'ec': 148, '28': 118, '70': 107, 'aa': 128, 'f6': 121, '50': 105, '34': 107, 'f4': 136, 'b6': 125, '9e': 127, '0e': 132, '52': 115, 'a2': 111, '51': 5665, 'c4': 149, '40': 114, '78': 104, '96': 102, '30': 117, '86': 108, '14': 107, '2c': 112, 'fe': 140, 'be': 111, '80': 109, 'fa': 139, '62': 113, 'b4': 108, '02': 112, '38': 120, '42': 105, 'dc': 147, '20': 124, 'e6': 132, '72': 129, 'd0': 140, 'ee': 145, 'ea': 161, '76': 102, '48': 120, 'bc': 98, '74': 109, 'cc': 102, 'd8': 141, 'de': 107, '18': 102, 'fc': 144, 'a8': 119, '32': 122, '0c': 112, '3c': 101, 'e2': 124, '16': 105, '0a': 99, '6a': 110, '10': 134, '1e': 113, '9a': 98, 'd6': 117, 'f2': 138, '8e': 119, '7a': 106, '94': 115, 'ac': 116, 'c0': 130, 'da': 123, '7e': 132, '2e': 114, '88': 113, '8c': 110, '4c': 120, '90': 112, '22': 106, '00': 1208, '1a': 111, '5c': 119, '7c': 102, 'f0': 140}
68 e0 2e 3c fe fe 4e 51 ea 9a 9a 4c 2c 48 51 51 a2 4c 2c 51 c0 e0 51 58 66 fc 51 78 88 51 62 18 51 b2 fe 51 da 7c ee 5e 20 c2 00 c2 51 51 8c 5e de 00 84 e4 2a ea 51 76 51 51 b2 80 34 ee a0 10 dc f6 4c 9e 70 96 94 51 51 1a e0 00 00 6c 51 6c 51 6c 51 51 0e 00 51 51 a2 d6 0c 7c 8e aa be 51 d2 02 00 a0 51 51 b0 51 de 40 51 51 8c 00 b4 00 56 51 0a f4 6a a0 98 51 51 51 fc c2 8e c4 ec 22 4a a0 b6 6c 0c 51 e2 b8 a2 68 20 d8 6a 1c 51 38 51 28 4e 22 9e d2 00 92 78 4c 3a 51 51 e8 51 36 f0 1e 24 51 6e f0 d4 d4 00 da 4a 51 c6 80 51 b6 56 51 51 f6 ac 51 51 20 70 51 51 d6 a6 51 06 00 86 c2 46 04 51 b0 d8 6a f2 51 00 aa 51 98 48 0c 00 3c ea e6 52 16 51 c8 f4 6e a8 a4 0c f4 88 51 c6 51 ae 8c 7c 04 fe 51 ea 51 51 d2 9c 48 d4 51 d8 51 80 a0 51 3c 0c 51 60 51 54 40 51 00 51 70 46 51 00 51 51 12 30 51 00 3a 06 9e 40 b2 d0 51 51 51 2e 64 51 51 6c 10 4e 5a 18 d8 51 52 4c 51 51 7a 9c 54 51 00 7a 26 60 1e 7a 06 80 da 12 51 51 54 3a 6a aa a0 46 51 ca 4a 10 00 b0 51 51 f2 dc 51 ac fe 88 51 51 d2 92 34 51 e6 36 54 04 8c 51 26 ec aa 00 51 51 51 b4 1c 84 24 c2 e8 51 51 24 51 ec 8e 51 ce 9c ae 34 0e 04 51 6c 16 9a 6e 00 de 0e dc 38 a4 36 51 26 e2 5a 51 32 74 0a 70 68 51 10 51 72 51 98 51 5e 7a ec 51 3c 34 9c 9e 1c d2 2a 3e 58 51 51 dc f0 3a 58 51 86 00 fa 00 40 e6 51 70 7e 84 51 ee 6a 36 fc 50 1e 51 84 00 00 22 51 c4 74 80 ea 3c 70 3e ba da 51 4e 72 51 06 5a 51 51 ca c0 00 00 51 e2 b4 00 82 fe 74 74 54 0e a0 3e 40 28 51 20 0a d2 51 51 58 51 51 b8 00 51 51 be 51 51 c8 18 46 51 00 7a 51 51 00 64 51 5e 51 82 be ba 02 c2 7a 51 60 24 51 51 5c 80 51 00 ac de 60 00 f8 14 64 4c 51 51 51 51 fa 51 00 48 ae 76 51 04 51 28 ae 84 ce c8 20 96 0e 8e a8 51 32 8e a4 c0 00 51 1e c4 8a 8a 56 a8 fa 3a ce cc 40 ce 94 d6 51 54 22 90 02 51 24 51 ba 44 51 12 9a 51 51 b2 51 e8 3a d8 96 ca fc fc 02 51 6c 06 30 b8 51 51 ee 6c 00 c8 51 80 c8 51 51 b2 51 00 00 a0 51 50 da b4 96 00 ae e8 82 24 51 51 51 04 7a 51 c0 6a 36 51 04 f0 51 0c d8 51 51 04 51 00 51 51 aa 51 51 64 e0 51 51 51 20 70 51 1e 51 d6 aa 00 b0 c4 a4 e6 62 51 78 51 51 51 51 ec 51 51 51 f2 51 9c 00 51 e6 f8 d0 51 00 fc 64 06 92 18 04 98 51 28 51 c6 51 51 9e d6 b2 00 ea 51 e2 40 e4 51 6a aa 5e ba a2 51 00 51 ba 00 00 70 51 51 8c f6 51 51 76 62 20 ca 51 51 d4 14 82 5c a2 b4 ac 0e c2 be f0 00 10 51 52 98 ca 51 ec 51 98 9a 84 51 7e d4 3c 00 38 51 51 d0 14 8c ac 5c bc 36 51 42 04 fa d0 51 e0 51 51 f4 c6 92 d8 36 f4 2a 51 d0 51 66 51 ba 5e b4 ea 80 51 d2 12 51 88 92 2a 51 9c aa 51 8c d0 f2 ea fc f2 5a 51 30 54 0e 3a 51 c6 a4 fe 51 6c 4e fc 51 94 51 7e 00 51 34 f0 51 be b2 56 80 51 22 8e 0c d8 24 51 9e 40 fa e0 b8 78 c6 ec ce 84 52 6c 51 0e 51 30 1e de 4c b2 aa ee d8 e2 f8 1e ca 7a aa ee 8a a8 2e ac 7a 00 dc 51 51 51 e0 56 78 b4 f4 5c 51 51 12 7c 14 00 51 40 2c c6 82 24 24 6a ea 84 00 51 18 7e 72 72 c0 ce 51 96 51 51 51 dc 51 d8 e6 ee 51 51 ca 28 51 e0 84 51 51 ba 51 ec 00 51 c8 51 51 e4 51 51 96 51 51 dc d6 46 96 24 ca fe b6 00 51 76 fa 3c 8a 98 ac e6 12 a8 5c a4 51 48 98 8e e4 04 51 00 51 44 52 5c e2 96 51 6e 51 51 60 51 cc 00 e4 b0 51 32 8c fe 74
*/
