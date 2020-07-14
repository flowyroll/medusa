.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x103cd, %rbx
nop
sub %r8, %r8
movups (%rbx), %xmm4
vpextrq $1, %xmm4, %r12
nop
and %r12, %r12
lea addresses_D_ht+0x10b8d, %r10
nop
nop
nop
nop
and $11782, %rdx
movups (%r10), %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
nop
nop
add $7482, %r12
lea addresses_D_ht+0x1132d, %rdi
nop
nop
nop
and $52209, %r10
movw $0x6162, (%rdi)
nop
nop
nop
add $40331, %r10
lea addresses_WT_ht+0x4f8d, %rsi
lea addresses_D_ht+0x6359, %rdi
nop
nop
and %rbx, %rbx
mov $73, %rcx
rep movsq
nop
nop
xor %r12, %r12
lea addresses_UC_ht+0x19fbf, %rsi
xor $56034, %rdi
mov (%rsi), %rdx
nop
nop
cmp $3217, %r12
lea addresses_D_ht+0x12ccd, %rsi
nop
nop
nop
nop
nop
and $34134, %r8
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_WT_ht+0x2f8d, %rbx
nop
nop
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
nop
nop
cmp $39754, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r8
push %rdi
push %rsi

// Store
mov $0x13fc490000000f8d, %r10
nop
xor $45878, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
dec %r14

// Store
lea addresses_A+0x1c2bd, %rsi
sub $41075, %r8
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
nop
and %rdi, %rdi

// Store
mov $0x7f6736000000093d, %rdi
nop
nop
nop
nop
xor %r12, %r12
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
and %rsi, %rsi

