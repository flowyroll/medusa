.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1ce67, %r8
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %r12
movq %r12, (%r8)
nop
nop
nop
nop
nop
add $34746, %r14
lea addresses_A_ht+0x14d67, %rsi
lea addresses_WT_ht+0x4767, %rdi
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $111, %rcx
rep movsq
nop
sub $59029, %rcx
lea addresses_WC_ht+0x11107, %rsi
lea addresses_WC_ht+0x1bd67, %rdi
nop
nop
nop
nop
add $64556, %r15
mov $108, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $29722, %rcx
lea addresses_WT_ht+0xdd67, %rsi
and $64267, %r14
movb (%rsi), %r15b
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0xb327, %rsi
lea addresses_WT_ht+0x14767, %rdi
nop
nop
nop
nop
nop
xor $11437, %rbx
mov $89, %rcx
rep movsq
add %r8, %r8
lea addresses_UC_ht+0x118e7, %rcx
nop
nop
nop
nop
add %r15, %r15
movw $0x6162, (%rcx)
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x16e3b, %rdi
nop
nop
nop
nop
nop
inc %r14
mov (%rdi), %ebx
nop
and %r14, %r14
lea addresses_UC_ht+0x8dff, %r8
nop
xor %rbx, %rbx
movl $0x61626364, (%r8)
nop
nop
xor $40861, %rsi
lea addresses_WC_ht+0x19567, %rsi
lea addresses_UC_ht+0x2ae7, %rdi
nop
nop
inc %r14
mov $8, %rcx
rep movsl
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_normal_ht+0x1d967, %r12
clflush (%r12)
cmp $52755, %r8
mov (%r12), %edi
nop
nop
nop
nop
and %r8, %r8
lea addresses_UC_ht+0x13627, %r8
add %r14, %r14
mov $0x6162636465666768, %r15
movq %r15, %xmm6
movups %xmm6, (%r8)
nop
nop
and $19739, %rsi
lea addresses_WT_ht+0x119a7, %rsi
lea addresses_normal_ht+0xa3e7, %rdi
clflush (%rdi)
nop
and $21576, %r12
mov $29, %rcx
rep movsq
nop
xor %r15, %r15
lea addresses_D_ht+0x181e7, %rsi
lea addresses_UC_ht+0xb567, %rdi
clflush (%rdi)
sub %r8, %r8
mov $37, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $41927, %rdi
lea addresses_normal_ht+0xb167, %rsi
lea addresses_normal_ht+0x18d67, %rdi
xor $55676, %r12
mov $24, %rcx
rep movsl
xor %rsi, %rsi
lea addresses_UC_ht+0x12167, %rsi
nop
nop
nop
nop
add $4020, %r8
movb $0x61, (%rsi)
nop
nop
nop
nop
add %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rdx

// Store
mov $0x5b9d610000000d67, %r13
nop
nop
nop
nop
nop
add $59146, %r10
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
xor $58788, %r11

