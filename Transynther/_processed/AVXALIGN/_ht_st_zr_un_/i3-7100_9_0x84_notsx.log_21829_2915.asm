.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xb5ca, %rsi
lea addresses_WC_ht+0xfae6, %rdi
nop
nop
nop
sub %r9, %r9
mov $95, %rcx
rep movsw
sub $29525, %rsi
lea addresses_WT_ht+0x9246, %rsi
lea addresses_UC_ht+0x153b6, %rdi
nop
nop
nop
nop
nop
inc %r15
mov $94, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x14e3e, %rsi
lea addresses_A_ht+0x53e6, %rdi
nop
nop
sub %rax, %rax
mov $125, %rcx
rep movsw
nop
nop
and $53424, %rdi
lea addresses_WT_ht+0xa98c, %r9
nop
nop
nop
nop
nop
and $34347, %r11
mov (%r9), %r15d
nop
nop
nop
nop
and %r9, %r9
lea addresses_WT_ht+0x1efa6, %rax
nop
nop
nop
nop
xor $25377, %r15
movb $0x61, (%rax)
dec %r11
lea addresses_A_ht+0x114c8, %rsi
lea addresses_A_ht+0x17b2a, %rdi
nop
nop
nop
sub $41139, %rbp
mov $56, %rcx
rep movsl
sub %r9, %r9
lea addresses_normal_ht+0x1de6, %rsi
lea addresses_A_ht+0xce80, %rdi
cmp %rax, %rax
mov $66, %rcx
rep movsb
nop
nop
xor %r9, %r9
lea addresses_D_ht+0x2036, %rax
nop
nop
nop
nop
add $38330, %rdi
movw $0x6162, (%rax)
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x185e6, %rsi
lea addresses_WC_ht+0x16d2e, %rdi
nop
nop
nop
nop
inc %r11
mov $75, %rcx
rep movsl
nop
nop
nop
add $18577, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_normal+0x115e6, %rcx
nop
nop
cmp $61688, %r13
movl $0x51525354, (%rcx)
nop
nop
nop
cmp $2392, %r13

