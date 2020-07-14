.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x14da1, %rsi
nop
nop
nop
nop
nop
xor $17989, %rdx
movw $0x6162, (%rsi)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x7da1, %r10
nop
nop
sub %rbx, %rbx
vmovups (%r10), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r8
nop
nop
sub $48504, %r8
lea addresses_normal_ht+0x93dd, %r13
nop
nop
nop
cmp $19299, %rbp
mov (%r13), %r10w
nop
nop
nop
nop
and %r8, %r8
lea addresses_normal_ht+0x1b7a1, %rsi
nop
nop
nop
nop
add $28531, %r8
mov $0x6162636465666768, %r13
movq %r13, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
nop
nop
add $8554, %r13
lea addresses_WC_ht+0x3ab9, %r13
nop
nop
nop
nop
dec %rdx
mov $0x6162636465666768, %rbx
movq %rbx, (%r13)
nop
nop
nop
xor $32149, %rdx
lea addresses_WC_ht+0x39a1, %rsi
lea addresses_UC_ht+0x3245, %rdi
nop
nop
xor %r10, %r10
mov $63, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x1da1, %rsi
lea addresses_WT_ht+0x1a371, %rdi
nop
nop
nop
nop
sub %r8, %r8
mov $125, %rcx
rep movsl
nop
nop
nop
add $23768, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rbx
push %rdi
push %rdx
push %rsi

// Store
mov $0x5a1, %r14
nop
and %rbx, %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm5
movups %xmm5, (%r14)
nop
dec %rdx

