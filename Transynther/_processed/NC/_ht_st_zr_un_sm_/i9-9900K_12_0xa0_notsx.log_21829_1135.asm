.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x195c9, %r15
inc %r9
mov (%r15), %r12
xor $28984, %rbx
lea addresses_D_ht+0x6dc9, %rbp
and %r14, %r14
mov (%rbp), %r10
add $60172, %rbp
lea addresses_normal_ht+0xc191, %r9
nop
inc %r10
mov (%r9), %r12w
nop
add %rbx, %rbx
lea addresses_WC_ht+0xa235, %r15
nop
nop
nop
nop
nop
add $40158, %rbx
mov $0x6162636465666768, %r14
movq %r14, %xmm2
movups %xmm2, (%r15)
nop
nop
add $18870, %r9
lea addresses_UC_ht+0x43a9, %r14
nop
and %r10, %r10
mov (%r14), %r9
nop
nop
and %rbp, %rbp
lea addresses_D_ht+0xd0c9, %r9
nop
nop
nop
nop
nop
and $48203, %rbx
mov (%r9), %r10w
nop
nop
nop
nop
dec %r10
lea addresses_D_ht+0x6ef5, %rbx
nop
nop
nop
nop
nop
sub %r12, %r12
vmovups (%rbx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbp
nop
nop
nop
nop
nop
dec %r12
lea addresses_D_ht+0xdc4d, %rbx
nop
nop
nop
nop
nop
cmp %r14, %r14
movw $0x6162, (%rbx)
nop
nop
sub %rbx, %rbx
lea addresses_normal_ht+0x135c9, %rbp
cmp $10245, %r15
mov (%rbp), %r12
nop
nop
nop
nop
nop
add $56075, %r10
lea addresses_A_ht+0x3099, %r12
nop
nop
nop
and %rbx, %rbx
mov $0x6162636465666768, %r14
movq %r14, %xmm0
movups %xmm0, (%r12)
xor $3887, %r12
lea addresses_normal_ht+0xa4eb, %rsi
lea addresses_A_ht+0xce1d, %rdi
nop
nop
nop
nop
nop
add %r15, %r15
mov $39, %rcx
rep movsq
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_D_ht+0x176c9, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%rbp), %cx
nop
nop
inc %r15
lea addresses_WC_ht+0x101c9, %rsi
lea addresses_A_ht+0x12ac9, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $15, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rbp
lea addresses_D_ht+0x117c9, %rbp
nop
sub $51651, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rbp)
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r8
push %r9
push %rbx

// Store
mov $0x4b4d2f00000005c9, %r8
nop
nop
nop
nop
nop
inc %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%r8)
nop
nop
nop
nop
inc %r11