// Faulty Load
mov $0x63de9500000005e6, %r13
nop
nop
nop
sub %rdx, %rdx
movb (%r13), %bl
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'e6': 93, '1a': 108, '54': 8211, '1e': 107, 'd8': 72, '1c': 114, 'fe': 119, '4e': 99, '80': 104, '46': 94, '8a': 108, 'c4': 118, '0e': 117, 'de': 101, '32': 97, 'dc': 106, '76': 103, '5a': 105, 'e2': 93, '68': 71, '04': 121, 'd6': 104, '9c': 80, 'bc': 103, '34': 110, 'c6': 85, 'ee': 115, '5e': 91, '28': 69, 'f2': 76, '22': 118, '14': 137, 'f0': 102, 'a6': 110, '18': 79, '94': 123, '62': 85, '6e': 97, 'ea': 107, '60': 93, 'a2': 120, '0c': 149, '12': 101, 'ac': 111, '2e': 96, '9a': 72, '38': 73, 'f6': 93, 'd2': 76, '5c': 121, 'b4': 99, '2a': 97, 'ba': 91, 'a8': 71, 'b0': 105, '48': 66, 'fa': 103, 'da': 120, '72': 91, '2c': 105, 'ec': 89, 'f8': 67, 'e4': 103, '9e': 121, '44': 131, 'cc': 101, '66': 99, '82': 103, '08': 104, '3c': 94, '4a': 114, '98': 57, '36': 90, '56': 116, '24': 119, 'ce': 91, '42': 100, '58': 73, '3e': 121, '20': 118, 'c2': 95, '84': 101, '26': 88, '74': 106, '50': 103, '0a': 105, '30': 111, '3a': 87, 'be': 103, '90': 127, '88': 73, '8e': 108, '7e': 115, '6c': 116, '40': 122, '7a': 103, 'f4': 97, '52': 95, '6a': 114, 'fc': 110, '86': 102, 'ca': 95, 'e0': 116, 'ae': 78, '16': 101, '02': 119, 'd0': 112, '92': 116, '00': 955, '10': 116, 'c0': 96, '7c': 112, '96': 109, 'aa': 106, '4c': 113, 'c8': 77, 'b2': 99, '06': 94, '78': 48, '8c': 89, 'b6': 113, 'a4': 103, 'b8': 73, '70': 101, 'e8': 71, 'a0': 100, 'd4': 102, '64': 118}
1c 82 44 54 dc 6e 54 1e 54 54 54 54 9c 08 58 94 54 32 00 4e 00 54 46 54 54 54 54 80 c2 36 c8 32 54 ba 54 54 62 1c 9e b0 56 54 f4 54 58 54 54 aa ea 54 56 5e 52 34 7a 40 54 e0 c6 f4 f2 ba 00 06 0a b8 aa 54 54 c4 8a c8 54 54 84 a0 54 54 54 54 00 c2 40 54 9c 92 b0 54 3c c2 a6 d0 f8 10 1e 54 d8 64 30 c2 58 54 0a 54 20 1e 1e 54 9e 44 54 cc ee 54 b4 4e f2 9a 54 54 54 3a e4 54 54 54 54 54 54 30 54 54 90 54 ee 00 8e 54 54 54 08 54 54 96 c8 54 54 54 54 1e 54 9a ac b8 54 54 54 8e aa 54 54 f6 02 ba 38 72 26 5c 7a c6 8a 54 f0 54 e4 e8 52 c2 8a 54 cc 74 5e 54 12 bc 04 54 56 8a 2e 1a 84 ea 54 e8 ba 54 d8 54 30 c0 aa b4 2a d0 54 a2 54 54 54 54 54 54 54 b4 54 54 54 00 f2 00 0c 54 64 90 d6 94 54 54 78 24 3c 6a aa 54 54 54 54 54 d0 0e 4c f4 3e d2 14 54 54 54 54 68 54 54 54 00 16 82 56 4e 68 46 f2 1c d8 20 90 5a 5e 30 70 90 82 08 54 84 6a e0 b2 56 22 9a 54 00 92 74 2c aa da 54 00 54 54 2a a8 da e2 54 54 54 54 3a 54 18 82 54 54 ac e2 54 54 54 e4 54 54 6a f0 2e 54 3e 54 7e 2e 22 ac 9c 34 be 54 54 54 54 c8 36 54 24 54 54 00 96 54 36 6a 6e b2 fa 54 c2 6e 54 54 72 18 3e 54 34 c4 54 2a 54 a4 54 54 cc 54 54 1a 54 28 02 7a ea 54 00 f6 54 94 58 54 9e 1e 54 d6 54 54 54 54 d6 16 bc 54 54 d8 90 d8 0c 54 54 54 00 ee 54 54 00 d6 6c 26 54 bc 68 f4 54 e0 54 4c b8 56 54 9e 54 16 54 54 82 7a 08 54 54 54 72 ea 54 ea ee 54 54 54 54 54 ac 42 6a 8a 1a ea 54 54 54 54 a4 86 54 3a 54 a6 54 7c 54 54 54 54 54 54 54 84 54 8e 54 d0 64 54 50 ee 54 54 54 92 5e 00 18 0c 7c a4 3e 62 04 80 2e 32 54 0a 54 d2 54 54 54 3e 54 ac 54 54 8c 54 d6 00 54 c4 5c 54 54 54 2c 54 54 54 c2 80 54 aa be 54 90 3e 54 94 54 6a 4c 14 90 54 54 54 54 3a 54 30 68 54 a0 54 0c 9c 7a 54 54 00 58 a6 e0 54 54 00 74 54 82 be 90 54 d6 4c 54 80 a0 22 54 0c 52 bc 54 54 54 54 d0 54 cc 54 54 8a 94 66 e8 44 d2 54 60 54 56 d0 50 08 54 12 54 de 6a b2 a8 68 ec 54 54 8a 90 54 b4 54 36 06 5e b6 3e fe 7c 54 54 54 80 64 de fe 18 64 d6 c0 10 54 34 54 b6 ce 8e 54 54 a6 ac e6 54 5e 54 ee 54 0a 54 6e de 8e 54 54 54 44 00 e6 5c 64 0e b2 6c 1e 0c dc 38 30 4c 88 54 54 54 4c 0c d6 a0 e2 2c b4 36 16 1a 2a 38 54 16 54 54 52 00 04 b0 54 54 7c 14 54 a0 54 54 70 52 e8 e2 66 00 54 24 54 0e 54 d4 c0 54 a4 54 00 ee 46 54 92 46 54 54 54 e8 54 de 54 b6 54 d0 84 54 40 42 14 54 56 54 54 e2 ce 54 54 5e 7e 2a 54 78 9c ce 74 00 54 1c c0 be 78 54 54 54 72 f6 50 d0 c6 8e 54 54 54 d2 66 54 04 ba 4c 00 e2 54 54 54 54 ba bc 1e b0 54 54 a2 54 54 ee 54 54 50 54 10 54 cc d8 5c 5a d4 76 54 54 54 2a b2 c6 54 54 54 54 54 3e ee 00 54 7c 44 dc 54 54 24 54 60 3e e2 54 3e 40 54 12 54 8a 96 94 ac ae e4 16 54 36 54 f4 54 54 c4 54 88 54 54 54 14 08 54 54 4e 54 54 c8 54 54 54 5c ba 54 9e c8 d0 54 b2 46 6e 54 16 54 54 0e 54 ee 54 96 54 00 b8 54 54 54 54 54 02 54 54 54 c4 54 0c 8c 64 d8 54 54 30 54 54 54 1c ea a8 54 26 a2 30 54 32 54 e6 54 8a 92 54 62 4a 1c 46 ce 54 36 54 54 e0 00 32 ee 54 54 2a 54 04 34 6a ea 9e 48 54 a8 00 54 6a 54 46 e8 54 54 3e 70 80 54 54 54 c6 54 54 c4 54 54 d0 54 54 54 88 22 54 54 54 54 54 54 54 54 54 1e 00 54 40 50 50 54 54 2c 54 bc 54 54 3e ac a0 54 54 54 d4
*/
