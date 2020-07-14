.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x7688, %rcx
nop
nop
xor $12000, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rcx)
nop
xor %rdx, %rdx
lea addresses_normal_ht+0xb699, %rbx
nop
nop
nop
sub %r13, %r13
movl $0x61626364, (%rbx)
sub $53278, %rdx
lea addresses_WC_ht+0x1c288, %rcx
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
nop
nop
sub $58020, %r13
lea addresses_UC_ht+0xe30c, %r13
cmp $51729, %rbx
movb (%r13), %cl
nop
nop
nop
nop
nop
sub $44559, %rcx
lea addresses_A_ht+0x1a48, %rsi
lea addresses_WT_ht+0x1688, %rdi
clflush (%rsi)
nop
nop
add %rbx, %rbx
mov $42, %rcx
rep movsq
nop
nop
xor %r12, %r12
lea addresses_WT_ht+0x1e338, %rdi
nop
nop
dec %rdx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
sub %r12, %r12
lea addresses_WT_ht+0x1d348, %r13
nop
nop
nop
nop
nop
cmp $24559, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r13)
nop
inc %rsi
lea addresses_WT_ht+0x12088, %rsi
xor $14871, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%rsi)
nop
inc %rbx
lea addresses_WT_ht+0x16488, %rsi
nop
nop
nop
nop
nop
dec %rdx
movw $0x6162, (%rsi)
nop
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x1c594, %rdi
nop
xor $1320, %rdx
mov (%rdi), %r13w
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x5208, %rsi
nop
nop
nop
nop
nop
cmp $47138, %r13
mov (%rsi), %ecx
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x1d188, %rbx
sub %rdi, %rdi
vmovups (%rbx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r12
nop
nop
nop
nop
cmp $39188, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rax

// Faulty Load
mov $0x5134000000000288, %r15
nop
nop
nop
nop
inc %r11
mov (%r15), %r13d
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rax
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'9a': 101, 'ec': 112, '66': 103, 'a2': 106, 'e6': 115, '8c': 119, '2e': 62, 'fc': 117, 'd0': 133, '30': 132, '2c': 123, '5f': 1, '7c': 114, '3a': 100, '6e': 140, '54': 127, '24': 110, 'be': 115, '72': 105, 'b8': 151, '82': 106, '3e': 117, 'c6': 118, '0a': 109, 'cc': 133, '38': 123, 'de': 108, '7a': 104, '42': 109, '26': 117, '34': 140, 'b6': 112, '48': 131, '20': 136, 'a8': 105, '88': 122, 'ba': 108, '58': 110, 'fe': 124, 'f0': 128, '8e': 102, '1a': 103, 'e0': 362, 'aa': 119, 'c8': 117, '8a': 97, '5e': 55, '7e': 131, 'a0': 136, '60': 109, '76': 134, '28': 129, '6a': 65, '52': 106, '70': 114, 'd6': 117, '08': 146, 'd2': 102, '46': 123, 'b0': 117, 'b2': 117, 'e8': 119, 'f4': 108, 'c2': 115, '6d': 1, 'f6': 125, '62': 128, '04': 106, '96': 107, '14': 139, '92': 114, 'e4': 63, '4c': 69, '10': 124, '5c': 101, '6c': 100, 'ce': 115, '12': 114, '1f': 1, '0c': 126, '1c': 106, '44': 64, 'f2': 116, 'e2': 108, '00': 7114, '22': 113, '50': 105, '5a': 137, '40': 108, '18': 120, 'ea': 115, '06': 105, '56': 117, 'ca': 97, 'a4': 121, 'fa': 110, 'c4': 135, '2a': 105, '68': 123, '80': 134, '32': 97, '9c': 120, '84': 109, '1e': 116, 'c0': 69, '4a': 108, '74': 131, 'da': 116, 'bc': 113, 'b4': 122, 'd8': 98, '64': 103, '78': 109, '4e': 131, 'ac': 120, '3c': 121, 'a6': 124, '9e': 108, '0e': 97, 'd4': 134, '86': 109, '02': 123, '98': 118, '16': 132, 'ae': 122, 'f8': 103, '94': 127, '36': 109, 'ee': 129, 'dc': 122, '90': 114}
00 60 42 a4 00 9c dc 00 72 00 00 00 c0 74 dc 00 00 c6 74 00 00 34 00 74 a2 98 00 00 00 7c 3c 00 00 50 00 00 00 00 00 02 f6 00 1e 00 18 00 0a da 5a 70 b6 02 72 f2 00 00 a2 80 00 7e 1c 38 94 d8 ee a6 00 50 00 64 00 00 3a 18 00 00 dc 00 00 00 00 00 12 e0 00 1c 72 1c 00 00 38 5c 6c 22 00 00 ca 00 62 b2 94 1a 00 00 00 b8 58 00 00 00 44 00 46 96 b8 86 1e 00 00 58 00 1c b6 06 00 00 36 00 00 fe d6 00 00 42 84 00 00 00 56 00 00 00 d6 64 1c 52 52 e6 00 ca f8 2a 30 80 00 fa 00 00 76 00 2a 00 68 e0 a2 96 f8 aa 00 0e 06 e0 00 00 f6 d4 96 00 1c 46 00 00 00 48 2a 00 da 1a 00 0e 00 10 00 38 ca 00 be 00 fe 5e 48 00 00 6e b4 9e 4e 6e 4a 3c 00 74 ea 1c 92 00 ae fe ec 16 ec 00 74 9a 72 00 e2 be 00 00 00 ce 00 0e 48 1a 00 ee 00 ae 5a c6 b8 fa e8 00 66 82 c8 00 12 e6 b4 00 76 00 00 00 00 ec 00 54 e0 00 38 d4 dc 64 00 00 12 00 00 00 9e 00 00 00 00 38 00 00 8a 00 4e 00 00 00 a0 2e 00 62 70 7e 00 00 00 18 00 92 e0 ac 08 34 00 34 a6 22 00 14 da 00 00 00 30 e0 62 00 00 7c 00 00 00 00 00 bc 00 00 00 82 00 5a 00 00 de 00 0c 70 16 00 00 00 ba 00 00 12 00 82 e0 00 00 7e e0 f6 00 00 00 c6 00 00 92 3e 00 00 ce 14 00 00 7e 24 00 f4 3e 18 96 2a 00 f8 22 00 72 f6 00 3e d2 5e 00 1c 1e 7a aa 3e 90 00 94 00 00 00 62 00 00 00 d0 12 a0 00 fa 08 00 da 00 80 2e ae 00 00 4e 66 d8 00 70 9e 2e 36 98 00 32 68 00 c4 0a 00 5a e0 00 00 00 00 00 da 4c 00 fe 00 56 00 00 f6 04 c8 00 00 ac 18 00 00 b8 fc 84 00 7a e8 42 00 00 5e bc 00 be 1a 4c 00 30 00 e4 f6 fe 00 e0 5c 00 5a e2 00 00 f8 32 16 00 00 aa 76 00 c8 00 00 e0 00 20 00 00 00 00 ba 00 1c f4 c4 ec f4 00 00 12 00 e8 00 00 f0 00 86 00 26 4e 2c 5c c6 00 90 8c 84 00 00 00 24 70 00 00 ac d4 00 0c b6 54 00 e2 00 00 24 74 00 00 c0 00 3c fe 8e 1e 48 f2 28 8a fa 74 00 00 d6 00 00 00 52 00 5c 30 00 00 00 18 04 0a f0 cc 0e 6a 24 34 44 66 40 68 d2 ee d2 00 00 00 8e 26 22 86 00 52 ac 02 dc 00 98 2c 00 42 8c 24 26 46 36 00 00 a4 28 ec 00 38 68 04 ca 22 00 00 ac 00 00 00 00 7a 00 00 00 66 c8 00 00 32 00 00 b8 00 00 4a e0 00 4a 00 00 1a 56 4e f8 00 16 18 70 d4 f8 02 ba 7c ec 10 d4 74 00 00 00 a6 00 00 00 00 c8 00 00 40 6a 00 00 00 00 56 82 c6 f2 14 6c 76 fa dc e0 00 00 72 52 00 00 70 00 ca 00 e6 00 00 50 3c 7c 00 00 00 00 00 00 38 e0 e0 00 00 28 00 00 a6 06 00 02 06 3a e2 00 8c 00 00 00 d4 00 ca 00 16 00 90 00 00 00 f6 06 00 3e f0 00 36 00 ee c8 00 de 00 00 06 00 76 8a 70 cc 34 08 40 c6 2a ae a2 00 34 b8 22 d0 0c 00 5a 00 1c 00 00 00 1a c6 54 00 14 74 2e 5e 7a 94 da 00 00 04 00 00 00 00 50 0e 7e 86 02 00 00 b8 60 44 4e 00 ae 00 90 4a 00 00 4a 00 a0 3c 00 00 2c 0c e8 aa 00 b2 00 08 10 00 1c 7c 5a d2 00 9c 00 00 00 7a 12 f4 44 00 00 ee 40 00 02 00 b6 00 d8 00 00 b2 00 28 1e 4e 94 e6 2a 16 00 58 00 00 c8 6e 8c 00 a8 00 00 00 aa 00 d4 00 00 e0 00 4a a8 a4 ae 00 ac 24 00 84 a0 2e 50 78 00 00 0e a8 a0 00 68 00 00 0a 00 00 00 00 b2 ec 38 3c 00 00 00 00 00 e8 aa 00 08 dc 1e 5a 46 dc 00 ba fc 00 e8 00 00 00 00 86 82 ee 00 00 00 28 00 e4 48 32 00 00 00 48 00 00 14 00 b4 88 00 1a 7e 74 00 c8 56 00 00 8c 9a da 00 00 00 a8 2a 58 00 00 00 00 00 ce 00 a8 00 00 6c 00 8e 94
*/
