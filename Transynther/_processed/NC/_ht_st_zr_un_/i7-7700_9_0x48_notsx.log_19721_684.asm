.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1c9f7, %rcx
add %r10, %r10
movb $0x61, (%rcx)
sub $29083, %rdx
lea addresses_WT_ht+0x12e57, %r8
nop
nop
nop
nop
nop
xor $35880, %rdx
movups (%r8), %xmm7
vpextrq $1, %xmm7, %rcx
nop
dec %rbp
lea addresses_WC_ht+0x18997, %rdi
nop
nop
nop
nop
sub %r15, %r15
movups (%rdi), %xmm1
vpextrq $0, %xmm1, %r8
nop
add $45109, %r15
lea addresses_A_ht+0xd697, %rdi
nop
nop
add %rbp, %rbp
movl $0x61626364, (%rdi)
sub %rbp, %rbp
lea addresses_WC_ht+0xf897, %rsi
lea addresses_D_ht+0x1a697, %rdi
nop
nop
nop
add %rdx, %rdx
mov $11, %rcx
rep movsw
nop
cmp $2274, %r8
lea addresses_normal_ht+0x180db, %r10
nop
nop
nop
nop
nop
sub $1127, %r15
mov (%r10), %rdi
nop
nop
nop
nop
nop
sub $63831, %rdx
lea addresses_UC_ht+0x8b43, %rsi
lea addresses_normal_ht+0xee97, %rdi
nop
nop
nop
nop
cmp %r8, %r8
mov $40, %rcx
rep movsw
nop
add $8173, %rcx
lea addresses_D_ht+0x4dbb, %rsi
lea addresses_WT_ht+0xd37f, %rdi
nop
nop
nop
nop
sub %r8, %r8
mov $53, %rcx
rep movsq
nop
sub %rcx, %rcx
lea addresses_WC_ht+0xe497, %r8
nop
nop
nop
xor $22411, %rsi
and $0xffffffffffffffc0, %r8
movntdqa (%r8), %xmm2
vpextrq $0, %xmm2, %rdi
add $733, %rsi
lea addresses_WC_ht+0x6697, %rsi
nop
sub %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
and $0xffffffffffffffc0, %rsi
movaps %xmm5, (%rsi)
dec %rcx
lea addresses_A_ht+0x1ee97, %r15
nop
nop
nop
sub %rdi, %rdi
movups (%r15), %xmm1
vpextrq $0, %xmm1, %rdx
nop
nop
sub $50579, %r15
lea addresses_WT_ht+0x13277, %rsi
lea addresses_normal_ht+0x14037, %rdi
nop
nop
nop
nop
nop
xor $39923, %rdx
mov $43, %rcx
rep movsw
nop
nop
nop
nop
and $34195, %rbp
lea addresses_A_ht+0xba97, %rsi
lea addresses_normal_ht+0x17725, %rdi
nop
nop
nop
add $7686, %rdx
mov $105, %rcx
rep movsq
inc %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0xe97, %rsi
lea addresses_WC+0x12e97, %rdi
nop
sub $55320, %r15
mov $116, %rcx
rep movsb

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r12
nop
nop
nop
cmp $37550, %r15

// Store
lea addresses_WC+0x13897, %rcx
nop
and %r10, %r10
mov $0x5152535455565758, %r12
movq %r12, (%rcx)
nop
nop
nop
nop
nop
xor %r12, %r12

