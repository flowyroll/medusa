.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x5557, %rsi
lea addresses_UC_ht+0xe497, %rdi
nop
nop
nop
nop
inc %r14
mov $112, %rcx
rep movsl
sub $22537, %r14
lea addresses_WC_ht+0x14897, %r14
nop
nop
nop
nop
xor $61446, %rbx
mov (%r14), %bp
nop
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x17439, %rdi
nop
nop
xor %r13, %r13
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_D_ht+0x4bd7, %r14
nop
nop
nop
nop
nop
and $36627, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
cmp %rbp, %rbp
lea addresses_WC_ht+0x870e, %rcx
nop
nop
dec %r13
movb $0x61, (%rcx)
nop
nop
add $61519, %r14
lea addresses_D_ht+0x16197, %rbx
nop
nop
inc %r14
mov (%rbx), %edi
nop
nop
and %r13, %r13
lea addresses_D_ht+0xcb37, %r13
nop
nop
nop
nop
inc %rbp
mov $0x6162636465666768, %rdi
movq %rdi, (%r13)
nop
nop
nop
nop
and %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_US+0x6497, %rsi
mov $0x24cb270000000097, %rdi
sub %r15, %r15
mov $113, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r10

// Faulty Load
mov $0x24cb270000000097, %r10
clflush (%r10)
nop
nop
xor %r14, %r14
mov (%r10), %r9
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_NC', 'congruent': 0, 'same': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'src': {'same': True, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'aa': 142, '9a': 134, 'ec': 169, '66': 137, '16': 141, 'a2': 102, 'e6': 127, '8c': 123, '2e': 166, 'fc': 137, 'd0': 169, '30': 139, '7c': 140, '52': 145, '6e': 152, 'e0': 145, '24': 171, 'be': 119, '72': 152, 'b8': 152, '3a': 145, '3e': 161, 'c6': 144, '0a': 159, '62': 130, '38': 161, 'de': 146, '7a': 130, '42': 134, '26': 164, '34': 139, 'b6': 131, '48': 157, '20': 168, '3c': 164, '88': 161, 'ba': 154, '58': 134, 'fe': 132, 'f0': 160, '1a': 40, '6a': 143, '08': 190, 'c8': 43, '0e': 197, 'bc': 150, '5e': 124, '7e': 142, 'a0': 53, '60': 164, '28': 193, '76': 128, '70': 150, '5a': 157, 'd2': 171, '46': 166, 'b0': 144, '32': 134, '68': 59, 'f4': 67, 'c2': 120, '6d': 1, 'f6': 121, '90': 141, '04': 200, '96': 141, '14': 214, '92': 149, 'e4': 172, '10': 188, '5c': 145, '6c': 166, 'ce': 173, '12': 189, '0c': 181, '1c': 172, 'cc': 155, 'f2': 148, 'e2': 55, '44': 37, '00': 4141, 'b2': 131, '8e': 139, 'd6': 53, '40': 169, '18': 132, 'ea': 113, '06': 157, '56': 155, 'ca': 158, 'a4': 159, 'fa': 111, 'c4': 178, '2a': 137, '54': 154, 'e8': 52, '80': 164, '8a': 68, '9c': 122, '84': 154, '1e': 165, 'c0': 38, '4a': 118, '74': 153, '82': 148, 'da': 48, 'b4': 154, 'd8': 143, '64': 129, '78': 151, '4e': 144, '2c': 172, 'a8': 160, 'a6': 152, '9e': 156, '50': 47, 'd4': 155, '86': 150, '02': 141, '98': 153, '22': 57, '4c': 126, 'ae': 134, 'ac': 133, 'f8': 147, '94': 135, '36': 141, 'ee': 151, 'dc': 162}
ca 64 2a 9a 00 ca fe a4 86 8e 52 0c 00 88 36 4a 3e ce 78 34 00 00 9a 4e 72 f2 88 4a bc 48 0c 30 0a 90 00 40 20 14 fa 00 a6 00 e6 84 d8 00 d4 5c a2 bc d0 0e ea 12 ec d2 f0 cc 7a 0c 9a 56 b8 72 9a 00 00 00 9c 0a 18 00 00 28 46 42 ec 96 b6 bc 42 00 06 5a 10 08 ca 32 18 00 4c 84 d4 12 00 3c 00 00 00 ee b4 d8 00 6c 0c 00 18 00 b2 a6 a8 0e 00 90 1c 2c 00 26 36 00 9a 14 fe 28 94 d0 74 50 74 4c ee 40 66 96 00 00 00 ae 9e ae 0a b0 00 00 8e f0 f6 7a c6 a6 dc 1e 9e 46 ee b8 e4 36 14 90 00 00 bc 9e 4c 18 b8 6c 00 d2 8c d2 00 00 ec 00 94 80 52 92 16 00 64 8c 00 00 7a 58 d6 4c 4a 48 46 00 9c ec b4 2a 00 00 ae 00 38 26 30 d2 e8 6a 92 6c 00 00 80 28 18 be fc 00 6c 38 00 3e c4 28 00 d4 c6 32 60 5a 00 46 64 00 cc 62 12 20 3a 00 ca c4 ce 14 00 90 16 d4 74 12 9c 00 9e 9c 12 62 b2 d0 6d 4c 04 7a 7a be 4e 00 00 00 52 20 c2 20 a4 00 4a da 36 7e 00 2c 00 ca 30 04 00 20 3e 50 ac e2 18 3c 00 6c 84 0e 36 e0 ec 66 94 00 7e 30 58 cc 72 20 bc 06 00 5e a6 c6 2e 4e f8 e8 e4 c4 5a 72 00 84 00 32 12 f2 bc a4 b4 d8 6a 6e bc 76 82 38 5c 00 00 54 c4 9a a8 40 8c f0 00 26 d2 00 5e 3a c6 ca f4 42 00 00 2a 18 a8 fe 7a 00 42 00 00 1e 90 02 32 fc a4 84 aa 88 e4 4a 78 34 f0 ec 84 80 5a 54 88 9a a4 60 16 b4 00 00 f8 4e 82 b4 a4 6e e4 2e c0 9a f6 00 00 f6 02 80 fe ce 66 a6 00 94 00 10 4c 26 d2 24 a4 f2 c6 0e 00 36 9c e0 a8 b6 36 30 0a 00 1c d4 d4 00 00 00 8e 40 06 58 00 6a 52 0a 70 d2 f6 3c 3c aa 16 30 c6 14 d4 4a 9c 8a 2c 18 00 ee f2 38 f0 3e 00 f2 00 00 6e 5a 34 9c ce 00 16 00 2c b2 ce 3a 00 1a 34 90 8c 00 08 04 1e 00 02 00 00 6c 98 b2 f0 34 4e 62 fe 4a fc 06 1e 00 82 ce cc c8 26 24 fe a8 be f0 04 00 14 38 00 b0 b0 04 2a 28 78 e6 90 5a 1c 6e 00 48 4c 0c 08 36 d8 c6 0e 10 b4 36 5a 18 72 00 d4 86 46 04 00 00 7a 76 56 fe 28 72 6c 7e c2 1c 00 28 60 8e 00 32 96 82 04 00 5e cc 22 1e b4 42 36 7e 24 90 00 b8 e4 bc b2 7e fe be 08 06 00 78 00 00 9e 14 34 00 5c 40 60 0a e2 92 04 3c 72 00 00 c6 32 00 9a 78 60 de 42 6a 7c 6a 8a 2e ee d4 5c ee 0a 2c 00 3e 00 a6 18 9a ba d2 74 ca e4 4e a4 00 d2 0a 6c 00 30 ac b4 1c 7a 00 5e 18 00 7a ae 54 e4 e4 00 04 58 60 78 58 ba e0 38 cc 82 0a 2c 6c 12 9a 56 58 8a 4c 72 16 c6 ce 36 5c c6 00 58 3a 86 00 5c ee 02 12 6c 02 1e 9a 26 00 72 d4 fe 28 4e 00 10 d0 ec 00 00 4a 00 5a b6 24 3c ce 76 48 3e f0 82 2a ac 00 b2 4c c0 a6 74 00 bc 96 48 4e 10 ce 00 6e 56 ae ce 9e 00 00 00 00 bc 72 68 16 00 36 ca 00 00 80 00 0a b6 84 42 00 48 ec 0c a8 06 00 ec 42 88 00 20 00 7c 70 28 08 00 00 00 c0 fe 00 98 18 4e 0a 98 ba ee de 00 00 00 38 26 d2 2c 00 00 8e 02 00 aa 00 e0 00 42 36 5a b4 dc 70 f0 38 3e f8 de ca 80 00 36 ba 86 06 6a ea dc 00 00 00 f0 00 00 a0 50 2e ac 56 00 58 76 9c 84 5e d0 48 9c 40 00 00 dc d2 16 94 00 60 d6 20 76 d4 d2 3c 6c 56 38 7c 88 ba 30 00 7a 7e e0 28 90 18 00 90 96 ea 16 00 62 d4 4e 0e ba 0c 00 ca 3c 20 c6 50 26 82 9a 74 30 00 64 12 00 d4 ee 7c 04 24 90 5a 78 ba 02 82 24 d0 ce a8 b2 9e 6a 76 00 00 24 f8 d2 dc 9e 1c 62 5e 00 0e ca 16 00 1c a6 00 96 00 28 58 98 00 a6 fe e0 f8 88 6a 14 00 b6 4e 0a 02 58 00 00 b0 e8 4a 82 1e 30 00 be 40 00 d4 1e 4c 3c 00 5a 08 b2 1c
*/
