.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xbfae, %rbx
nop
nop
nop
nop
nop
xor $38182, %r8
mov (%rbx), %r11d
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0xd5f4, %r9
nop
nop
nop
add %rdi, %rdi
mov (%r9), %esi
nop
nop
nop
nop
nop
add $28004, %r8
lea addresses_WC_ht+0x4ae2, %rsi
lea addresses_UC_ht+0x73d0, %rdi
clflush (%rdi)
add %r13, %r13
mov $17, %rcx
rep movsq
nop
nop
nop
sub $3880, %rcx
lea addresses_WC_ht+0x121f4, %rbx
nop
nop
sub $4207, %r11
movl $0x61626364, (%rbx)
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x136f4, %r13
nop
nop
nop
nop
xor %r9, %r9
mov (%r13), %rdi
nop
nop
nop
nop
nop
cmp $43168, %rcx
lea addresses_D_ht+0x5d5c, %rsi
lea addresses_UC_ht+0x79f4, %rdi
nop
nop
nop
dec %rbx
mov $15, %rcx
rep movsq
nop
xor %r13, %r13
lea addresses_D_ht+0x1cd64, %rbx
nop
nop
nop
nop
xor $41559, %rdi
vmovups (%rbx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r9
nop
nop
and %rbx, %rbx
lea addresses_D_ht+0x2284, %rsi
lea addresses_normal_ht+0xe1f4, %rdi
nop
nop
nop
sub %r11, %r11
mov $63, %rcx
rep movsq
nop
nop
xor %r11, %r11
lea addresses_A_ht+0x82c6, %r11
cmp $45842, %rcx
and $0xffffffffffffffc0, %r11
movaps (%r11), %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
dec %rdi
lea addresses_normal_ht+0x1b9f4, %rcx
nop
nop
nop
nop
add $29129, %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
xor %r8, %r8
lea addresses_WT_ht+0x154f4, %rsi
lea addresses_D_ht+0x125f4, %rdi
add $50870, %rbx
mov $116, %rcx
rep movsq
nop
add $17887, %r9
lea addresses_WT_ht+0x7bf4, %r8
nop
nop
nop
nop
nop
and %r9, %r9
mov $0x6162636465666768, %rsi
movq %rsi, (%r8)
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x163da, %r13
nop
xor %r9, %r9
mov $0x6162636465666768, %r8
movq %r8, %xmm6
movups %xmm6, (%r13)
nop
cmp %r11, %r11
lea addresses_A_ht+0x1aef4, %r13
clflush (%r13)
nop
nop
nop
dec %rbx
mov (%r13), %edi
nop
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x1b534, %rdi
nop
nop
nop
nop
dec %r13
mov $0x6162636465666768, %r9
movq %r9, %xmm3
vmovups %ymm3, (%rdi)
nop
lfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %rbx
push %rcx
push %rdx
push %rsi

// Store
mov $0x1f4, %rdx
nop
nop
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rdx)
nop
nop
nop
and %rdx, %rdx

