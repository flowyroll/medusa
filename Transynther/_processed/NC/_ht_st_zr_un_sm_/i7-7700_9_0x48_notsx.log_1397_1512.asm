.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x114e2, %rsi
lea addresses_WC_ht+0xe222, %rdi
nop
nop
nop
and $33655, %rbx
mov $65, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $14572, %r14
lea addresses_WT_ht+0x857e, %rsi
lea addresses_D_ht+0x195e2, %rdi
nop
add $5075, %rdx
mov $36, %rcx
rep movsq
nop
add $14474, %rdx
lea addresses_UC_ht+0x1b7e2, %rsi
lea addresses_normal_ht+0x17245, %rdi
nop
sub %rdx, %rdx
mov $118, %rcx
rep movsl
nop
nop
nop
nop
dec %r14
lea addresses_WT_ht+0x1e762, %rsi
lea addresses_D_ht+0x8ce2, %rdi
nop
nop
and %r12, %r12
mov $54, %rcx
rep movsw
nop
nop
and $50701, %rcx
lea addresses_normal_ht+0x6c1e, %rsi
lea addresses_WC_ht+0x1afe2, %rdi
nop
nop
nop
add %r13, %r13
mov $119, %rcx
rep movsl
nop
nop
nop
nop
dec %rdx
lea addresses_A_ht+0x8e2, %rsi
lea addresses_WC_ht+0x3462, %rdi
dec %rbx
mov $114, %rcx
rep movsl
nop
cmp $21224, %rdx
lea addresses_WC_ht+0x83e2, %rsi
nop
nop
mfence
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %rcx
cmp %r14, %r14
lea addresses_WC_ht+0x1962, %rbx
nop
inc %rsi
vmovups (%rbx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r13
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WC_ht+0xd7e2, %r13
nop
and %rdx, %rdx
movups (%r13), %xmm2
vpextrq $0, %xmm2, %r14
nop
add %rbx, %rbx
lea addresses_WT_ht+0x9592, %rsi
lea addresses_WC_ht+0xc962, %rdi
xor $14225, %r13
mov $50, %rcx
rep movsq
nop
nop
nop
sub %rbx, %rbx
lea addresses_WC_ht+0x151e2, %rdx
nop
nop
cmp $1555, %rbx
vmovups (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
nop
nop
nop
and %r12, %r12
lea addresses_A_ht+0x1d9e2, %r13
nop
nop
nop
xor %rcx, %rcx
movups (%r13), %xmm6
vpextrq $1, %xmm6, %r12
nop
nop
add %r12, %r12
lea addresses_A_ht+0xac66, %rsi
lea addresses_WT_ht+0x10fe2, %rdi
nop
nop
nop
nop
inc %rdx
mov $35, %rcx
rep movsl
nop
nop
nop
add $32862, %r14
lea addresses_normal_ht+0x1bde2, %rdx
sub %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%rdx)
nop
nop
add $37746, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rbp
push %rcx
push %rdi
push %rsi

// Store
mov $0x4051790000000fe2, %rdi
nop
dec %r12
movw $0x5152, (%rdi)
nop
nop
nop
nop
add $34794, %r11

// Store
lea addresses_D+0x8d22, %rsi
nop
nop
add $19968, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
cmp %rbp, %rbp

// Faulty Load
mov $0x4051790000000fe2, %rcx
inc %rsi
movb (%rcx), %r12b
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 8}, 'OP': 'STOR'}
{'4a': 4, '48': 4, '12': 1, '36': 4, '2e': 3, '92': 3, 'ba': 4, '84': 3, 'e6': 5, 'c2': 2, '16': 3, '10': 2, '3a': 3, 'f8': 1, 'bc': 1, '56': 2, '1e': 4, 'de': 2, 'b6': 1, '58': 3, '3e': 4, '9a': 3, '26': 2, 'a6': 3, '0a': 2, 'b0': 4, 'ce': 3, '68': 4, 'd4': 6, '72': 3, '08': 2, 'f6': 6, '34': 1, '40': 1, '8e': 3, '14': 2, 'a2': 3, 'fe': 3, '76': 2, '66': 2, 'f2': 4, 'c8': 7, '6c': 5, '9e': 3, '52': 972, 'e2': 6, '04': 3, '5e': 2, 'a8': 2, 'a0': 3, 'd2': 4, '0e': 5, '18': 3, 'ec': 2, '74': 1, 'ae': 4, 'c6': 4, 'ac': 4, 'aa': 5, '90': 1, '78': 1, '2a': 2, 'ca': 4, 'd0': 4, 'f0': 5, 'd6': 5, 'da': 5, '24': 3, '20': 3, 'fc': 5, 'ee': 5, 'b8': 6, '5a': 4, '28': 2, 'dc': 2, '7e': 3, '6a': 4, '02': 6, '1a': 2, 'e8': 4, '5c': 4, '0c': 2, 'b2': 1, 'fa': 5, '9c': 3, 'e4': 3, 'd8': 1, '3c': 2, 'c0': 2, 'f4': 4, '7a': 2, '94': 1, 'b4': 3, '8a': 3, '2c': 1, '06': 2, '54': 2, '00': 61, '8c': 6, 'a4': 3, 'c4': 6, 'be': 4, '88': 1, '64': 4, '38': 1, '7c': 2, '32': 2, '86': 2, '50': 1, 'ea': 5, 'cc': 3, '22': 2, '6e': 4, '98': 2, '96': 2, '1c': 4, '42': 2, '44': 2, '4e': 5, 'e0': 3}
52 52 52 68 52 52 52 48 ba 52 52 a4 52 20 52 52 52 f4 52 52 52 52 52 52 52 00 52 52 52 52 52 ba 52 52 52 52 52 52 2e 92 52 fa e8 52 f6 52 52 00 48 52 38 10 f0 52 52 52 9a 52 52 24 56 d2 52 52 d0 52 52 52 00 52 52 52 ee 52 ba 52 d4 52 52 52 52 52 52 52 52 52 52 d2 52 52 52 52 52 8c 52 52 52 a2 52 52 52 00 52 52 52 2e 52 52 b2 be 52 52 52 52 52 52 ae 52 c8 52 52 52 52 00 52 52 52 52 bc 52 52 52 52 00 00 98 6e f6 d6 52 52 9c f6 52 52 9e 52 d2 52 3e 52 ce 52 a8 dc 00 06 52 dc 52 52 52 52 52 52 52 52 10 52 52 e0 52 52 52 52 fa 8e 0c 52 52 52 52 52 52 52 52 52 52 94 52 52 e2 52 ca 5e 52 52 8c 52 52 52 52 44 e0 52 52 f0 a6 52 d0 52 52 52 ca 5e 52 52 52 c4 00 ee 52 52 cc 52 52 52 52 52 52 ea 8c e6 52 52 52 1e 52 52 00 52 52 52 52 52 52 ac 52 52 fc 24 52 90 52 52 52 52 52 52 5a 52 52 00 52 6a 52 52 52 52 52 52 b8 52 52 52 52 52 00 52 52 52 3e 52 52 52 52 00 2c 52 52 52 22 52 4e 52 64 52 52 52 6c 2a 52 52 52 52 52 52 52 52 00 52 52 00 52 52 00 52 52 fc 52 52 52 84 52 52 52 52 52 6e 52 1e 0c 52 e8 16 0a 52 c4 b6 52 52 52 52 52 52 6e 52 52 52 52 52 52 52 52 52 52 fc a4 1e 52 52 7e 52 52 52 d6 52 00 52 52 52 52 42 52 52 52 52 52 58 00 be 52 52 c8 52 fa fc 52 d8 52 52 52 52 86 52 52 52 52 52 52 52 52 52 52 d6 52 52 86 52 2a 9a 52 74 52 52 52 52 52 52 5c 52 52 d4 52 52 52 52 52 9c 52 52 52 52 52 52 52 52 52 52 02 00 52 52 52 52 52 c6 52 52 52 52 52 26 52 52 52 52 52 ae da 52 52 52 52 00 52 c6 52 52 52 52 52 52 84 52 52 52 52 52 52 52 52 52 52 52 52 52 c8 52 52 52 52 28 52 52 52 52 0e 52 52 52 52 54 52 20 52 f6 52 52 a8 52 52 52 52 52 a0 6c 52 52 52 52 d6 e4 52 52 00 ea 52 52 52 52 52 52 52 d4 0e 52 52 c4 52 52 1c 64 52 52 52 52 52 52 52 52 52 52 d0 52 52 fc 0a 52 92 02 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 8e 00 52 52 00 48 a2 00 52 52 52 52 2e 00 52 52 d0 6c 9c 4a 52 52 52 52 52 52 52 4e 52 52 a6 52 b0 ee 52 52 52 52 52 52 52 52 52 52 26 c6 a0 00 52 e4 00 52 52 78 52 08 00 52 52 52 52 52 e6 52 52 52 52 52 00 fa 52 36 52 28 52 16 52 52 5a 52 52 52 52 52 52 52 32 52 5a b0 58 7c 52 52 f6 4a 52 52 52 52 52 1c c4 52 aa 40 ee 52 52 50 b0 52 00 52 52 52 e2 52 52 72 52 52 02 52 52 36 00 52 52 52 52 52 52 00 52 52 e6 00 52 52 52 68 52 52 52 52 52 52 72 7e 52 00 52 52 f8 52 52 98 52 52 52 52 52 52 52 52 52 c4 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 4a 52 fe 52 52 22 52 52 52 42 52 52 52 52 52 52 52 52 b8 20 00 ec 00 52 52 52 00 52 68 00 52 52 52 52 6c 52 ea 04 52 52 52 52 52 52 76 52 36 52 52 e2 52 52 52 52 52 52 52 52 52 ca 52 52 00 52 52 18 52 52 52 52 52 04 02 52 52 c0 52 52 52 44 52 52 52 52 52 52 68 52 5a 1e 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 a2 e6 52 e0 52 52 52 3c 52 d4 52 52 1a 52 52 18 52 9e 52 52 52 52 52 52 84 52 52 52 00 52 ae 52 00 52 52 52 52 c2 52 52 e4 36 52 52 52 f0 06 52 00 ca 52 52 52 52 52 52 52 52 52 52 48 6c 8c 52 52 52 52 c8 9a 52 52 ea 52 52 52 52 9e 52 da 56 7e 52 52 52 52 52 f0 52 52 fe 52 52 52 52 52 3e 52 52 b4 52 52 52 52 52 00 52 52 52 52 c2 52 00 52 52 52 52 52 de 8c 52 52 52 52 f0 f2 52
*/
