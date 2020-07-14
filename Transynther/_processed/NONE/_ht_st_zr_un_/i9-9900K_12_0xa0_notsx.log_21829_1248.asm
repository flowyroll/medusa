.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xfccb, %r10
nop
sub %r15, %r15
mov $0x6162636465666768, %rsi
movq %rsi, (%r10)
xor $60951, %rdx
lea addresses_WT_ht+0xd9cb, %r10
and $12374, %r8
mov (%r10), %cx
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_A_ht+0x1d38b, %r10
nop
nop
nop
nop
add %rcx, %rcx
mov (%r10), %r8w
nop
nop
nop
nop
inc %rdx
lea addresses_A_ht+0x1263b, %rdx
nop
nop
nop
and $17021, %r11
movl $0x61626364, (%rdx)
nop
nop
nop
nop
add %r8, %r8
lea addresses_WC_ht+0x1488b, %rcx
dec %rdx
movl $0x61626364, (%rcx)
nop
nop
and %r8, %r8
lea addresses_A_ht+0x564b, %r15
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
nop
sub $23168, %r11
lea addresses_D_ht+0x17cb, %r11
nop
nop
and %r8, %r8
mov $0x6162636465666768, %r15
movq %r15, %xmm1
movups %xmm1, (%r11)
cmp %rcx, %rcx
lea addresses_D_ht+0x2f41, %rsi
lea addresses_A_ht+0x614b, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $82, %rcx
rep movsw
nop
nop
nop
nop
add $12351, %r10
lea addresses_WC_ht+0x1c8bb, %r15
nop
nop
nop
xor %r8, %r8
mov (%r15), %r11d
nop
nop
add $11135, %r15
lea addresses_normal_ht+0x1a8bb, %r8
clflush (%r8)
nop
nop
nop
nop
cmp %rcx, %rcx
movl $0x61626364, (%r8)
nop
nop
xor $19139, %rcx
lea addresses_WT_ht+0x22cb, %r15
nop
nop
inc %rdi
mov $0x6162636465666768, %r8
movq %r8, (%r15)
nop
nop
nop
nop
add $58958, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
mov $0xa6a, %rsi
lea addresses_normal+0x15ccb, %rdi
nop
sub $61208, %r11
mov $50, %rcx
rep movsl
nop
nop
add $53207, %r11