// Faulty Load
mov $0x5b9d610000000d67, %r10
nop
nop
xor %r8, %r8
vmovups (%r10), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rdx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'4a': 15, 'ba': 20, '12': 14, '36': 23, '2e': 14, '92': 23, '48': 18, '84': 9, 'e6': 194, '16': 18, '10': 16, '3a': 16, 'f8': 210, 'bc': 17, '24': 17, '60': 20, 'de': 29, 'b6': 20, 'fe': 214, '3e': 18, 'c6': 18, '4e': 24, '26': 19, '6a': 20, '0a': 15, 'b0': 21, 'ce': 16, '68': 12, 'd4': 21, '72': 18, '08': 11, 'f6': 192, '34': 12, '40': 15, '9c': 23, '14': 19, '70': 17, 'a2': 20, '88': 16, '76': 15, '80': 8, 'f2': 183, '82': 24, 'c8': 43, '2a': 15, '6c': 21, '9e': 18, '58': 20, '52': 18, 'e2': 202, '04': 13, '5e': 20, 'a8': 23, 'a0': 19, 'd2': 180, '0e': 21, '18': 14, 'ec': 190, '74': 17, 'ae': 21, 'c2': 18, 'b4': 21, 'aa': 14, '90': 20, '78': 16, '56': 22, 'ca': 118, 'd0': 37, 'f0': 211, 'd6': 47, '1e': 17, 'da': 193, '20': 20, 'fc': 219, 'ee': 160, 'b8': 14, '5a': 18, '28': 27, 'dc': 221, '7e': 20, '02': 13, '1a': 14, 'e8': 198, '5c': 12, '96': 15, '0c': 16, 'b2': 15, 'fa': 186, '8e': 15, 'e4': 207, '4c': 21, 'd8': 182, '3c': 21, 'c0': 12, 'f4': 197, '7a': 25, '94': 25, 'ac': 14, '8a': 23, '2c': 18, '06': 7, '54': 192, '00': 29, '8c': 12, 'a4': 48, 'c4': 17, 'be': 20, '64': 22, '38': 20, '50': 18, '7c': 19, '66': 25, '86': 21, '46': 19, 'ea': 187, 'cc': 189, '30': 19, '22': 21, '32': 17, '6e': 20, '62': 12, '98': 18, 'a6': 14, '1c': 17, '42': 23, '44': 13, '9a': 21, 'e0': 64}
7e fa 86 76 16 dc fe 0c ec f4 fa 4e 66 56 d8 10 b0 5e f2 fc 6e 36 ee f6 ea 54 dc f6 d8 ae cc e6 5c d8 fa fe f0 cc 8e 8e ca ca e4 04 cc e4 e2 ee dc f6 a8 f8 e2 d8 6a e4 fa f4 e8 9c ec fc ea ea 54 a6 c8 d8 a6 54 e6 ee da d8 7e da fa f8 66 dc 54 e8 e4 e4 da 3a ac f2 e0 f2 42 e4 b6 26 f6 da 54 fe 74 f2 a0 dc b2 f4 f4 54 e8 20 d4 b2 e8 22 e6 4c 18 7a 30 54 f0 c8 e8 98 ee fc f8 36 a2 88 cc f0 54 f8 be e6 9a e8 4e 30 20 da e4 f2 ea e4 f2 f6 e2 da f2 24 fc 28 f2 e6 f0 f2 84 e2 c8 f4 d8 cc 8a fe 06 1c ea 46 f0 dc e4 fe 54 f6 ea e2 d8 e6 92 d8 18 5e c8 f4 64 60 f4 ea 3e 76 64 fe f2 ea f2 ba dc d8 e8 00 fc f8 da e2 ca d2 cc 9c ec 16 e8 8c fa ba cc 14 d2 da fe ca 3a ca ca f2 f4 0a f8 e2 f8 d2 da da c8 f0 88 ea f6 10 f0 da dc 46 06 28 f0 e6 de b4 ca f8 da f6 f6 e8 22 d2 ca a2 da ce e4 ea da f4 fa f6 d2 44 1e 54 de 46 50 cc 54 5c ba be b0 f6 da e4 86 a8 ec 30 9c fe c8 f8 08 f4 cc d6 24 cc 92 5a b4 fc 68 e0 1e e8 e2 c4 e4 fc da f2 d6 e2 e2 f8 cc f0 ec f2 e8 28 c0 fa ee ec cc d8 ec 7c 36 dc e8 cc fa ec d2 42 e2 fa ee 54 b4 fe fe f2 f0 ea de 98 f0 90 e8 fc 4c da e2 e2 fa d2 54 ee 8a e2 f4 de 58 e4 1e 10 f0 fc bc 6c e6 7a d2 54 e6 cc f8 cc d2 cc e0 d2 4a fc cc dc 54 dc f8 54 ca d8 fc e2 f6 da 56 dc ee a2 40 d2 44 ec ea 8e f0 ea d2 e0 f6 fc ec f6 e6 cc cc 22 74 d8 ae ea 4c cc d0 fa 2e ea ce ee e6 50 4e da cc 88 94 e8 d2 fe ee f4 06 5a e8 a8 9e e4 46 ca 3a 6e da d8 dc 54 f0 54 e4 ee fa 7c e4 f0 c8 c2 f4 fc f0 f4 10 d8 92 bc f8 e2 e2 02 ea d8 54 56 d2 b0 dc 22 b0 ec d2 b8 72 8c f4 ea e2 fc dc 54 62 ea ea 94 fa 94 ec ee fa d8 e4 ae fc f4 62 60 90 e2 de 48 dc f6 d0 da 60 f8 b8 ec f8 0a 08 d8 64 54 04 e6 fc 10 ca f8 fc 94 64 fa ee c8 e6 ea e8 e6 46 fc d2 7e 8a 96 cc ec e4 3c f8 e8 f2 fa f8 d6 ec b8 d2 7e ee fe b6 16 e2 dc d8 dc 8e 9c f8 e2 02 04 f6 e6 fa f2 54 d6 f4 f2 66 d2 e4 f8 f0 e2 ee da f8 9e f6 7e 82 e0 d2 64 ec fa f6 ee 32 cc f4 d8 f6 fc ec fc b4 7a fc f0 fa ec b2 fe 54 e2 de ae f0 6c ee d2 cc f0 d8 ca 6a 6e fe e4 e6 fc e6 3c f6 fe e2 fc e0 d0 f4 d8 fe 1c f4 fa b0 16 da ce f4 9c 4c d0 ec f4 dc fa 5e f6 f4 ec dc 46 6e 26 f2 16 fa 6e 72 fa da 86 e4 fe 54 0c 8c ee 3e 7a f8 cc fc d8 f2 cc 86 fc f2 ca 3c e2 dc ea a0 b2 e2 ec f0 d2 e4 dc 66 48 ca d2 82 dc f8 52 f6 dc f6 fa fc ea e8 da c2 e2 e2 fe e2 46 98 e8 14 f0 52 86 fc f2 4e 3e c2 da e6 b2 e8 e6 ea f2 d2 e0 d8 e6 da f4 fc ec 34 fe da 54 d8 fe 54 c8 ea f8 3e ec fc e4 c4 fe ee f2 20 b0 fe f2 ca c2 e2 14 50 f6 54 dc d8 8e f2 e8 34 e0 fa d2 d8 f6 d2 54 54 f6 fa ea da f8 d0 dc 36 16 54 d8 ec e4 ea 34 50 e6 e2 e2 cc f8 54 2c cc 42 68 7e 42 e8 f6 a8 e8 e4 f6 f8 be a4 ac ca d2 54 e2 dc ca da 28 e8 d2 0e dc f6 d2 e6 ea ca 54 18 e2 ea da 90 f8 2e e2 c8 ec d8 e6 e4 7e ee 9c e8 f0 54 e6 ec e0 c0 dc f0 54 cc 58 fa e6 ee 56 f4 82 00 c2 f4 f6 6e a4 64 76 ee e2 ec c6 f8 a4 6a 1e fa e2 f4 2e 1a d2 32 ee da fe f6 f8 ca f4 56 cc c8 4c ec d2 fc f2 02 26 54 ca fc ee f4 e8 fc fc ee 54 d0 da e6 e8 54 fe fe 7e fc fc 9a da ee f6 ca 78 52 6c f4 20 f0 da e2 9a 28 d0 0c 3e e0 ec da f0 e4 b0 be 4c f6 42 82 fa bc ec da f0 8e e0 ea b4 c6 d6 e8
*/
