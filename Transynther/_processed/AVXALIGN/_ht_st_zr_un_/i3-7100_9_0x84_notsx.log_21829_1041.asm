.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1501d, %rdx
nop
nop
nop
nop
xor $40695, %r15
movb (%rdx), %r10b
xor $16087, %rax
lea addresses_WC_ht+0x189d, %rbp
clflush (%rbp)
nop
nop
nop
nop
and %r13, %r13
mov (%rbp), %ecx
nop
nop
nop
nop
xor %r13, %r13
lea addresses_normal_ht+0x121d, %rax
nop
nop
nop
nop
add %r15, %r15
movb $0x61, (%rax)
nop
inc %rcx
lea addresses_UC_ht+0xb5bd, %rsi
lea addresses_normal_ht+0x1b747, %rdi
nop
cmp $12395, %r15
mov $27, %rcx
rep movsl
nop
nop
inc %rdx
lea addresses_WT_ht+0x38c5, %rsi
clflush (%rsi)
cmp %r10, %r10
mov $0x6162636465666768, %r15
movq %r15, (%rsi)
add $65518, %r13
lea addresses_WC_ht+0xf01d, %rcx
nop
nop
nop
nop
nop
xor $35859, %r10
mov (%rcx), %eax
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x5a1d, %rcx
nop
nop
nop
nop
nop
sub $64529, %rdx
mov $0x6162636465666768, %r15
movq %r15, (%rcx)
nop
nop
nop
sub $53360, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0x1d, %rsi
lea addresses_A+0x1701d, %rdi
nop
nop
nop
add $24609, %rbp
mov $51, %rcx
rep movsw
nop
nop
nop
xor %rcx, %rcx