// Faulty Load
mov $0x4b4d2f00000005c9, %r12
nop
nop
nop
nop
sub %r13, %r13
mov (%r12), %r8w
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'e2': 168, '1c': 151, '96': 151, '1a': 171, 'cc': 161, '68': 181, '80': 147, 'a6': 137, 'f6': 195, 'c2': 162, 'ca': 159, '36': 142, '6a': 139, '64': 135, '3c': 177, '4e': 151, '62': 151, 'b6': 176, '50': 174, 'f4': 162, '04': 155, '30': 162, 'f8': 187, '94': 150, '08': 150, 'c4': 172, '58': 629, 'c6': 162, '82': 155, '6e': 170, 'c0': 174, 'a2': 164, 'c8': 154, '0e': 138, 'b0': 150, 'd4': 219, '18': 154, 'd0': 191, 'ae': 150, '38': 168, 'ee': 160, '66': 159, '6c': 139, 'da': 195, '34': 133, 'ac': 187, 'e0': 163, '40': 171, '90': 146, '72': 145, '02': 157, 'a4': 156, '00': 979, 'ec': 157, '8e': 142, '98': 170, '10': 158, '42': 145, '9c': 155, 'b2': 161, '20': 142, '12': 153, 'be': 167, '74': 134, '7c': 176, '5e': 149, 'f2': 182, '8c': 177, 'd8': 159, 'a0': 145, 'ea': 173, '52': 175, '48': 172, '2c': 171, '16': 159, '22': 155, 'bc': 140, '7e': 157, '76': 164, '0a': 152, 'e8': 165, '88': 156, '8a': 180, '7a': 174, '3e': 159, 'ba': 175, '92': 159, '24': 173, '32': 166, '54': 140, '56': 146, '3a': 166, '4c': 144, '28': 126, '60': 136, 'dc': 167, 'b8': 140, '4a': 149, 'de': 149, 'aa': 184, 'fe': 196, 'fa': 183, '2e': 170, 'fc': 202, '14': 156, '84': 174, '78': 152, 'd2': 160, 'e6': 185, 'e4': 184, 'ce': 156, '70': 157, '26': 145, '44': 145, '0c': 148, '5a': 156, '2a': 147, '5c': 152, '46': 167, '1e': 179, '06': 151, 'd6': 157, '9a': 160, 'a8': 149, '86': 138, 'f0': 173, 'b4': 159, '9e': 150}
f8 7a 00 7a f4 8e 70 50 de ba 00 5c 8c a6 d4 d4 8c 4a 40 ea c8 d2 e0 5a 1c b2 30 3c 86 ba 46 34 58 4e e6 0a 8e 40 9e 00 00 68 b0 6a 98 a0 70 3e 78 de ba 78 5a 8c d4 84 28 60 e6 5c 70 1e be 20 6c ec 1a e8 c4 b8 ec e6 08 76 6e 10 9a 3a c0 a6 5c 64 02 ee 90 8a a0 f2 80 b6 c8 b6 08 f6 dc d8 be 82 e2 56 34 9a 02 ce 00 b4 4c 4c 00 6a f6 00 0a 9e d6 9c 88 50 ba 30 00 42 d2 ca 98 1a 4c 3a fe 3c 36 aa 0a ca 86 90 8e 26 16 a4 ce 2e a2 cc f6 48 02 c6 a0 ea 22 76 92 2a fc ac 0c a8 22 d6 f6 f8 84 ac a2 d4 2a fc 12 00 90 3a fc 6e bc 76 4c 00 74 68 f6 02 de 90 e6 bc dc 30 58 dc 22 ea 2e ee ae 9c 46 00 48 64 a6 20 7c a4 f8 ea d4 9a e2 02 38 f2 e4 82 f8 62 1c f8 48 e8 ac ac be da 86 32 c0 9c 50 4c cc 02 fa 4e 4c 6c 20 84 d8 f4 b4 fe 60 a6 7e f0 a6 98 00 96 42 ec ce e0 5a f4 98 30 52 12 fc 52 d4 a8 02 00 64 80 68 d0 c0 e8 24 34 00 f0 0a 2e be 1e 02 7c f2 f4 0a b0 5a 88 f4 7c a6 48 58 26 a6 50 6a d6 08 4c d6 4c f8 8a ec 70 a8 00 78 b6 c4 64 5a b0 a2 cc ae 68 6c 1a 86 5c 0e d4 20 ba 8a ca 12 3c 54 ea 78 58 f6 4c 50 4e f4 d4 34 6e e2 e0 58 e4 26 f8 82 a2 54 90 9e ce d0 82 7a 1e bc 72 e2 40 12 ae 2a 58 42 fe da 24 20 3a 02 f8 18 68 06 96 fc 60 32 6a 58 de 14 8c 00 de 78 2e ac 54 56 ba 00 24 78 e8 de fc ee 08 62 d8 bc 00 18 98 d2 6c 58 f6 2c 92 de f6 1a aa 34 58 e8 d4 8e f0 22 70 b8 28 68 0c 7a a6 5e 88 d8 3c 64 a6 ac 58 e0 46 78 0a 02 fe e4 ec 3e 88 00 58 94 32 56 68 54 2c 40 7e 5e ac 92 2a d8 72 7e 18 00 a0 0c 1e b6 bc ce 0e 0e e8 3e 7a dc 42 8e e2 32 ba d4 9a 10 48 7a 00 00 c0 38 a2 34 3e 3e a8 dc 00 5c 0a 32 7e 9a 18 1c a6 e8 3c 10 b4 02 22 d0 0e 0c 08 fe 32 30 8a 16 b4 96 a6 44 00 d2 5a b6 2a a2 ea 16 d2 4c 86 3a d6 58 e6 88 6a f2 ec 9c be 38 44 ce 98 ac 42 70 d0 2e 72 d6 1c ac fe 6c 6e 98 24 a2 f2 3c 9c 20 d0 36 00 96 a4 6a 46 10 26 46 fa a6 f2 8e e2 82 86 d6 00 be 36 ca 60 68 e6 56 1e 6a 58 80 c6 12 4e 9e e8 72 80 da 02 2e f0 8a f8 66 c0 02 00 00 f8 ac c8 38 0a 36 7c f6 3a 8e f0 9a ae a8 c0 60 e0 16 2c 7a ce 4e fa 3c 3c 62 e4 2e 46 d8 14 b6 f8 ce 10 92 38 24 c6 ea f4 28 aa ca d4 10 34 70 54 2a 72 e6 04 50 76 3e 00 c6 de 5e de 9e 20 16 00 d8 06 2a d6 fe 6c 06 f4 48 ac 7a 2a b6 b4 ec 98 28 8c 58 a8 58 76 92 6a e6 5a 48 c0 76 12 52 0c 26 a2 88 2c 5a 76 f0 d6 08 a2 c4 1a a6 62 ca 60 5c c8 e4 fe c6 e2 80 9e de 72 98 9e 36 da 80 8a 42 74 b8 b4 58 a0 00 74 18 3a 00 00 0c e4 24 42 a0 3a 46 26 84 1a 30 b8 00 76 10 00 00 62 4e 9a cc 1c e8 a2 1c 8e 74 10 92 a0 1c e2 12 c8 f4 74 58 58 5a 0a 10 c4 d0 6e f2 da a0 00 de 3a 90 e2 d4 ac 6e bc f4 14 00 96 00 00 16 b0 e2 cc 5c 36 ec 50 00 22 bc fa 04 00 2a 7e 9a fa 22 a4 c6 00 00 60 6a aa 00 ac 84 1a dc 20 14 44 a2 ee ba de 5c 68 e6 78 d6 58 24 94 c6 ba 02 3a 7c e0 e2 00 f2 bc 0a 1a c6 04 0c 2a f0 12 fc 14 24 b8 ca ac 06 b6 00 bc 14 c0 3e ae 7a 7c 30 ea 7c 8a 50 58 8c e4 2c 58 40 00 d2 6a 56 2e 6e b0 e4 8a 12 1c b2 8a ac 30 14 64 ac c6 d0 86 92 f6 22 1c 32 c4 5c 6e 66 66 d4 14 90 7e f0 02 36 fc cc 3a 3c 80 8a f4 08 a0 bc 00 68 4a 60 00 52 38 4e 62 9a c6 38 6c 6e fe 00 90 5a bc 56 f6 5a 9e ee f6 2e 06 f0 b4 c0 86 2a fc 7c 34 5e 02
*/
