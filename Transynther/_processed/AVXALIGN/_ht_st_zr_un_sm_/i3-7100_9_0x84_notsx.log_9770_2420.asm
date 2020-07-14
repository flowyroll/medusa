.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1e238, %rbp
nop
nop
nop
nop
xor $30211, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%rbp)
nop
xor $54001, %r9
lea addresses_A_ht+0x19638, %rdi
nop
nop
nop
nop
and %r15, %r15
movb (%rdi), %r9b
add $24111, %rcx
lea addresses_normal_ht+0x30a0, %rcx
nop
add %r9, %r9
vmovups (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r15
sub $37084, %r15
lea addresses_D_ht+0xb288, %r9
nop
nop
nop
nop
nop
and %rcx, %rcx
movw $0x6162, (%r9)
sub $48174, %rbp
lea addresses_WC_ht+0x9838, %rcx
nop
nop
nop
nop
nop
sub $33715, %rsi
movups (%rcx), %xmm1
vpextrq $1, %xmm1, %r15
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x17a38, %rsi
lea addresses_D_ht+0x2c78, %rdi
nop
nop
nop
nop
add $41204, %r12
mov $24, %rcx
rep movsw
nop
nop
nop
nop
inc %r15
lea addresses_A_ht+0xe238, %rdi
nop
nop
sub %rsi, %rsi
mov (%rdi), %ecx
and %r9, %r9
lea addresses_WC_ht+0x6338, %rsi
lea addresses_UC_ht+0x1e438, %rdi
nop
nop
nop
xor $11573, %r9
mov $89, %rcx
rep movsb
nop
nop
nop
cmp $35638, %rcx
lea addresses_UC_ht+0x12038, %rsi
nop
dec %rcx
mov (%rsi), %rbp
nop
add %rdi, %rdi
lea addresses_A_ht+0x1a488, %rsi
lea addresses_WC_ht+0x1c238, %rdi
nop
and %r12, %r12
mov $102, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $42653, %r15
lea addresses_normal_ht+0x1a838, %r12
nop
nop
xor $19316, %rdi
mov (%r12), %r14
cmp %r15, %r15
lea addresses_D_ht+0x10ec0, %rsi
lea addresses_UC_ht+0x1a578, %rdi
clflush (%rsi)
nop
xor $57208, %r12
mov $35, %rcx
rep movsb
xor %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rax
push %rbp
push %rdi
push %rdx
push %rsi

// Store
mov $0x31c65d0000000c38, %rdx
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
nop
nop
cmp $8475, %r9

// Faulty Load
mov $0x31c65d0000000c38, %r9
nop
cmp %rsi, %rsi
vmovntdqa (%r9), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM'}
{'e6': 260, '1a': 11, 'b0': 21, '54': 19, '1e': 25, 'd8': 273, '1c': 15, 'fe': 284, 'e4': 341, '80': 19, '46': 16, '8a': 18, 'be': 16, '0e': 10, '32': 18, 'dc': 247, '76': 16, 'b8': 17, '5a': 14, '7e': 22, '68': 31, '48': 16, 'e2': 267, 'd6': 221, '16': 17, '9c': 22, 'bc': 19, 'f6': 288, 'c6': 258, 'ee': 171, '5e': 22, '28': 25, 'f2': 270, '22': 16, '14': 27, '98': 14, 'a6': 19, '18': 13, '6c': 21, '62': 15, '6e': 11, 'ea': 286, '60': 16, 'a2': 18, 'f0': 284, '0c': 18, '12': 17, 'ac': 13, '2e': 19, 'de': 66, '38': 11, 'ae': 19, 'd2': 271, 'b4': 19, '5c': 18, 'ca': 271, '2a': 23, 'ba': 9, '08': 18, 'a8': 24, '72': 31, '4e': 20, 'fa': 263, 'da': 289, '2c': 18, 'ec': 299, 'f8': 327, 'd4': 304, '9e': 20, '04': 12, '44': 20, 'cc': 65, '66': 17, '82': 19, '9a': 15, '3c': 20, '4a': 18, '36': 15, '56': 11, '24': 16, 'ce': 17, '58': 103, '3e': 24, '78': 20, 'c2': 314, '84': 20, '26': 11, '74': 21, '50': 22, '0a': 17, '30': 15, '3a': 11, 'c4': 249, '90': 15, '88': 21, '8e': 12, '94': 18, '40': 17, '7a': 14, '34': 20, 'f4': 348, '52': 13, '6a': 20, 'fc': 291, 'e0': 297, '42': 24, '02': 21, 'd0': 239, '92': 11, 'e8': 250, '10': 17, 'c0': 40, 'a0': 12, '96': 19, 'aa': 17, '4c': 19, 'c8': 44, 'b2': 7, '06': 17, '20': 25, '8c': 16, 'b6': 24, 'a4': 12, '86': 14, '70': 10, '00': 322, '7c': 17, '64': 19}
2c d6 c4 82 f8 e0 c6 fc 36 68 d4 cc fa dc e0 f6 f6 7e e0 ba 24 6e fe d6 2a ea dc c6 06 30 e2 fc 78 3c ca da f8 c2 d4 e4 ec c6 fc 2e fc e0 f4 f0 1c e0 f8 f6 dc 9c e6 dc c2 e6 c4 d8 e2 e8 00 d2 ca ee f4 fa ca da ea fe c4 f6 d2 76 ea 2c f4 c6 da 00 ee f8 fc dc f4 5e f6 ea c6 d4 e4 e4 1e 24 00 da e4 f8 e2 e4 ca 16 1e f2 c6 d6 d6 00 fa dc d8 00 00 da dc f8 fa 86 f8 e4 a0 c2 e6 d8 ca da fa e4 ec fa f8 00 c4 f4 c6 e0 be 78 fc e4 e0 00 40 dc ca d6 e8 64 5c d4 c4 d0 fc dc ae f8 0a ca c2 fe 42 f8 74 ae e2 f6 c2 7e fa c4 ec ec d4 c4 e6 30 2c e4 d0 02 6c 40 10 f2 e4 00 fc 70 d0 e6 00 da c6 c6 c4 f0 d0 d4 dc f4 d2 d4 d4 e8 e4 e0 f6 e4 46 e2 d2 f0 e0 54 d4 ca e4 de d8 f6 de 88 c6 cc f0 00 f8 42 c4 68 96 fa ee 9c f0 dc 20 fc 98 e4 ee fa c4 e0 5e c2 18 e4 ca 0a d8 c6 dc f0 e0 fa ea f6 84 f4 e4 e2 ca c2 f4 e8 7c f8 00 fe c4 d2 d6 f4 3a e8 1e e0 d4 c2 e2 dc f4 5e ea f0 d6 ae d8 e2 ea e4 d2 fe 50 d4 4c fa c8 20 f8 d8 d6 00 ae f8 d8 be fe f4 fc e4 dc 00 fc e8 da f6 e4 e2 c6 e4 00 28 86 f4 f4 e4 d8 da fa 86 ca 00 f4 e0 ec f4 c4 e8 d2 e6 c2 f8 f0 da c6 f6 e2 d4 f8 f6 8a f4 c2 fc c6 d4 c0 f8 ea d0 a2 e2 ca fc 00 da e8 40 fe ca 0e 6a d6 ec 00 e2 e6 ee e4 da f6 d2 e0 70 e2 f4 d8 da e2 fc 5e 38 c6 fe f4 d8 d2 fc d2 f4 f4 f8 e4 e0 fa d4 2c bc dc ec d2 c6 e0 e0 ec 54 dc e8 d4 58 fe f0 4e e4 e4 a6 d4 f2 fa ca fe d0 f0 dc d0 e2 fe f6 c6 c4 2a 60 dc 72 f4 44 c2 e8 d2 f2 88 3c d0 fc ca c4 ec f6 e8 ec f8 e2 0a 16 e6 c0 d0 e8 da fa e0 f0 f8 fc f4 fc ec 5e e6 d6 ec ec c0 d8 fa 42 fa 3e e8 da 1e 50 c6 f4 58 0c da f4 d6 34 dc e0 d0 58 58 74 58 58 20 d0 58 ac 58 4c 58 78 58 58 d6 58 48 f2 58 58 58 2a 58 50 58 58 58 6c 54 f4 f2 58 fc 58 58 f8 f6 00 ae ea d6 ca f6 dc 5e d2 14 dc 20 ea f4 d6 ea ee fc e8 fe ca e0 e8 ec e6 f4 dc 34 e6 ca f8 da f8 d6 d6 d4 ee d0 00 f0 22 c2 da fc c6 d8 00 c6 f4 1c ea c6 f0 c4 dc f2 f6 e0 d0 f6 c4 e0 e8 a8 c4 e4 d8 7c da fc dc f2 c2 c4 00 c4 ac d4 e8 ea f4 fa e4 be ec 3c 1a cc ee d8 f4 fc ec c2 c6 ee d2 e0 36 d2 5a 16 c6 00 c4 20 5a f6 f6 e8 e0 e6 d4 d8 d0 e0 e2 d4 c2 e4 ca e4 40 ea c2 c2 e2 da d0 e4 ca ca c6 c2 c2 fa 2e d2 dc d0 fa fa ec c6 fe f2 cc f8 e0 f4 f2 f2 e2 ac 00 fe e2 00 dc ec d0 f0 d2 c2 00 e0 e8 ec f6 c2 58 f0 2a ea e4 ec f4 e6 d0 8a ec c4 2e f0 ea d8 e4 c6 e2 fe e6 4e d0 fe e8 f4 02 c8 f0 c4 1e e8 70 e8 f8 d2 ea 00 d2 f8 e6 78 d0 c4 32 7a f8 da 9a f0 68 c2 ca fe dc fa e4 bc f0 c2 da 02 ee e8 4c f4 f4 e6 f6 f6 fe 7a ca e4 ea e8 de f2 e0 f4 e8 d2 ec 2e da dc f2 f6 e0 f0 f0 7e 00 f6 d6 cc 10 00 00 00 d4 86 ee e4 f4 d2 ea e0 c2 fe c4 d4 fa 2a 02 da e8 c2 c6 74 80 9a 56 d0 d8 c4 c4 f2 f4 e0 72 d4 d8 ac e4 c2 32 6e e4 ca ea ca ea fa dc f8 f2 d0 e4 e4 a2 b0 da fc 8a 2e fc c6 dc f6 e4 e0 f4 c6 fc d2 d4 ec f2 fa e6 98 50 e0 fe d6 f4 c6 0a f0 fe e8 f6 c4 d8 9e d2 e0 c2 e2 d2 f0 ec e2 00 e6 e2 8e 52 da da e0 f8 c6 fc ec c8 da ee d0 e4 08 00 18 00 f4 f8 f4 e2 d8 88 2a d4 ca f4 ca f6 f8 dc ea e8 ec da da ea c2 0c e0 fc fc d2 e6 d8 90 c0 d2 f8 5a fc e8 e8 f4 da 00 ea dc 00 dc d8 80 50 f8 e0 c2 76 68 d6 ee d6 4c c6 e8 f8 ea e0 ca fc a6 e8 e4 e8 70 86 e0 de
*/