// Store
mov $0x133, %rbp
nop
nop
nop
and %rcx, %rcx
movw $0x5152, (%rbp)
nop
nop
nop
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_A+0x1701d, %rsi
nop
nop
nop
nop
xor %rcx, %rcx
movaps (%rsi), %xmm3
vpextrq $0, %xmm3, %rdi
lea oracles, %r8
and $0xff, %rdi
shlq $12, %rdi
mov (%r8,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'e6': 127, '1a': 140, '54': 41, '1e': 147, 'f8': 80, '1c': 129, '48': 72, '80': 146, '2a': 137, '46': 122, '8a': 139, 'c4': 43, '0e': 148, 'de': 123, '32': 145, 'dc': 129, '76': 124, '5a': 120, '7e': 126, 'c0': 126, '68': 76, '04': 166, 'd6': 128, '9c': 153, 'bc': 155, 'ae': 135, 'fe': 135, 'ee': 144, '5e': 141, '28': 79, 'f2': 115, '22': 145, '14': 34, '98': 88, 'a6': 134, '18': 69, '6c': 118, '62': 145, '6e': 133, 'ea': 111, '60': 141, 'a2': 133, '82': 150, '12': 144, 'ac': 127, '2e': 159, '08': 131, '38': 77, '34': 36, 'd2': 152, '5c': 124, 'da': 154, 'b4': 43, 'ca': 119, 'ba': 133, 'fb': 1, '4c': 136, 'a8': 88, 'b8': 75, '4e': 110, 'fa': 121, 'be': 123, 'e2': 146, '2c': 175, 'ec': 129, 'd8': 75, 'e4': 46, '9e': 127, '44': 46, 'cc': 136, '66': 133, '0c': 158, '9a': 144, '3c': 135, '24': 41, '36': 114, '74': 58, '72': 115, '4a': 126, 'f4': 43, '58': 82, '3e': 137, '20': 135, 'c2': 130, '84': 40, '26': 133, 'f0': 114, '50': 134, '0a': 135, '30': 140, '3a': 132, 'c8': 73, '90': 149, '88': 84, '8e': 138, '94': 49, '40': 116, '7a': 150, 'ce': 143, '52': 145, '6a': 144, 'fc': 174, 'e0': 113, '16': 138, 'f6': 116, '02': 140, 'd0': 149, '92': 127, '00': 6847, '10': 128, 'c6': 119, 'a0': 168, '96': 145, 'aa': 125, '42': 111, 'b0': 142, 'b2': 121, '56': 125, '78': 85, '8c': 128, 'b6': 146, 'a4': 57, '86': 151, '70': 131, '06': 118, 'e8': 102, '7c': 137, 'd4': 45, '64': 46}
f2 26 40 a2 00 2e ea 00 0c 8c 26 b8 00 00 ee a4 9a 0a 4a 30 6c 00 ea 72 8c e6 12 00 3c 72 f2 7a 16 c6 2c 8e ae ac 82 00 3c 00 02 00 2c 00 00 b0 00 6c 00 00 00 26 18 00 28 36 22 58 e4 fc 86 30 00 ee 98 00 0a d6 7e 8c 00 58 00 dc c2 e6 6a b0 00 8c 00 58 1a f0 fc e0 52 e0 00 00 2e 00 00 ce 00 8c 00 00 7a 00 a6 8c 80 50 0e 00 5c 52 00 00 18 ae 00 00 00 00 e8 50 00 f6 00 00 54 04 9c 2e ea 00 80 7a 00 b0 20 00 00 0a a4 8e 68 00 d0 a0 2e d2 fa 00 dc a2 98 42 9c 00 6a 00 00 b6 10 00 30 00 68 40 bc 00 c2 96 c6 00 00 a6 92 6c 00 26 28 aa b6 00 90 70 00 00 00 5c 00 00 04 00 00 00 a0 00 00 00 34 2c cc 7c d2 00 f0 00 00 a2 00 96 86 00 00 00 2e 78 6a 08 1c 26 00 58 08 fe 00 32 02 7c b4 48 00 66 36 00 4c 5e 62 b0 a6 9a d8 00 80 44 ae 96 00 00 0a 00 00 00 00 6e c6 4c 00 6e 32 00 fc 92 c0 f4 e2 f8 00 26 3a cc ee a2 4e 8a 9c f4 fa 20 3e e4 de ac 56 c6 fa 50 ce 00 00 06 7e 00 0a 82 00 74 3c 6e 52 28 00 86 ba 0c 00 0c 72 c4 c6 84 5c 30 fa 88 00 ca bc 84 00 04 ae 00 de 70 04 30 c6 e0 7c 00 5c 00 00 b4 86 62 4c c2 00 00 00 00 00 74 12 00 08 a6 44 a4 00 0e e2 00 bc 68 00 b0 d2 80 b8 c8 78 58 70 00 a2 00 e6 94 12 cc 00 b4 16 00 ca ba 00 42 00 ee fa 26 00 00 3a dc dc e0 00 12 00 de 58 00 ba 5e 00 00 5a 4c fe 00 60 00 7a 26 52 86 6e 00 38 d6 a8 00 16 c6 00 80 00 de a6 cc 7a 00 12 00 92 00 a0 ba 00 68 ec 66 3c 00 00 fc 5a d2 00 9e 00 8e fa 0a fa b0 b6 00 00 00 ac 00 3a 1a a8 88 00 8a 00 00 00 34 3a 4c 44 f2 6a 00 00 de 5e ec 32 00 2c 4e 00 36 3a 18 a6 00 00 02 02 de 0c 96 54 0c d2 0a 00 72 b2 7c 46 9e 0e 00 50 00 c6 f2 90 00 00 00 ba 4a aa 3c 00 00 16 b4 24 00 00 9a 22 00 9c 1e 5c d0 fc c2 9a 4a 30 00 00 d2 78 da 7a 00 c6 00 00 c6 60 9e 72 00 36 3e bc 30 00 0e ec 00 00 00 fc ee 00 c6 cc c8 1e 00 00 00 d0 00 00 5e 30 a4 00 c4 00 00 80 50 9e 70 fe 00 76 00 00 00 da 12 00 00 00 00 00 f0 be 0e b6 16 f4 80 00 00 00 82 d2 00 5e 22 16 00 d2 2e e2 92 c8 ee 0a 00 8c 60 00 ee 3c 00 6e 00 e6 00 96 00 ae 00 00 6c aa 00 ec a0 a2 00 92 86 f0 d6 8e 3c 76 48 16 66 00 f8 00 00 26 6e 00 30 00 86 00 bc b2 00 ce 00 9c 00 ca 92 f0 d0 00 46 28 da da be 4a b0 16 50 38 3c 6a 04 32 00 26 d0 00 00 00 4e 00 00 00 00 8c e0 b2 1e c0 52 00 04 00 0c 00 c6 b0 be 62 0c 00 26 00 8e 00 00 00 0a ca 98 12 de 00 00 32 00 1c 00 70 00 00 24 0c 82 72 52 00 46 de 9c f6 de 00 00 9e 00 00 82 00 7a 00 26 00 00 a0 1c e2 c8 00 00 00 6c 2e 80 00 00 20 00 c8 00 00 00 00 52 5a 74 26 56 b6 d0 00 1a 8a 00 bc 66 00 00 da 7a c8 00 6e 00 00 1c 2c 24 60 00 74 50 00 60 00 00 00 00 4c 94 6c 00 5a 00 00 00 8c 00 00 ec 00 00 f8 28 ee 00 00 00 1a 00 ee d2 3c 00 ce 00 00 3e 3a d6 4c 4c 0e 00 86 00 80 64 00 00 ea ea 18 be 00 00 1c 62 00 00 da 00 0a 84 ba 00 c2 ce ca a8 00 26 00 00 00 bc ae 00 da e2 4e d0 00 00 00 bc 00 f2 3e 8c 08 6e 36 16 2e 18 00 78 00 d6 3a 22 fc d0 00 42 9a 8c e2 00 04 00 da 26 22 a6 00 00 7e 1a 00 b8 48 ba 00 26 36 5c ea 22 00 00 00 0a 00 96 00 10 90 ea 7c 36 00 a6 02 4c 10 16 48 4a 70 6a 46 00 dc d2 04 00 2e 00 e4 7c 90 d6 00 00 d8 c8 00 92 2a bc 04 00 00 6e 00 66 54 dc 00 ce ac 00 12 66 78 00 78 00 7e 30 00 4a
*/