// Faulty Load
mov $0x3b4830000000f8d, %r11
nop
nop
and $25908, %r10
mov (%r11), %rsi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 3}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 10}, 'OP': 'STOR'}
{'4a': 6, 'ba': 4, '12': 7, '36': 3, '2e': 6, '92': 7, '84': 5, '48': 2, 'a0': 4, 'e6': 43, '16': 10, '6c': 6, '3a': 11, 'f8': 43, 'bc': 9, '24': 10, '60': 5, '7c': 5, 'de': 8, 'b6': 10, 'fe': 23, '3e': 8, '4e': 11, '26': 8, '6a': 4, '0a': 7, 'b0': 8, 'ce': 6, '68': 6, 'd4': 37, '72': 7, '08': 2, 'f6': 43, '34': 3, 'c6': 3, '86': 6, '9c': 4, '32': 8, '70': 12, 'a2': 9, '88': 7, '76': 6, 'f2': 38, '82': 9, 'c8': 43, '10': 6, 'e2': 54, '04': 3, '56': 8, '5e': 5, '52': 4, '9e': 5, 'd2': 39, '0e': 3, '18': 4, 'ec': 53, '74': 13, 'ae': 8, 'dc': 53, 'b4': 11, 'aa': 3, '90': 8, '22': 4, '78': 3, 'e0': 49, 'ca': 5, 'd0': 49, 'f0': 40, 'a6': 7, 'd6': 7, '1e': 5, 'da': 7, '20': 12, 'fc': 31, 'ee': 18, 'b8': 8, '5a': 6, '28': 12, 'c2': 46, '2a': 5, '02': 4, '1a': 4, 'e8': 52, '5c': 9, 'd8': 36, '40': 6, 'fa': 51, 'c4': 50, 'e4': 45, '4c': 7, '14': 5, '0c': 8, '8c': 5, 'c0': 49, 'f4': 48, '7a': 9, '94': 6, 'ac': 10, '8a': 6, '2c': 2, 'a8': 3, '06': 3, '8e': 7, '54': 6, '00': 281, '3c': 3, 'b2': 6, 'a4': 7, 'be': 6, '64': 4, '38': 8, '58': 1102, '7e': 8, '66': 5, '50': 9, '46': 6, 'ea': 53, 'cc': 6, '30': 6, '80': 5, '6e': 4, '62': 12, '98': 4, '96': 2, '1c': 3, '42': 5, '44': 5, '9a': 5}
58 fa de f4 58 bc 58 70 58 28 58 c2 58 58 58 dc 3a 58 ea 64 46 88 58 dc 58 58 00 d8 58 72 58 2e 58 58 58 46 e2 58 e6 32 f0 00 58 00 fc 58 ce f4 d0 e0 80 70 c4 58 0c 2c 58 cc 58 3e ec da 58 00 ae 00 d8 58 f8 ec 58 58 ac 58 58 62 58 58 58 58 00 58 00 20 00 58 58 00 58 e8 58 fe 58 58 0e 00 c4 e8 3a f4 58 58 fe 9c 6e 58 74 00 c8 58 ec d2 7e e4 58 58 f6 d0 d4 58 d8 82 d8 c4 ec 18 58 f4 c4 44 58 58 a2 58 e0 00 58 58 38 58 a2 58 f2 e8 24 c8 00 f8 f8 00 fc 58 f0 58 00 58 00 58 00 58 d0 58 e4 58 ae f2 58 56 ea fc 26 58 58 58 dc 58 f2 58 f0 58 f4 5c 00 b6 f4 fa 00 ec 58 00 dc 58 00 42 d0 00 56 d8 58 d4 58 58 58 58 58 dc 58 c0 d0 98 54 58 dc c4 f4 58 c8 58 3c d4 58 3a c2 52 c8 3e 58 e2 58 ea ea 58 be 5c fa 58 00 b4 58 58 58 58 38 28 9e f8 ea 62 e2 58 74 dc 58 e6 62 4a 6e dc 58 c2 16 ea e2 e4 c8 4e 2a e0 82 5a 50 c0 58 c4 36 f0 d0 ee ea d2 ca 58 50 58 46 e0 58 58 d0 58 c4 ec 58 66 00 94 a2 58 58 00 16 ea 58 58 b6 90 e8 e0 58 58 2a d0 3a c8 e6 28 58 e8 c8 d4 58 52 ca 58 58 e8 46 58 56 58 e2 c4 58 58 e0 e6 58 00 cc dc 30 f4 58 fa c0 e2 58 7a c8 58 e2 c4 58 82 5c e0 3e ec e4 58 58 58 58 58 f2 58 f2 e4 f6 62 00 00 58 00 e2 58 d4 58 e2 5e f8 ba e4 76 94 82 d0 20 58 58 62 58 58 00 60 c0 d0 00 00 00 fc 82 7a 8a 58 58 00 e8 58 00 e8 fa da 00 58 e8 e2 00 e8 58 f8 58 aa e0 58 f4 bc c2 58 40 bc 58 00 ee 3e 58 dc ea 00 8c 70 4e 58 58 00 c8 ea d2 e0 58 c0 c2 c4 58 00 e4 50 f4 ea de 58 00 58 e2 00 58 e4 00 f0 58 58 ec 58 f0 58 58 58 58 58 00 58 dc f8 58 58 fa 58 92 20 60 58 58 ea 00 f6 dc bc f0 58 c4 58 58 b6 58 58 64 58 22 00 ec e2 fa e4 d0 f6 c8 58 c4 58 d2 ec d4 e6 f8 d0 58 e4 60 f8 58 f8 58 58 58 ac 58 58 ea 12 c2 c0 58 fc 58 58 58 20 58 f2 6c ec 00 ba 58 58 0a dc 58 f0 f8 58 58 58 58 d4 00 d8 3c 58 dc 58 58 00 d2 58 4e d0 58 58 c4 00 9e 00 d6 58 d2 ea d0 58 58 c8 58 58 70 58 58 fc 4c 36 72 58 ea ec 26 00 ea 00 8c d2 58 ec 58 58 00 58 58 58 7a 58 58 00 58 5a f4 00 b2 ee 58 00 a0 00 00 58 58 58 be 58 58 e6 58 dc 58 32 58 d2 58 00 58 ee 58 58 8e 58 58 58 7c 58 58 00 14 de 00 58 f8 58 ce 58 58 4c 58 58 58 a4 58 fc c2 58 58 da d2 58 f0 fa ea 58 58 d0 58 00 58 f6 d2 e0 f4 58 e6 98 08 ae c4 58 58 8e f6 d8 58 e0 58 00 00 10 58 58 14 58 58 58 58 d0 00 58 ec 58 58 c4 d2 58 00 58 e4 c8 f4 d0 58 aa 58 f4 f0 58 fc ce 58 ea 58 e0 58 58 58 82 58 44 58 58 58 00 58 22 4e 58 58 fc ec c0 f4 e4 00 36 d6 58 cc 58 ac 74 ee 00 dc f6 1c 58 ac 3e c6 e2 58 58 58 58 ec f6 58 c4 00 c8 58 58 f4 58 8e fe e2 fe d0 24 ee 58 58 8e c0 e8 dc ae fa 58 e8 e2 f2 58 58 c2 58 58 58 5a 30 00 e0 58 28 58 e8 58 58 c8 f0 e0 d2 00 d0 fa 0a c0 58 c8 58 f4 e4 58 92 58 c6 f6 d8 58 58 c4 d0 58 58 3a d0 4c e8 58 fa 00 b0 58 c0 e0 f6 c0 ec f0 d2 a4 58 00 00 14 f8 58 00 58 f8 58 58 58 58 00 dc ee 00 58 ec f6 24 48 58 58 c4 e8 f0 62 ea a0 00 00 58 58 ec e0 c2 58 58 58 90 58 b2 58 58 00 2e 66 58 58 d2 58 58 d8 58 f8 58 5c 58 00 38 58 58 ee c2 58 4a ec 58 f6 c8 e2 00 da cc a2 58 e8 58 58 58 58 58 58 1a fa 7a 58 58 58 58 fa 58 c4 fa 58 58 58 74 00 84 c2 82 58 58 58 58 00 58 f8 e8 de fc 58 58 c8 58 00 94 58 58 58 9a 58 58
*/
