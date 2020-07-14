.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x168be, %r12
nop
nop
nop
nop
nop
xor $25159, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
and $0xffffffffffffffc0, %r12
vmovaps %ymm2, (%r12)
sub %rbp, %rbp
lea addresses_normal_ht+0x12ebe, %rsi
lea addresses_D_ht+0x5ebe, %rdi
nop
nop
nop
nop
and $61434, %r13
mov $21, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $50014, %r12
lea addresses_WC_ht+0x8b7e, %r15
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %r12
movq %r12, (%r15)
nop
nop
add $35587, %rbp
lea addresses_D_ht+0x3bbe, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
xor %r12, %r12
mov (%rbp), %edi
nop
sub $45310, %r13
lea addresses_WT_ht+0x1c8be, %r13
clflush (%r13)
nop
nop
sub $60452, %rbp
mov $0x6162636465666768, %r15
movq %r15, (%r13)
nop
nop
nop
nop
sub $44594, %r12
lea addresses_D_ht+0x6879, %rsi
lea addresses_normal_ht+0x11cbe, %rdi
cmp %r15, %r15
mov $94, %rcx
rep movsl
nop
add $6961, %r12
lea addresses_UC_ht+0x10dca, %r12
add %rdi, %rdi
movl $0x61626364, (%r12)
nop
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x68be, %rcx
nop
nop
nop
xor %rbp, %rbp
mov (%rcx), %di
sub %rbp, %rbp
lea addresses_UC_ht+0x1e89e, %r13
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
and $0xffffffffffffffc0, %r13
movaps %xmm6, (%r13)
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x19a4d, %rbp
nop
nop
nop
nop
xor %r12, %r12
mov (%rbp), %r13w
nop
nop
nop
nop
sub $37232, %rbp
lea addresses_normal_ht+0x1863e, %rsi
lea addresses_WT_ht+0x31e, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $21, %rcx
rep movsb
nop
nop
nop
nop
nop
add $59428, %r13
lea addresses_WT_ht+0x44be, %r15
nop
nop
nop
nop
nop
xor $2897, %rcx
mov (%r15), %rdi
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x129f4, %r10
nop
nop
sub %r13, %r13
movw $0x6162, (%r10)
nop
nop
nop
add $49184, %rbp
lea addresses_D_ht+0x68be, %rsi
lea addresses_A_ht+0x9fe, %rdi
nop
nop
nop
mfence
mov $119, %rcx
rep movsw
nop
nop
nop
and $32239, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_RW+0x1f8be, %r14
nop
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm0
movaps %xmm0, (%r14)
nop
nop
nop
nop
add %rcx, %rcx

