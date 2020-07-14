.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x14bd3, %rbp
nop
nop
nop
add $55428, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm2
movups %xmm2, (%rbp)
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_UC_ht+0x19ed3, %r14
nop
nop
nop
dec %r10
movw $0x6162, (%r14)
nop
nop
nop
sub $43690, %r14
lea addresses_WC_ht+0x1c3d3, %r14
nop
nop
nop
sub %rbp, %rbp
mov (%r14), %r12w
nop
inc %r12
lea addresses_D_ht+0x10553, %r14
nop
and %r9, %r9
mov $0x6162636465666768, %r12
movq %r12, %xmm2
and $0xffffffffffffffc0, %r14
vmovaps %ymm2, (%r14)
nop
nop
sub %r9, %r9
lea addresses_D_ht+0x1c053, %r12
nop
sub %r10, %r10
movb (%r12), %r9b
nop
and %rbp, %rbp
lea addresses_UC_ht+0xd8d3, %rsi
lea addresses_normal_ht+0x10a93, %rdi
nop
nop
nop
nop
inc %r12
mov $83, %rcx
rep movsb
nop
nop
nop
nop
nop
and $63902, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rbp
push %rbx
push %rcx

// Store
mov $0x10b62100000000d3, %r12
nop
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
movups %xmm0, (%r12)
dec %r12

// Store
lea addresses_A+0x1d2d3, %r14
nop
nop
nop
nop
nop
xor $7065, %rbp
mov $0x5152535455565758, %r9
movq %r9, (%r14)
xor $21411, %r14

