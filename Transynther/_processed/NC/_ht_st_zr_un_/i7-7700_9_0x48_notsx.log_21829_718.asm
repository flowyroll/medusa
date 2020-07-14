.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x313a, %rsi
lea addresses_UC_ht+0xc527, %rdi
nop
add $52310, %r13
mov $85, %rcx
rep movsw
inc %r12
lea addresses_A_ht+0x89a6, %r9
nop
nop
nop
nop
nop
cmp $54561, %r15
vmovups (%r9), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
dec %r15
lea addresses_WC_ht+0xfb06, %rsi
nop
nop
nop
xor $16779, %r9
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
dec %r9
lea addresses_WT_ht+0x30c6, %r9
nop
nop
nop
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%r9)
nop
nop
xor $15947, %r15
lea addresses_UC_ht+0x25a6, %r12
nop
nop
nop
nop
cmp %rcx, %rcx
movb (%r12), %r15b
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_UC_ht+0x6aa6, %rsi
nop
nop
nop
dec %r9
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
nop
sub $3042, %rdi
lea addresses_UC_ht+0x9e89, %r12
nop
nop
nop
nop
nop
and $15451, %rcx
movw $0x6162, (%r12)
nop
cmp %r12, %r12
lea addresses_WC_ht+0x1d4a6, %rsi
lea addresses_UC_ht+0xa502, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $117, %rcx
rep movsb
lfence
lea addresses_A_ht+0xa6, %rsi
lea addresses_D_ht+0x138a6, %rdi
nop
nop
nop
nop
nop
xor %r15, %r15
mov $32, %rcx
rep movsq
nop
nop
nop
xor %r15, %r15
lea addresses_WT_ht+0x1162, %r13
xor %r12, %r12
mov $0x6162636465666768, %r15
movq %r15, %xmm5
vmovups %ymm5, (%r13)
nop
sub %r15, %r15
lea addresses_WC_ht+0x1571e, %r9
nop
nop
cmp $52668, %rcx
mov (%r9), %r12w
nop
nop
nop
and $33204, %r13
lea addresses_D_ht+0xd26, %rsi
nop
cmp %r12, %r12
movw $0x6162, (%rsi)
mfence
lea addresses_WC_ht+0xf4e6, %rsi
lea addresses_normal_ht+0x1cea6, %rdi
nop
xor $34073, %r12
mov $121, %rcx
rep movsb
nop
nop
nop
mfence
lea addresses_A_ht+0x10aa6, %r15
nop
nop
add %rdi, %rdi
movb (%r15), %cl
nop
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x194a6, %r15
dec %r9
mov (%r15), %r12w
nop
sub $41200, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rax
push %rdi
push %rsi

// Load
lea addresses_UC+0x196c6, %r14
cmp $52300, %rsi
vmovups (%r14), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
nop
dec %rsi

// Store
lea addresses_A+0x80a6, %rax
cmp %r12, %r12
mov $0x5152535455565758, %r10
movq %r10, (%rax)
nop
nop
nop
xor %rsi, %rsi

