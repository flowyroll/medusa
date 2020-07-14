.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x8544, %r10
cmp %r14, %r14
movw $0x6162, (%r10)
nop
nop
nop
nop
dec %r9
lea addresses_WC_ht+0xd740, %r11
nop
nop
nop
nop
inc %rax
vmovups (%r11), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
cmp %r11, %r11
lea addresses_normal_ht+0xdae4, %r14
nop
and %r10, %r10
mov (%r14), %r11w
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_UC_ht+0x11574, %rsi
lea addresses_WT_ht+0x1e2a9, %rdi
nop
nop
cmp %r11, %r11
mov $104, %rcx
rep movsb
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x4a44, %rsi
nop
nop
add $46471, %r14
movb $0x61, (%rsi)
nop
nop
and $49232, %rax
lea addresses_WT_ht+0x8984, %r11
nop
and $42466, %r10
mov (%r11), %rax
nop
xor $16802, %r11
lea addresses_normal_ht+0x17a5c, %r11
nop
nop
sub $10938, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm2
and $0xffffffffffffffc0, %r11
vmovntdq %ymm2, (%r11)
nop
nop
add $33695, %rcx
lea addresses_D_ht+0x15b67, %rsi
lea addresses_WT_ht+0x1c304, %rdi
clflush (%rsi)
nop
nop
nop
add %r14, %r14
mov $81, %rcx
rep movsq
nop
nop
and $10071, %r10
lea addresses_D_ht+0xe3e4, %rax
nop
nop
nop
add %rsi, %rsi
mov (%rax), %r14w
nop
nop
nop
nop
inc %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x18244, %rdi
nop
nop
nop
nop
nop
and %r10, %r10
movl $0x51525354, (%rdi)
nop
nop
nop
add $19062, %rsi