// Faulty Load
mov $0x2d64c00000001f4, %rcx
nop
and $53140, %r11
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdx
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'e6': 51, '1a': 55, 'b0': 40, '54': 57, '1e': 65, 'f8': 64, '1c': 63, 'd4': 70, '80': 58, '2a': 58, '46': 48, '8a': 78, 'c4': 59, '0e': 65, 'de': 53, '32': 54, 'dc': 55, '76': 52, '5a': 47, '04': 61, '68': 56, 'e2': 60, 'd6': 65, '9c': 56, 'bc': 57, '34': 54, 'fe': 61, 'ee': 60, '5e': 53, '28': 68, 'f2': 61, '22': 46, '14': 61, '98': 65, 'a6': 43, '18': 77, '6c': 78, '62': 60, '6e': 57, 'ea': 66, '60': 59, 'a2': 53, 'f0': 53, '0c': 51, '12': 44, 'ac': 68, '2e': 57, '9a': 59, '38': 63, 'ae': 56, 'd2': 58, 'c6': 53, '4e': 50, '5c': 54, 'b4': 69, 'ca': 60, 'ba': 62, 'a8': 67, 'b8': 58, '48': 61, 'fa': 57, 'da': 60, '2c': 66, 'ec': 65, 'd8': 63, 'e4': 76, '9e': 53, 'c8': 72, '44': 63, 'cc': 66, '66': 64, '82': 67, '08': 69, '3c': 60, '24': 66, '36': 72, '56': 48, '4a': 54, 'ce': 63, '42': 46, '58': 13620, '3e': 44, '20': 46, 'c2': 54, 'b2': 52, '26': 48, '74': 66, '50': 45, '5f': 1, '0a': 51, '30': 48, '3a': 64, 'be': 65, '90': 52, '88': 59, '8e': 68, '7e': 63, '94': 61, '40': 52, '7a': 69, 'f4': 69, '52': 53, '6a': 51, 'fc': 52, 'd0': 55, '16': 58, 'f6': 63, '02': 59, 'e0': 48, '92': 67, 'e8': 55, '10': 44, 'c0': 57, '7c': 55, '96': 44, 'aa': 62, '4c': 63, '72': 60, '84': 61, '06': 59, '78': 55, '8c': 60, 'b6': 65, 'a4': 66, '86': 48, '70': 35, '00': 862, 'a0': 58, '64': 55}
9c 58 00 1e 58 58 58 58 00 58 36 58 34 58 58 58 00 44 58 58 58 82 58 58 58 a0 58 58 ac 58 58 58 58 72 38 58 a2 58 58 58 e2 7e b8 4a be 58 58 00 00 58 66 00 30 58 58 58 58 58 58 58 58 2c 58 58 00 c4 58 58 82 92 7c 00 b2 58 58 58 58 a2 80 00 58 58 58 00 4a d2 00 58 14 04 58 58 58 58 b4 58 58 58 58 1e 58 c0 58 58 7e 36 32 ac 58 58 58 58 4a 58 d6 58 58 58 58 58 58 58 58 ee 58 58 c4 d8 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 96 58 58 6a 58 58 58 58 dc 58 58 3c 58 cc 58 58 dc f2 dc 58 b2 f2 a6 6a 58 58 58 06 58 58 82 58 58 ec 58 58 50 58 58 64 00 58 58 20 70 58 58 58 58 e2 58 a2 58 58 58 58 c4 58 58 52 58 ba 58 58 ae 58 58 2a 58 58 58 58 52 26 58 58 58 58 58 ca 1c 58 e4 1c 58 58 58 58 58 ae 9e 58 58 74 58 58 ac f2 58 58 66 54 58 58 58 48 b2 58 58 58 06 0c 58 2c 58 58 58 60 58 d8 06 58 58 58 58 a0 58 58 5c 58 58 58 66 58 58 58 58 58 4c ce 58 58 d8 58 58 50 58 58 16 5a 58 ca b6 00 fc 86 00 d0 58 58 b6 58 58 58 58 58 58 b8 58 b4 58 58 58 58 22 58 58 58 58 58 02 ee 58 58 d4 58 58 58 c0 58 58 b6 00 58 d8 fe 58 00 58 58 58 ee 58 58 58 00 fa 00 82 58 78 58 58 58 98 58 9a a0 58 58 7a 58 58 58 00 8c 00 58 58 58 08 58 58 5c b2 08 58 38 58 58 54 58 f4 58 58 58 58 58 58 58 58 60 58 58 1e e2 0c f0 58 fa 58 58 58 cc 58 58 58 58 58 58 80 58 58 58 58 96 9c 58 3a 58 f2 00 66 58 58 92 58 58 58 58 40 58 58 58 58 58 b6 58 58 58 58 58 58 58 58 1a 58 58 7e 58 58 50 9a 58 0a 54 92 58 f6 58 36 1e 58 58 c8 58 46 58 58 58 24 58 58 be f2 9c 58 6c 58 58 58 58 a6 28 76 58 58 58 14 00 be 6a 58 58 ae 78 00 58 00 58 9a 58 58 58 58 58 58 58 ba 58 80 58 58 58 58 58 48 8e 26 58 58 58 58 58 58 58 96 58 58 58 e4 58 58 58 2c 58 58 82 58 58 58 fa 48 58 58 58 58 58 7a 58 58 58 58 58 58 00 58 58 52 58 58 58 58 58 14 00 aa a4 b4 58 58 da 58 58 58 1a 58 ac 58 58 58 58 58 58 36 56 58 58 58 58 58 24 58 58 58 aa 58 58 5e 58 2e 18 58 2c 58 58 38 58 42 ca 58 58 58 58 58 58 38 58 58 36 00 58 58 58 84 da 58 58 78 58 68 58 58 58 58 58 4c 58 58 7a 58 58 58 c2 58 58 58 58 b6 58 4a ac 58 d6 58 66 00 1e 58 c2 58 58 16 ea 58 58 58 58 58 58 58 58 58 b6 1a d0 58 58 58 58 00 00 58 18 ec 58 d2 58 60 58 58 58 64 58 72 58 e0 58 58 14 58 58 58 58 e2 58 58 58 b2 58 58 58 58 58 e4 58 76 00 ca f4 58 58 aa 58 58 48 58 58 58 5c 4c 58 44 58 c8 5e 58 58 58 58 58 8e 58 de 58 58 58 5e 58 02 58 58 58 58 0a 58 58 76 9c 00 aa 58 58 58 90 00 00 10 5c 58 14 58 24 00 e2 fe 58 58 04 58 58 58 58 58 c2 58 58 58 58 6a 58 58 58 58 58 58 58 f8 58 58 e2 58 58 c0 58 58 40 58 58 58 58 26 58 58 58 58 7e 58 a8 58 58 58 86 58 fa 58 58 e4 58 58 58 58 f6 52 58 58 58 58 58 58 28 58 58 00 58 00 fa 20 58 58 58 58 34 58 58 f0 58 fa 58 58 58 58 58 58 f2 58 58 58 26 00 be 58 26 58 dc cc e0 58 58 58 c0 58 4a 00 5a 58 00 2a 58 58 58 46 26 58 58 1e 58 62 58 ca 84 58 58 58 58 b4 58 98 fa b6 58 c8 58 58 24 58 58 58 58 58 58 58 9c 58 58 58 2e 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 f4 58 58 58 f2 58 58 58 b2 84 96 58 26 58 ba 58 ce 58 58 58 4e 58 0a 58 da 00 58 58 a6 58 20 e8 36 58 58 58 58 d0 58 e6 2a 3e ec 58 58 06 58 c8 58 00
*/