// Faulty Load
mov $0x786f980000000e97, %r10
nop
nop
nop
nop
nop
and $38177, %r14
mov (%r10), %edi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_P'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'4a': 79, 'ba': 71, '12': 58, '36': 85, '2e': 67, '92': 66, '48': 65, '84': 73, 'e6': 87, '16': 81, '10': 68, '3a': 66, '18': 75, 'bc': 73, 'e0': 70, '1e': 71, 'de': 62, 'b6': 80, 'fe': 72, '3e': 73, '9a': 94, '26': 63, '6a': 79, '0a': 62, 'b0': 88, 'ce': 71, '68': 72, 'd4': 63, '72': 73, '08': 62, 'f6': 73, '60': 70, '34': 61, '86': 71, '8e': 76, '14': 78, '70': 66, 'a2': 67, '88': 87, '76': 70, '80': 75, '66': 71, 'f2': 65, '82': 70, 'c8': 73, '2a': 71, '6c': 69, '9e': 56, '58': 65, 'e2': 59, '04': 75, '5e': 76, '52': 69, 'a0': 82, 'd2': 73, '0e': 70, 'f8': 75, 'ec': 79, '74': 72, 'ae': 73, 'c6': 79, 'b4': 77, 'aa': 79, '90': 53, '78': 74, '56': 81, 'dc': 73, 'd0': 81, 'f0': 64, 'a6': 66, 'ca': 74, 'd6': 74, 'da': 60, '24': 76, '20': 77, 'fc': 61, 'ee': 75, 'b8': 66, '5a': 66, '28': 81, 'c2': 70, '7e': 90, '02': 64, '1a': 88, 'e8': 72, '5c': 71, 'd8': 68, '40': 86, 'fa': 80, '9c': 68, 'e4': 68, '4c': 72, '0c': 79, '8c': 76, 'c0': 77, 'f4': 66, '7a': 78, '94': 70, 'ac': 70, '8a': 58, '2c': 71, 'a8': 61, '06': 77, '54': 74, '00': 10548, '3c': 81, 'b2': 66, 'a4': 75, 'c4': 84, 'be': 68, '64': 76, '38': 58, '7c': 72, '44': 68, '50': 68, '46': 84, 'ea': 59, 'cc': 65, '30': 70, '22': 89, '6e': 57, '62': 87, '98': 79, '96': 80, '1c': 67, '42': 65, '32': 87, '4e': 71}
52 00 00 00 e0 36 72 00 72 32 7a 00 00 00 0e 00 00 00 68 00 00 10 4a 1e 40 d2 00 00 c0 00 70 00 82 f0 00 00 00 00 00 a0 00 8c 00 00 00 10 00 00 1e 00 00 9a 00 3c 00 00 54 34 2a 0e 00 00 00 00 00 00 40 ae 00 00 aa 00 32 00 e0 c4 38 0e 00 c8 00 00 a4 76 00 2a ba 52 00 42 1e 00 50 00 00 00 00 00 4c 00 64 00 00 22 00 00 c6 00 9c 7c 88 00 00 00 00 00 fc c0 00 8c 00 00 00 00 00 00 00 00 00 9a b6 00 76 00 00 00 00 00 ce 00 00 00 00 40 00 5a 00 00 8a 00 00 6a 16 3a 8c 00 00 c2 00 d8 00 00 54 ba 9a 88 00 de 00 00 0c 00 00 00 00 3a 00 b0 ec 00 00 46 00 00 00 00 00 00 88 00 00 00 00 00 52 00 c2 00 60 b8 00 00 00 00 00 e8 60 9a 0a 00 00 00 00 be 04 00 b4 a0 00 c6 00 06 00 00 00 d6 00 7c b2 38 cc 26 40 1c 00 00 f6 00 00 00 a2 00 18 00 00 96 56 00 00 7e 00 1e 5e d6 00 00 ba 32 d2 00 8e 9a 00 00 00 42 92 00 3e a2 8c 00 00 e8 fa 00 14 00 00 00 00 f0 74 96 cc 72 00 6a 18 00 fa d2 00 00 00 3c 00 6e 00 28 00 0e 02 00 f0 96 a4 00 fa 96 e0 00 84 04 96 00 e8 8a dc 00 aa 64 00 4e 18 00 82 00 00 00 90 00 00 00 56 00 00 00 fe 00 ee 00 80 5e 00 00 7c 10 00 00 00 00 00 e0 00 00 00 00 00 bc 2c 3e 54 00 00 00 fe 00 0e 00 00 ee 00 00 00 00 00 7c f4 00 16 00 fa 00 00 ce 28 04 00 1a 00 00 00 00 c0 da 9a 0c 00 04 9a 00 b6 de b0 00 00 00 00 9c 74 00 00 00 3a 00 00 68 f6 f8 00 00 0a 00 00 00 00 00 f2 00 00 3a 00 00 00 42 00 3c 00 ee 00 00 00 06 96 d4 00 00 00 aa 00 00 d6 9a a4 00 3a 00 00 4c 00 84 00 9c 90 00 00 5a 00 a2 00 00 5e d2 00 00 00 00 00 00 00 00 00 00 b4 00 76 f8 00 00 48 aa 00 00 d8 ce 00 00 a0 14 ea 00 00 ea 00 8e 5a 00 00 00 c4 00 a2 00 c2 00 92 5a 00 00 70 58 32 c0 00 00 00 3a 8a 00 e0 b8 00 00 00 d6 00 00 00 32 f2 00 fc 00 00 ec 00 00 44 00 00 00 00 00 00 b0 00 00 36 00 5a 00 00 00 c6 00 ba 9a 00 00 00 7a 00 12 6a 38 00 00 fe 92 00 00 36 08 26 00 a2 e6 e8 00 00 00 00 00 00 00 00 00 86 6c 48 00 06 00 42 00 48 68 00 00 08 92 00 00 ca 86 00 d0 00 b4 6e 50 00 b2 7a 00 5c 3a 34 00 00 00 00 00 00 00 00 00 a8 00 00 00 00 14 00 00 4a 46 7e 00 bc b0 00 be 14 62 0c 8c 40 aa 00 00 24 00 00 32 00 00 a2 00 04 00 d6 00 00 48 00 00 a4 00 00 8c 34 00 66 00 00 24 ce 00 00 00 14 d6 48 00 00 00 d2 00 ba 00 f8 00 00 00 00 4c 00 bc 00 00 00 44 00 00 c0 9a 04 00 00 00 00 18 00 ec 00 00 00 c8 00 d8 ea 28 00 00 00 00 00 06 00 88 9a 80 00 00 c8 00 00 74 00 00 00 00 92 fa da 00 c0 88 00 00 1e 00 68 40 6a 00 00 00 00 00 ca 00 28 00 ce 4e 00 00 38 00 00 00 00 00 00 00 00 72 46 00 4a 00 00 90 00 1c 28 00 16 00 00 00 02 6e 52 ba 00 00 00 00 00 00 00 00 26 f4 00 00 00 2e 00 00 c6 00 00 00 00 00 00 58 6a 00 00 00 da 00 00 90 00 00 d0 92 00 a2 64 00 34 ae 64 00 00 00 00 96 66 32 00 e8 00 26 f4 00 00 00 e4 00 00 00 6a 00 00 38 00 1c 04 00 00 00 1a fe 00 00 2e 00 00 de 00 00 00 00 00 00 02 00 28 fa ba 00 00 00 00 40 00 00 00 36 00 00 00 00 00 00 00 00 1a 84 ce 00 c0 68 00 00 c2 78 00 74 00 90 00 78 00 00 00 00 00 74 dc 00 00 00 80 3c 00 00 00 2e 00 cc 7e 00 6a 00 24 32 00 00 00 8a ba 6a c4 00 76 40 00 82 00 52 62 00 08 00 00 e6 00 00 00 f0 34 00 08 48 00 00 de 00 00 00 00 00 00 00 00 00 6a 70 4a 00
*/