// Faulty Load
mov $0x3368e300000008be, %r13
clflush (%r13)
nop
nop
nop
xor %rax, %rax
mov (%r13), %cx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'34': 158, '6a': 116, '08': 156, '4e': 149, '4c': 126, '66': 142, '72': 149, '7a': 132, 'fa': 161, 'c2': 147, '96': 120, '24': 149, '0c': 164, '5e': 166, '12': 158, '9c': 141, '3e': 142, '28': 160, '36': 156, 'f8': 154, '86': 148, '56': 136, '80': 141, '76': 142, 'ba': 148, '26': 137, '50': 145, '0e': 173, 'e2': 138, 'ae': 154, '46': 127, 'ca': 165, 'ac': 146, '04': 149, '92': 160, 'e6': 150, '16': 136, '2e': 156, '82': 119, '54': 132, 'f4': 126, 'b6': 137, '20': 166, '2c': 149, 'ea': 150, 'c4': 139, 'f0': 155, '7c': 138, '70': 160, 'b8': 149, 'a2': 164, '58': 2958, 'd8': 127, 'b2': 136, '94': 152, 'dc': 143, 'a8': 168, '3a': 127, 'e4': 135, '90': 150, 'cc': 161, '2a': 137, '4a': 166, 'bc': 150, '0a': 155, 'fc': 158, '60': 149, 'ee': 147, '6e': 154, '38': 145, '5a': 128, '40': 146, 'f6': 157, '30': 160, '10': 161, '00': 169, '84': 139, 'e0': 146, '42': 180, 'be': 171, '14': 127, '8c': 159, 'ce': 176, '52': 142, 'd6': 133, '9e': 143, 'f2': 156, '06': 171, '8a': 153, '64': 155, '98': 159, '1e': 147, 'd2': 167, 'da': 136, '22': 129, 'c8': 166, 'fe': 157, '62': 122, '18': 140, '9a': 162, 'a0': 143, '3c': 141, '74': 154, '68': 165, '1c': 149, 'c0': 175, 'e8': 147, '02': 147, 'de': 131, '88': 173, 'ec': 151, 'aa': 147, '1a': 163, 'b0': 145, '8e': 138, 'a4': 140, '44': 144, 'a6': 173, '7e': 176, '78': 152, '32': 129, '6c': 130, 'c6': 145, 'b4': 148, 'd0': 129, '5c': 146, '48': 147, 'd4': 145}
58 d0 a6 2a a6 1a 18 58 58 0e 58 b4 3a 58 12 52 1c 58 e8 92 58 d2 26 70 42 a6 58 20 a8 98 58 94 5a 78 88 d2 56 00 00 f4 58 2e 6e 98 a8 78 32 42 0e 20 d6 40 58 92 e6 04 d4 88 e6 4a c4 c4 5c cc c8 58 a6 ca c4 4e 7a fa 80 18 92 dc 94 aa 10 50 bc ca 4a c8 90 d0 5e ba 54 5e 02 e2 6c 48 5c 84 6e 0c 46 88 d6 f8 ca f6 38 de 02 58 80 20 f2 a4 6c a8 8e 2c 54 ca 60 9a 8a 58 42 6e e8 74 9e 1e 58 a0 20 0c e6 76 9e e6 3c 58 c0 c0 b0 40 82 e6 70 86 ba 58 2c 10 58 3a 2e 26 ee 2c c8 e2 4e 58 4e d8 70 40 c6 58 a2 66 58 f8 d8 58 10 b8 94 1a f6 58 be 8e 86 58 00 14 9e 78 e2 b4 1e 0e e0 52 54 58 2c 7c c2 58 3e 8e f8 8a 58 c4 a6 40 30 e6 a6 ca 46 e4 f2 8a 9e b0 aa 58 72 ca 58 28 3c 58 e0 e4 8a 6e 10 9c e6 a6 d6 28 e6 10 a0 32 00 d2 5c 14 66 3a 58 f2 70 58 58 6e 2c 58 10 c8 62 88 c8 5e 58 a2 88 16 62 22 2e ee da 2a 88 58 e0 82 4e 58 00 9c c6 0e 8a a0 ae 36 58 b4 3c d4 9a fc 58 b0 52 40 80 f2 80 98 1c 66 fc 58 58 e6 c8 e8 b8 d0 a8 80 02 fa 58 68 40 06 58 2a 04 c0 26 6c 88 12 ca 34 58 9a 58 58 58 ae 58 a8 c6 1a 2c de 58 58 88 58 34 58 58 28 c0 5e 98 ca 38 84 5a 6a 32 48 aa ca ae 5a fc 8e 02 d0 46 46 2e b4 02 3c 62 34 e2 58 58 68 02 72 72 72 24 94 b0 ee 70 b4 ee d0 86 10 96 42 58 d0 3c d6 72 5a c2 08 58 22 58 26 58 da 32 58 ce 08 5a 52 58 bc 2c 50 fa 58 50 14 58 78 a2 1a e2 80 2c 88 c4 58 54 7e 60 72 58 f2 c6 3c 90 fc 58 58 2e 5e b8 ea 28 22 b2 98 a4 26 3c be 96 ee 58 0a b6 84 dc c8 58 58 58 d4 0c 7c 58 58 52 00 08 34 fc 20 50 58 f2 58 c6 58 58 a6 58 a4 e0 58 ce c0 12 20 1a e2 1a e8 28 88 be 7a b6 f2 ea 78 b8 08 48 a0 1c 54 5e c4 52 06 e4 88 02 c8 14 96 86 c6 b0 7e e2 1c b6 58 78 3e 48 58 f6 9e 8c ae 32 52 58 0a 0e 6e e4 d8 4e 7e d4 e4 86 e6 72 58 06 da 58 d2 a8 94 42 48 d2 58 56 22 c0 54 7c 02 d0 34 52 14 e2 60 c2 64 ec f4 dc c2 34 62 70 fe 58 dc 58 6c 9e f0 d2 1a ee 0a da 90 c4 9a ce e6 12 ce d0 96 18 ea 58 24 3a 6a 30 50 fe 4a 06 be 14 58 5e 58 d4 58 2c f6 58 76 24 00 92 3c 58 b8 84 26 66 5e 04 fe 58 46 ca 58 58 1e dc 58 f0 56 bc 44 58 9c ac 34 18 34 26 50 46 58 58 7e 58 4c b8 aa 58 58 f2 58 0e 24 de a2 c4 e4 7e 58 c0 80 dc c6 76 88 30 8e 10 9e 6e 46 ee e6 78 08 2e a8 74 7e e0 dc 52 8a 12 7a 22 f6 58 72 8e 0e aa f4 fc 58 ac 98 06 02 58 e4 ba 58 46 1a 50 04 e0 6a 3c 7a 8e 8a ac 74 c0 8a 26 ac 92 ac e6 82 06 fa 58 14 fe 4c 6e 8e 6c 58 58 a8 44 34 8e dc 06 16 58 58 c4 02 58 f8 98 a4 c0 e6 48 58 b2 4a 84 c0 a0 ac b2 44 9a ea 68 ca 6e ee 70 16 a2 06 62 28 b8 de 36 fc 04 4c 78 90 58 ea 58 e2 84 e0 1c 6a 9c 64 f8 58 58 5a 12 58 f0 d2 be 4a 4a 18 80 60 54 cc 66 50 96 58 a2 ce 38 d0 02 26 2e 3e 2e 5e 3e 7c 06 90 58 82 d4 8e 2e cc f2 92 8e b4 f2 0a 84 c2 c0 58 fe 58 00 7e 20 74 2c a2 36 ea ce 50 42 ae 34 98 86 06 7a f8 ba 92 ae fe 58 60 c2 6e 58 66 78 4a 9a 54 1a 12 04 66 0e 4e 3e 58 66 68 54 a8 98 14 28 58 58 9a 2c 10 44 ba 60 ec 50 ce 54 d6 f0 48 3e 60 28 5a 58 06 42 1a 1a e2 02 5a fe 58 c8 a2 58 b6 a2 a8 d8 70 74 36 2a a0 58 f8 b8 68 ec 70 58 3c ac 68 9a 74 58 ac 7e 3a 3c 18 58 94 42 c0 58 7c 26 58 58 54 b8 10 90 6a 50 3e 5e 0a 3a 72 58 b8 92 6c 88 e4 ae 9c 58 72 dc 58 5e 58
*/