// Faulty Load
mov $0x5a1, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %r8
vmovaps (%rdi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r14
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'e2': 156, '1c': 148, '96': 168, 'cc': 184, '68': 156, 'a2': 177, '80': 69, 'a6': 163, 'f6': 148, 'c4': 146, 'c2': 147, '36': 163, '6a': 150, '64': 151, '3c': 169, '4e': 165, '62': 152, 'b6': 152, '50': 146, '1e': 141, '04': 158, 'a8': 171, 'f8': 143, '08': 146, 'f4': 175, '58': 1960, 'c6': 160, '82': 162, '6e': 148, 'c0': 118, '22': 134, '94': 164, 'ca': 175, '0e': 144, 'b0': 71, '0a': 148, 'd4': 141, '18': 170, 'd0': 123, 'ae': 142, '38': 182, 'ee': 176, '66': 164, 'fc': 150, 'da': 144, '34': 155, 'ac': 174, 'e0': 166, '40': 182, '90': 174, '72': 167, '02': 159, 'a4': 151, '00': 368, 'ec': 180, '8e': 161, '98': 132, '10': 117, '42': 161, '9c': 179, 'b2': 142, '20': 86, '12': 150, 'be': 157, '74': 161, '7c': 168, '5e': 159, 'f2': 164, 'c8': 148, '8c': 164, 'd8': 166, 'a0': 157, 'ea': 166, '52': 159, '48': 149, '2c': 167, '16': 163, 'bc': 158, '7e': 169, '92': 175, '32': 157, 'e8': 153, '88': 149, '8a': 155, '7a': 156, '3e': 155, 'd6': 169, 'ba': 145, '76': 158, '54': 150, '56': 156, '3a': 147, '4c': 161, '28': 173, '60': 162, 'dc': 176, 'b8': 160, '4a': 158, 'de': 174, 'aa': 151, 'fe': 163, 'fa': 139, '2e': 159, '6c': 138, '14': 161, '84': 170, '78': 168, 'd2': 155, 'e6': 146, 'e4': 144, 'ce': 128, '70': 74, '26': 169, '44': 158, '24': 140, '5a': 171, '2a': 153, '5c': 169, '46': 149, '06': 156, '1a': 160, '0c': 165, '9a': 145, '30': 168, '86': 157, 'f0': 152, 'b4': 155, '9e': 178}
58 d8 f2 58 42 e2 d4 58 ea 0c c6 44 8e 00 52 54 44 5c 7a 9e ca ba 72 e2 5e a8 b4 e8 dc 58 5e 7a f8 24 86 ae d0 64 b8 40 1a 8e 74 8c 5a 6a c2 c6 3e 12 a4 1a 00 02 be da 58 00 dc b6 88 32 a6 16 4e 80 04 ea 58 70 da 4c d8 7c 28 4a 4a 0c 42 00 e0 58 f2 8e 64 40 58 7a 18 4c 46 92 3c be 9a b6 f6 58 72 d0 7c 5e 30 5e ca 82 ce 2c f2 58 3e 0c bc 76 58 ee 58 60 02 82 16 64 74 90 bc 72 cc 86 26 58 2a b0 00 8a ae a6 ca e4 32 04 c2 44 54 38 62 b2 f8 10 16 5c 6e d6 d2 0a 34 58 c0 08 e8 58 58 78 58 04 de 58 06 f0 58 9e 76 58 fa 58 58 58 14 fc 82 f0 58 58 6c 0c f4 ec 32 6a f2 00 58 58 58 40 0c 1e b8 88 f4 10 48 56 86 d2 32 58 58 58 58 a0 d4 00 2c 92 8e 58 58 78 d8 bc 7e d6 a8 56 94 5c 4a 74 f0 30 9e 4c 48 ea 9a e0 c8 58 cc 58 f0 f4 96 94 84 d6 58 2a 84 06 68 de c8 9a 06 aa d2 58 be ae ce 22 2c 58 6a 18 e2 66 00 0a bc 9e bc 14 c6 64 58 8a 9c 60 60 6e 2c 24 58 22 94 96 b2 4a 34 58 fe 58 58 e2 58 c8 5c 7c b2 08 9a c6 54 1a 08 ae 44 aa 58 b4 9c 64 26 2c 18 16 3c 5e 0a a0 e8 26 0c e4 cc 28 0e 5a c0 38 58 ae ca 82 82 ac fa 84 14 46 f0 58 de fe 90 cc a0 5c 5e 9c 86 90 fc ae 2c 54 48 44 5a 86 32 9c d2 58 6c 14 12 da 58 8a a0 da 50 78 6e 12 58 60 4a 52 e2 ac a8 9c ca be 3c 90 e0 58 7c f4 a4 28 30 00 d2 fc ba ac a6 10 aa ce 3c 28 5c a8 80 ec 9e ba 96 7a 6c 82 ec 2a 86 52 5e 4e 94 da ac 20 a8 08 c2 c8 38 34 5c 5e 3c d4 4e a6 98 12 58 74 60 38 60 58 0e 4e 56 ce 06 76 26 00 64 d2 c0 9c 36 3a d8 b6 92 48 70 28 b2 ea e2 58 22 2e e8 00 20 60 36 12 3c 54 02 38 3c 58 c0 18 8c fc 32 e2 28 f6 8a b4 d8 58 48 36 42 ae 9e 30 80 6a b8 c0 7c fa 3c 48 62 c2 26 c6 74 52 ea 7c fe 34 62 b2 48 be 7a a2 b6 86 0e 7a 1c 36 40 04 36 a2 8e 7c aa ae 50 e6 74 a8 6e 58 2a 0c 6c 00 b6 0a 7e f8 86 2a 5a 58 d8 e8 00 30 d2 7e 94 ee 3c f6 c6 34 32 6a ee 58 b4 c2 66 50 98 86 fe dc b4 32 68 4c 88 be 58 2c 1a 26 8a 54 16 72 6a f8 2c 1a a2 7e 9c f6 58 8e e8 72 48 ca 4a 6a dc b2 58 e6 12 30 46 46 a4 82 4c f4 b4 cc 30 06 92 ac 00 84 a0 68 7e de a4 28 4a b4 ce be e2 58 64 58 f2 30 52 58 b4 62 00 0c 64 ae d8 ba a8 64 52 f2 0e c6 c0 a8 d2 b2 9c 60 50 2c ec 70 50 28 0a 74 7e fc 58 2a 7a 5c ee f4 26 14 20 36 74 74 48 7c 7e 3c 46 9a 5a 06 26 ea 8e 2a 06 64 a2 7a 18 5c 06 bc c6 58 04 1a 4c ce 5c 88 96 48 2e de 3c f4 82 6e fa c2 ce 52 6c 7e 8a fc 9c 7c 9c 0a 10 32 8c ac 28 d2 f2 5e 04 08 f0 f0 46 e2 58 fc da 5a da 58 44 52 56 16 86 84 3e a4 d8 a2 44 60 98 92 b0 0a 5e 02 1e 9a 6c 3e 08 16 ac f2 60 c4 ca 00 4a 4c 58 ea 58 52 9c fc 24 1a c6 46 bc b4 58 dc 00 40 82 d2 92 2e 50 8a bc dc 6c 12 50 58 96 88 bc ea 7a 36 36 6a ca 58 f4 58 e4 2a 94 7e 04 dc 58 8e dc 7a 4c c8 02 44 40 78 96 58 30 60 26 dc 58 aa 3e a0 5c f2 88 40 16 fe 4e ea 58 b8 12 d2 ca 36 d2 c0 cc 68 00 f4 ec c8 3c d6 34 f4 6c 14 b4 a0 d4 dc 94 76 9e fc 28 2c f8 c4 ae 96 58 58 5a 46 8a 8e a8 c2 b8 dc 58 56 72 96 42 08 66 26 ba 32 dc 74 a6 7e 66 9c 38 58 c8 5c 2a a4 40 02 52 32 4c b6 66 40 e0 58 38 a2 f4 90 22 e2 58 ce 58 48 f8 e4 c4 d4 14 90 94 5e fa e4 00 e6 6e 58 ee 7a 46 1a 64 00 d6 4c 7c 8a 64 08 a8 c0 12 86 34 06 f4 52 16 5e 58 2e 7c d6 b8 80 02 34 7e 72
*/