// Faulty Load
lea addresses_A+0x1eccb, %rdi
nop
nop
sub %r11, %r11
mov (%rdi), %r14w
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 10, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 9}}
{'e2': 145, '1c': 165, '96': 168, 'cc': 251, '68': 190, '80': 171, 'a6': 171, 'f6': 251, 'c2': 176, '36': 149, '6a': 157, '64': 174, '3c': 155, '4e': 171, '62': 159, 'b4': 145, '50': 151, 'c4': 144, '04': 158, '30': 182, 'f8': 197, 'b6': 171, '08': 152, 'f4': 248, '58': 155, 'c6': 163, '82': 168, '9c': 162, 'c0': 230, '00': 175, '94': 154, '0e': 176, 'b0': 168, 'd4': 173, '18': 155, 'ae': 158, '38': 182, 'ee': 248, '66': 151, 'fc': 230, 'da': 160, '34': 190, 'ac': 147, 'e0': 251, '26': 157, 'dc': 222, '72': 141, '02': 159, 'a4': 148, 'a2': 148, 'ec': 239, '8e': 149, '98': 167, '10': 197, '42': 182, 'b2': 158, '20': 143, 'be': 152, 'f0': 207, 'ca': 158, '7c': 170, '5e': 141, 'f2': 235, 'c8': 173, '8c': 156, 'd8': 161, 'a0': 164, 'ea': 154, '52': 137, 'de': 227, '2c': 173, '16': 151, '22': 163, 'bc': 158, '7e': 163, '92': 145, '0a': 175, 'e8': 196, '2e': 143, '14': 143, '7a': 148, '3e': 145, 'd6': 155, 'ba': 161, '76': 158, '24': 163, '46': 170, '32': 169, '54': 177, '56': 128, '3a': 165, '4c': 153, '28': 161, '60': 139, '90': 155, 'b8': 167, '4a': 159, '48': 185, 'aa': 168, 'fe': 220, '2a': 167, 'fa': 264, '88': 159, '6c': 146, '8a': 171, '84': 161, '78': 157, 'd2': 162, 'e6': 207, 'e4': 209, 'ce': 181, '70': 157, '40': 159, '44': 156, '0c': 174, '5a': 135, '12': 169, '5c': 142, 'd0': 219, '1e': 130, '06': 160, '1a': 174, '9a': 175, '6e': 180, 'a8': 152, '86': 162, '74': 168, '9e': 135}
cc 1a 98 ca 74 e2 68 c2 22 e0 fa 58 d4 62 b8 4e 1a ea 56 40 92 de e6 9c 6a d6 c0 a4 7e 6a 2e 4c 18 7e 5c 80 ec 14 b8 8c 10 f0 3a f2 86 c2 70 3c 1a 74 04 ec 62 c0 6e 68 7e 64 da b8 6a fe 7e 22 ee 8c 00 ee 0a 9e de a4 0c d0 ae 0e 7a dc 42 ca ce 28 e6 56 e0 1a a4 5a 78 30 40 c0 b0 26 74 1a 38 3c 00 66 02 0e 9a 40 ba 72 ca 8c 74 8c f6 2e 18 14 34 b4 72 2c 78 6a 5c 14 34 70 44 38 d6 9a 90 38 2c 9e f4 5c a2 b8 c6 5c 48 b0 26 a6 20 88 fa c4 32 94 f6 68 74 2c fc 60 9e 6e 72 8a f0 86 f8 06 26 32 c4 f2 2c c6 3a bc de ee 8a 26 d8 72 24 ea 88 2e 76 4c 1e f0 da ec e4 02 12 de f6 c6 28 f0 38 32 24 0e 88 fc 38 8c e8 f0 fe 1a 4c cc 80 6e 50 f8 ce 98 ba 28 f2 32 c0 24 8c ce 0a 46 ba 20 fe 18 68 8e 6a 66 3a 00 fe 52 02 78 36 1c 42 b6 66 96 06 28 60 2e 54 8c b6 16 de d4 68 a6 82 3c 74 58 0a a0 f8 74 2a d4 ee 24 0a e4 c2 56 72 14 dc 8a 94 28 58 e0 02 80 10 d2 f0 76 da 10 12 2c e0 dc 04 58 dc 84 7c be 08 d8 7a ea f4 ae be 56 9a 5a 30 c8 76 40 9e ea dc 92 18 10 c0 ec 04 00 70 b0 d8 b0 70 44 4c f4 34 0a 9a 82 44 7c da a8 60 d8 e4 da 2e 14 ba 64 cc 06 60 bc 46 4c fa 80 10 20 c0 5e 00 98 5a e4 46 2c 28 ee 34 e0 a4 ce 04 f0 56 a0 c0 90 c0 52 d2 cc 48 30 4e e8 82 ce 24 da 38 02 26 12 84 04 e8 e2 b4 0c d8 56 48 0e ce 96 58 dc f4 1c 3e f6 9c ae 90 3a 22 d0 a8 f6 ac a4 58 64 c8 28 36 34 5a be e6 04 30 9c e0 3e e2 50 be 8c b0 24 4a a4 e0 0a 1a 22 fa 7a 36 da 04 fc 9a b4 e8 ca 28 ba e6 2c 1a 90 32 ae c6 ba 38 c2 24 56 86 62 34 38 6c dc ba d8 b4 88 9c aa be d8 4a dc b6 90 14 8a e4 54 d4 f6 56 2a a0 e0 22 70 00 08 e8 62 e2 6c 88 40 5e fe fe 20 ba 22 78 70 62 12 84 e0 7c 40 fe e4 10 f6 96 d4 66 c2 ca 34 a0 94 ea fa 20 c6 b0 dc 84 82 a6 f4 f6 1e d4 e6 92 20 30 8e 9e c8 68 c2 28 32 ec 28 cc 1a 88 fe 2e 42 d0 36 ea 4e 16 5a c6 16 c6 54 76 e8 16 8c be ce 26 da 84 fa b8 76 94 62 50 d0 fa 92 c8 8c da 80 02 2c ca 78 6e 14 4c 00 12 48 4e dc 2e b8 0c 90 a0 fa 66 5c f0 b2 10 a0 34 34 4a c0 a8 b4 ae 7c 68 36 cc ba 20 98 02 58 fe bc c6 1e 0a da 98 9c 1e fc 1c a6 60 e4 c2 ec d2 8a 42 de 1a 08 1e 16 46 cc 0e 62 f8 7e ac 28 48 a0 58 74 ec ec ca d0 7e 02 92 0a a6 64 be 26 a8 94 32 a2 8c f6 d4 cc 5a d0 a8 34 2e 52 3c f4 92 76 9c b6 f4 38 56 9c de d8 d8 84 f0 48 3a 96 3c 12 5c a2 9e f0 e6 fe fc 46 e6 d4 6e 8a 54 fa 7a c4 6a 30 a6 10 e4 d0 2a 20 22 46 1a fc 36 9a 96 2e 52 f8 7a d2 3a 04 38 0a 2a 86 d8 da 9e 58 5a 1c 98 d0 b8 9e 78 a8 a4 30 36 90 ee 92 38 a8 a8 72 d2 06 74 52 0e 36 9e b6 40 04 e6 fc 62 06 e4 ee de 0c 7c f0 64 ee 40 d8 0c ba ec 0a 32 96 7c 24 f4 ac 90 fc f0 6a dc ee 4a 28 dc 98 2c a6 b2 54 2a 38 e0 d8 24 30 6c 5a f6 50 06 d2 46 20 f0 8a b2 86 46 d0 c8 ce 0a 00 7e c6 fe a8 28 b8 b4 aa 56 7c aa 14 80 86 3c 2e e8 ac 2e 1c f2 2e 30 6a b8 5a 64 b2 a0 80 1e 72 1c a4 00 1c c2 f0 a8 18 84 b2 16 52 40 de 26 84 94 1c a8 c0 88 ea 8e 06 9a 40 f8 f2 7c 04 fa 9e 40 96 12 b2 6e 04 fa 6e 96 f8 2e 9c 60 5c 94 5a 32 40 1e 1c f6 54 b2 04 18 52 f2 dc ae ce 4a 5e f0 82 fc 82 22 ee 30 98 8a c4 18 94 6a fa 9c d0 96 26 58 e4 6a c0 46 66 38 14 24 c0 7e 84 f8 46 fa ee dc aa e0 c0 34 ee 4e d8 44 ce 66 f4 44 cc
*/