// Faulty Load
mov $0x10b62100000000d3, %rbp
and $26685, %r12
mov (%rbp), %r9
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'9a': 142, 'ec': 165, '66': 143, 'a2': 111, 'e6': 134, '4e': 146, '2e': 158, 'fc': 166, 'd0': 181, '30': 151, '5f': 1, '7c': 140, '3a': 135, '6e': 156, 'e0': 175, '24': 161, 'be': 149, '72': 152, 'b8': 144, '82': 126, '3e': 148, 'dc': 164, '0a': 122, '62': 142, '38': 146, 'de': 124, 'ae': 124, '7a': 124, '04': 153, '34': 155, 'b6': 119, '48': 145, '20': 137, 'a8': 134, '10': 144, '88': 140, 'ba': 133, '58': 3268, 'fe': 139, 'f0': 161, '1a': 130, 'f2': 163, '6a': 136, 'aa': 149, 'c8': 159, 'bc': 136, '5e': 145, '7e': 125, 'd4': 168, '60': 163, '76': 131, '28': 181, '52': 147, '70': 129, '5a': 118, '08': 124, 'd2': 115, '46': 150, '5c': 154, '32': 136, '68': 135, 'f4': 156, 'c2': 141, '6d': 1, 'f6': 135, 'b0': 135, '42': 137, '96': 125, '14': 161, '92': 133, 'e4': 151, '4c': 164, '8a': 132, '26': 179, '6c': 140, 'ce': 114, '12': 123, '0c': 148, '1c': 168, '44': 158, '1e': 142, 'e2': 147, '00': 329, 'b2': 141, '8e': 130, 'd6': 131, '40': 154, '18': 143, 'ea': 143, '06': 130, '56': 166, 'ca': 120, 'a4': 151, 'fa': 146, 'c4': 180, '2a': 136, '54': 159, 'e8': 143, '80': 145, '9c': 128, '84': 166, '50': 146, '22': 128, '4a': 129, '74': 143, 'da': 119, '16': 131, 'd8': 179, '64': 158, '78': 143, '8c': 144, '2c': 153, '3c': 147, 'a6': 141, '9e': 126, '0e': 125, 'a0': 147, '86': 165, '02': 135, '98': 158, 'c0': 164, 'b4': 147, 'cc': 179, 'ac': 145, 'f8': 151, '94': 148, '36': 149, 'ee': 139, 'c6': 171, '90': 136}
ce 58 44 d6 58 ee e8 5a 8e 8a f8 00 68 e0 98 d8 b4 58 26 88 a8 2e 1c 9c b0 f6 58 4c 60 58 6a 36 ba 1c 8a 58 e0 58 72 58 d8 5a 28 4e 46 b0 98 d6 f8 0a 58 ee 58 86 d8 58 aa cc 1a 06 06 38 a2 b2 32 58 58 16 ce 58 d8 30 fc 04 84 b2 6a ea 3c f0 d4 d2 3a d2 8c 48 60 16 7e 98 a6 94 74 c2 26 58 4a 58 92 58 76 b8 58 dc f4 30 62 16 ee 80 c8 c2 8e ec 02 06 58 30 58 64 a0 7c 78 f8 6c 72 8e 58 b4 e0 58 60 58 14 e6 58 58 64 82 e0 9c 72 18 3a 7e aa 98 74 58 58 58 1e 2e b8 1c 2c fc e2 96 54 06 00 34 a0 2c 58 02 44 00 be 66 90 58 80 3e 0c 86 58 20 22 24 fe 04 98 bc 94 18 b8 64 58 b8 64 6c 5e 5a 68 b0 a0 8a a6 06 20 8c 70 7c b6 02 58 ea d6 f0 62 28 d8 c4 c4 3e 8c 58 58 12 5c 16 2e 48 9a 26 1c 6a 64 58 58 0e 14 a4 56 98 86 1c 36 b8 38 16 fa 7c 62 4a b4 60 1c 34 d2 32 da 0a 30 c8 c0 3a 5a 58 34 80 58 88 00 9e 92 58 24 52 8c f0 58 fc 58 d2 a8 12 00 02 38 72 52 2c 44 70 86 0c b8 b2 dc 58 1a 4c 42 4a 98 6c cc 58 0e 90 3e c8 08 d4 58 34 58 58 bc 62 aa 82 8e ea 50 fc 14 20 40 ac cc 7e e4 8c 7e 58 7c 2c 44 4c a4 cc 58 32 aa 9e 54 28 f8 52 e2 58 98 e0 62 f8 26 4c dc 58 74 92 8c f2 76 58 70 7e 64 9a 70 8e 02 16 aa 0e aa 58 02 ca 08 e8 3e 76 24 9e 32 64 3a 06 60 a2 f6 f0 48 14 10 02 f0 60 58 8a 1e 3c 58 60 fe 14 30 14 ae 58 9a f6 62 02 1a 02 7e 18 1e ea 66 fc 9c 58 e2 92 bc f0 2c e4 a6 5e 34 32 58 b2 3c ba 2e 88 66 5e 2e d0 c4 b8 40 02 4a 72 06 48 b0 46 c8 30 58 9c 58 88 78 28 42 f8 f0 20 c0 58 a6 56 1c 64 94 58 f0 ea b0 58 c4 f0 6c 00 20 94 38 da da 72 00 54 02 0e 82 98 58 f0 aa 26 e6 f8 d0 fe 42 4a 70 4e 1c 58 8e 98 32 22 58 e4 7c a8 28 c2 2c ae a2 62 58 aa 5c b6 ae d0 60 90 ea 50 66 4a e0 74 5c da 20 50 30 ee 04 88 3a d8 58 fc b6 58 b6 3a 52 e0 d0 78 92 5a 08 ca c4 f0 38 b2 bc 58 fa 40 58 d0 c6 aa c2 32 38 56 b2 36 22 56 58 78 fa 18 8c 58 de 80 58 7c b8 08 58 2e ba 60 5c 58 64 d8 b4 9e ba dc 7e 36 ae a6 58 f0 1e e8 ba 94 98 b2 58 92 f2 fc 74 b0 ca f6 d4 58 3a 82 9e 4a bc 58 58 e0 cc 34 58 58 e4 44 88 68 98 54 44 58 b6 58 3a 22 f6 f0 04 56 ba 74 46 02 18 78 88 b8 d8 00 20 96 fc 52 58 bc 5e b6 32 fe 00 7c fa 00 7a 5c cc 56 5e 48 92 d4 ca da ec 58 28 24 6c 58 e0 58 da 38 c2 d2 5a ec d0 58 c8 38 a8 58 f8 da 58 a6 94 c8 62 b2 4a 58 ee 26 cc ae fe d4 58 02 58 94 7e 20 f0 90 00 5e 58 40 82 12 4a 52 32 7e 06 d6 58 ae 04 c2 6c 92 fc e6 58 3e a0 f4 cc 1c 98 48 80 58 58 c4 58 ce 58 38 aa 58 ec 5c d0 58 3a 3a 4c d0 ac 9e 46 40 58 68 10 7a 58 b0 08 1e 36 50 fc 72 dc e8 f8 78 70 16 30 a6 a2 58 36 5c de 58 a6 a6 92 d2 b4 58 54 34 58 86 60 58 58 78 fe 54 54 74 fc 70 2e 26 58 58 94 30 32 44 cc 84 a0 c6 38 ec 00 86 ca b6 58 22 b2 30 e8 a8 08 f8 58 7e 6c e2 58 86 a0 72 ae c6 96 40 aa 5e 86 2a c0 1a a8 b0 a6 b0 30 98 dc ee 2c 4a 66 00 0a 58 12 04 96 8c 90 20 aa 58 5a 58 e8 26 fc dc 58 94 90 f4 d8 58 72 58 f4 2a 1e 02 50 86 fe 00 3c 30 f2 46 b8 92 32 86 e0 58 6e 9e 1c 2e ae 58 e6 ac 58 ec 8a e8 0a fe f4 a2 82 ae b0 d4 54 d6 58 3c 30 a0 58 00 42 7c 82 80 58 58 e8 76 78 90 0c 24 4e 3c 3a 56 1c 8c a0 58 c2 de 7a 8e 2a 26 26 de 9a 14 20 9a c8 90 8e bc 58 d8 ac ce 58 28 58 42 5c 86 b0 d4 66 04 90
*/