// Faulty Load
mov $0x2e968e0000000244, %rsi
nop
and $39992, %rcx
mov (%rsi), %r9w
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 3}}
{'4a': 51, 'ba': 70, '12': 53, '36': 50, '2e': 66, 'f4': 62, '48': 51, '84': 65, 'e6': 69, '16': 67, '6c': 60, '3a': 61, '18': 66, 'bc': 61, '24': 66, '1e': 61, '44': 67, 'de': 76, 'b6': 78, '58': 53, '3e': 55, '4e': 63, '26': 62, 'a6': 58, '0a': 63, 'b0': 58, 'ce': 67, '68': 59, 'd4': 68, '72': 57, '08': 68, 'f6': 62, 'f0': 61, '34': 58, '8e': 51, '14': 56, '70': 65, 'a2': 66, '88': 68, '76': 64, '80': 45, 'f2': 55, '82': 70, 'c8': 57, '10': 59, 'fe': 73, '46': 49, 'e2': 67, '04': 70, '5e': 64, 'a0': 65, '9e': 76, 'd2': 55, '0e': 55, 'f8': 56, 'ec': 68, '74': 52, 'ae': 83, 'dc': 51, 'b4': 72, 'aa': 60, '90': 60, '78': 66, '56': 52, 'ca': 58, 'd0': 54, '60': 46, 'd6': 72, 'da': 49, '20': 55, 'fc': 46, 'ee': 52, 'b8': 50, '52': 58, '5a': 71, '28': 59, 'c2': 69, '2a': 55, '6a': 55, '02': 59, '1a': 61, 'e8': 53, '5c': 65, '0c': 53, '40': 66, 'fa': 52, 'ea': 61, '9c': 55, 'e4': 62, '4c': 72, 'd8': 64, '3c': 61, 'c0': 59, 'c6': 53, '7a': 59, '94': 82, 'ac': 66, '8a': 70, '2c': 58, '06': 60, '54': 13500, '00': 664, '8c': 68, 'b2': 61, 'a4': 53, 'c4': 63, 'be': 50, '64': 46, '38': 50, '7c': 67, '7e': 59, '66': 43, '86': 72, '50': 65, 'a8': 59, 'cc': 59, '30': 62, '22': 68, '6e': 65, '62': 70, '98': 62, '96': 71, '1c': 65, '92': 54, '42': 53, '32': 58, '9a': 57, 'e0': 63}
54 54 da 54 54 54 aa ca 54 54 cc 54 54 54 54 d2 54 58 54 2c 54 54 54 46 54 54 54 54 00 c2 00 54 54 54 08 54 d0 54 54 54 54 40 54 40 54 54 54 90 54 e2 54 6c 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 2a 54 54 54 54 54 54 e0 54 64 58 54 1e 54 80 54 54 54 be 54 a6 54 54 54 54 82 54 fc 54 c8 54 f2 54 54 54 0e ca 54 b4 c2 54 54 e0 54 54 54 54 54 4c 2c 7a 4c 54 7a e2 54 28 54 22 54 6c 54 54 8c b0 2a 02 84 54 0e 54 c4 74 08 ce 54 7c 7c 54 34 54 26 54 c6 54 54 8c 54 54 54 54 54 6c 7c b8 8a 54 54 54 54 70 a2 8c 16 54 54 54 54 54 54 fa 54 c2 dc 54 70 32 54 54 00 8e 54 62 c8 54 a0 b0 6e 54 28 54 54 54 54 54 54 22 54 86 54 54 54 54 54 5c 54 54 54 54 54 54 54 54 54 00 9c 00 54 9e 54 54 54 9c 00 00 1e 54 40 54 9c 54 54 00 54 54 54 66 1e 96 ae 50 54 54 54 54 54 54 00 54 54 54 26 54 54 54 8a 54 90 54 36 54 54 54 54 e6 54 54 54 1c 54 54 54 54 54 c4 54 54 00 02 e6 54 26 54 34 54 d6 54 d4 54 e6 54 54 20 54 54 46 b4 54 18 54 00 14 8c 54 54 54 8c 54 18 56 54 c2 04 7c 54 54 00 54 54 50 00 34 54 54 54 54 54 54 1c 22 54 4e 54 54 54 78 e6 54 54 54 54 5e 1a 54 54 54 00 b6 54 8c 32 bc 44 60 54 74 a8 54 54 02 54 9e 40 54 24 54 54 54 54 54 e4 54 3a 54 54 54 b0 54 54 24 9e 54 a8 2e 82 d0 54 38 a6 54 ca 54 54 54 ec 54 ce 54 68 54 e2 54 54 54 00 54 54 7e 54 54 54 44 00 1c 54 c0 54 54 54 54 e6 54 54 54 26 54 54 54 54 54 54 ac 54 4e 54 5a 54 0c 2a 1a de 54 54 54 54 54 f0 54 54 54 f8 54 76 00 ec 54 54 54 fe 54 18 54 34 54 54 5e 54 54 54 54 00 d6 54 9a 54 00 54 f4 54 54 54 ec 54 54 6c 54 54 54 54 66 54 54 00 2a 54 52 54 54 54 52 52 54 54 54 54 00 54 dc 54 3e 54 54 54 00 54 54 54 54 f4 54 54 5e 00 28 54 4a c2 54 a4 d2 54 54 54 54 da 54 54 54 90 54 1e 54 54 5c 54 88 54 3c 54 54 54 54 54 8a 54 54 54 54 92 54 54 ee 54 54 5c 4c 54 10 54 54 00 20 4a 6e 54 28 00 54 54 8e 5e 54 0a 54 54 54 54 00 54 54 54 a6 72 54 54 54 9c 5e 54 04 8a cc 90 54 de 54 54 54 54 54 54 54 54 bc 8a 46 54 ac 78 54 54 54 52 54 6e 54 54 54 54 54 54 94 54 8e 54 fc 54 74 54 54 54 54 54 3c 54 54 3e 54 54 54 54 54 54 54 54 2a 54 54 54 54 54 ba 54 54 54 08 54 54 54 54 28 54 54 54 54 54 1e 1c f6 54 c4 22 54 e0 54 54 78 54 0a 54 54 54 54 54 54 9c 54 54 54 54 54 54 4a 54 ee 54 54 dc 54 54 54 dc 54 90 54 54 54 54 54 22 54 bc 54 54 54 54 54 54 54 7a 54 9e 04 56 54 54 54 9a 54 02 92 54 54 54 b6 54 b6 54 0a 54 54 54 8c 7c 54 00 8a 2c cc 54 26 54 54 54 ce 54 54 54 54 00 44 54 f6 f0 54 54 54 d4 54 0e 48 54 ac ce 54 4c 8a 54 4a 54 54 00 54 54 54 6c 54 b2 54 54 54 54 54 b4 c6 84 54 54 54 ae 00 ee 54 54 86 54 54 54 54 54 54 54 54 36 ec 54 54 84 54 54 54 54 54 54 9e 54 54 54 78 54 54 54 54 92 54 a6 00 54 54 b6 54 54 a0 54 de 54 40 0a 54 58 b8 54 54 a0 54 54 7e 54 54 54 54 54 76 22 54 54 46 54 54 54 54 54 5e 54 54 54 54 54 54 2c 02 52 c2 48 08 ea 54 54 68 54 54 54 54 00 ac 54 54 54 54 00 54 54 54 54 3c 54 82 54 54 66 54 54 54 26 da 54 00 de 54 3a 54 58 54 0a cc 54 fa 54 4c 54 54 54 54 5e ae e0 54 54 00 d0 54 ee 50 36 54 e2 54 54 54 36 54 54 b0 54 58 54 5e 54 54 d8 54 6a a6 54 54 54 54 98 54 5e 54 54 78 20 54 4e 58 54 9c 54 54 54 ac
*/