// Faulty Load
mov $0x6cf34d00000000a6, %r10
nop
nop
nop
nop
add %r12, %r12
movb (%r10), %r14b
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rsi
pop %rdi
pop %rax
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 10}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'4a': 19, 'ba': 22, '12': 86, '36': 66, '2e': 67, '92': 72, '48': 54, '84': 68, 'e6': 57, '16': 73, '6c': 77, '3a': 17, 'f8': 77, 'bc': 72, '24': 62, '1e': 69, '7c': 69, 'de': 71, 'b6': 54, 'fe': 76, '3e': 75, '9a': 27, '26': 68, 'a6': 72, '0a': 60, 'b0': 62, 'ce': 79, 'd4': 60, '72': 54, '08': 73, 'f6': 65, 'f0': 57, '60': 56, '34': 71, '8e': 68, '14': 72, '70': 68, 'a2': 48, '88': 71, '76': 70, 'f2': 67, '82': 64, 'c8': 64, '2a': 21, '10': 78, '9e': 57, 'dc': 66, '46': 58, 'e2': 65, '04': 60, '5e': 77, '52': 65, 'a0': 61, 'd2': 54, '0e': 65, '18': 58, 'ec': 78, '74': 61, 'ae': 57, 'c6': 69, 'ac': 58, 'aa': 18, '90': 52, '78': 66, '56': 76, '80': 55, 'd0': 64, '44': 66, '68': 55, 'ca': 14, 'd6': 53, 'da': 21, '20': 60, 'fc': 76, 'ee': 62, 'b8': 46, '5a': 23, '28': 77, 'c2': 75, '7e': 72, '6a': 24, '02': 53, '9c': 61, 'e8': 59, '5c': 88, 'd8': 58, '40': 71, 'fa': 23, 'c4': 67, 'e4': 64, '4c': 65, '0c': 78, '8c': 70, 'c0': 70, 'f4': 69, '1a': 18, '7a': 18, '94': 68, 'b4': 63, '8a': 23, '2c': 64, 'a8': 62, '06': 71, '54': 75, '00': 1363, '3c': 62, 'b2': 76, 'a4': 71, 'be': 67, '64': 71, '38': 61, '58': 12796, '66': 64, '86': 74, '50': 69, 'ea': 20, 'cc': 68, '30': 63, '22': 60, '6e': 65, '62': 70, '98': 54, '96': 73, '1c': 84, '42': 77, '32': 53, '4e': 77, 'e0': 71}
e2 58 ba e6 58 58 58 58 58 58 58 58 5c 58 58 58 58 50 58 58 58 58 e8 00 58 58 58 30 58 58 58 c4 58 58 58 00 58 00 26 58 58 b6 52 58 78 58 74 06 1e 58 58 58 58 54 58 58 58 58 58 58 40 58 58 0a e4 58 58 58 58 58 58 58 58 58 58 64 58 be 58 58 58 58 f4 58 00 62 58 58 58 58 58 58 58 58 58 58 58 98 52 58 58 08 d4 e6 58 58 58 3e 5c 58 c2 00 58 de 58 ac 00 58 fa 58 8c 2e 80 58 74 58 cc 58 58 58 58 58 58 58 32 64 24 58 d8 58 2c 58 58 58 6e 58 58 d2 8c 58 f0 58 a4 58 58 58 ec 58 7c 58 00 c2 e6 58 58 b2 58 58 12 58 de 58 58 58 58 58 82 58 58 58 58 a2 48 d0 58 58 58 58 14 86 58 64 58 58 00 00 9a 00 1c 64 32 58 86 58 58 6c 58 58 58 58 16 58 70 58 58 16 58 58 c6 e8 58 00 58 58 58 58 58 58 58 58 58 58 a2 58 00 ac 00 58 c4 00 d6 58 00 de 58 0a 58 58 ee 58 58 58 58 58 58 58 f0 58 58 58 58 58 58 c8 58 58 a2 32 5e 58 78 76 58 58 3e 58 58 7c 00 3c 58 6c 58 2e 00 58 8e 00 58 58 58 58 30 88 58 58 58 58 be 58 5c 58 58 58 58 58 f6 58 28 fe 58 00 4e 96 6c 00 ea 58 d2 00 58 00 58 14 58 14 0e f4 58 d2 00 58 58 72 68 58 58 58 58 58 58 58 34 58 58 58 58 58 8c 58 c0 58 2c 58 58 58 58 58 58 70 70 f8 58 f0 58 e8 58 58 58 1c 58 58 00 a4 00 9a f8 58 04 58 38 58 8e 00 96 00 58 7e 58 ce 32 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 28 58 58 58 58 58 58 6c 58 94 58 76 16 42 7c 86 a0 7a d4 24 58 58 58 00 f2 58 58 58 58 58 52 6c 58 58 58 58 00 08 58 d8 58 58 58 58 58 88 58 58 ae 42 58 c2 58 58 c2 32 56 00 58 c4 58 00 30 58 58 58 58 58 58 58 58 58 76 b6 58 58 52 58 58 38 58 58 8c a8 18 58 00 9e 58 ba 88 82 c4 58 d4 94 fe 58 58 58 58 58 b8 58 58 58 58 d6 58 00 42 58 00 58 58 58 58 58 58 58 2c 0a 58 3e 58 58 58 58 58 56 b4 58 58 16 1c 00 58 58 58 00 e2 58 00 74 54 16 ce 58 0e 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 06 4e d4 58 58 88 58 ac 58 58 58 4c 50 94 58 5a 58 40 02 58 34 54 00 00 b8 b6 58 fe 58 58 58 42 3e 58 58 58 00 58 58 58 64 58 58 58 00 58 58 58 58 58 58 58 58 58 7e f2 58 00 58 58 14 d8 36 26 58 be 58 58 66 58 f2 58 58 18 58 58 58 58 58 58 58 58 02 5c 58 00 86 00 2c 6e 1e 64 58 d0 58 58 62 58 58 58 c0 58 58 06 80 58 58 58 58 58 58 26 00 58 58 58 32 a2 5c 64 58 40 5c e2 58 58 58 58 58 58 58 58 3c 58 58 58 58 1e 58 58 58 58 58 58 58 58 38 58 cc 58 58 c0 58 30 58 00 b2 2e 00 58 58 04 e6 58 00 00 84 58 38 50 58 58 44 58 00 f6 58 c6 58 58 58 58 00 58 58 58 58 58 58 58 24 58 b4 78 58 58 58 56 58 58 00 58 58 86 58 58 58 f8 58 58 58 18 78 2c 58 58 58 58 58 58 58 58 58 58 58 58 58 58 08 58 58 de 58 58 58 58 58 58 58 50 60 fe 58 58 58 58 08 7e e2 58 2e 2e 5c 00 58 0c fe bc 66 58 58 1e 58 58 58 58 58 58 58 58 58 2a 58 56 58 58 58 58 d4 58 58 0e 56 58 58 da 58 58 0e 9e 00 5e b6 e4 58 22 00 90 06 76 58 58 58 58 58 58 58 e2 58 00 58 f6 58 58 14 e6 58 58 58 58 58 58 58 9e 58 58 d0 00 86 86 f0 58 58 58 00 58 58 58 58 00 58 00 94 16 58 58 58 00 58 58 58 58 54 4c 58 58 58 58 94 58 58 58 58 5c 60 58 58 58 58 74 de 58 40 dc 58 30 58 58 58 58 7c 58 00 58 3c 58 52 b6 58 38 58 58 3c 58 6e 58 58 58 58 22 58 9e f0 58 e4 58 54 06 58 58 78 72 00 9e 58 52 58 58 58 58 58 58 58 58 62 a2 74 58
*/
