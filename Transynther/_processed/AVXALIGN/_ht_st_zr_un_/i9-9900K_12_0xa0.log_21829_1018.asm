.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x17584, %r9
nop
nop
nop
nop
add %r13, %r13
mov (%r9), %r15
nop
nop
add $11188, %r10
lea addresses_A_ht+0x1c584, %r9
nop
nop
nop
add $58451, %rax
mov (%r9), %r8d
nop
nop
nop
dec %r9
lea addresses_A_ht+0x7e17, %r15
nop
nop
and $25566, %rsi
mov $0x6162636465666768, %r13
movq %r13, (%r15)
add $59528, %rax
lea addresses_D_ht+0x15504, %rax
nop
nop
dec %r15
mov $0x6162636465666768, %r9
movq %r9, %xmm4
vmovups %ymm4, (%rax)
cmp $15560, %r10
lea addresses_A_ht+0x6648, %r13
nop
nop
add %r10, %r10
mov $0x6162636465666768, %r15
movq %r15, %xmm7
movups %xmm7, (%r13)
nop
and %r10, %r10
lea addresses_A_ht+0x6a84, %rsi
lea addresses_A_ht+0x1bb4, %rdi
cmp $8896, %r13
mov $31, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_D_ht+0x18dc4, %rsi
lea addresses_WC_ht+0x12284, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %rax
mov $48, %rcx
rep movsb
nop
nop
nop
nop
add $47055, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rbp
push %rdi

// Faulty Load
mov $0x784e990000000d84, %r15
nop
nop
nop
xor %r10, %r10
vmovaps (%r15), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rdi
pop %rbp
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'0a': 272, 'ab': 3, '3b': 2, 'b2': 181, '4e': 264, '55': 3, 'cb': 91, 'b4': 6, 'fc': 6, '4c': 88, '42': 91, '3e': 14, '1e': 13, '3a': 95, 'b6': 172, 'd6': 271, '41': 94, '1b': 89, '96': 268, '6c': 3, '32': 93, 'ca': 178, 'de': 180, '27': 2, 'd2': 97, 'd9': 3, '7d': 1, '94': 90, 'f0': 94, '36': 93, '50': 21, '46': 92, '02': 189, 'c2': 266, 'ae': 11, '04': 89, '16': 3, '83': 2, '6f': 2, '8e': 267, '7a': 182, '2a': 185, 'aa': 268, 'b7': 1, '81': 11473, 'ea': 92, 'ed': 4, '12': 178, '76': 94, '4a': 95, '07': 2, 'ba': 103, '52': 104, '00': 1, '5a': 94, '56': 100, 'e5': 3, 'fe': 187, 'a6': 103, 'ee': 183, '86': 97, '58': 91, '5e': 8, '6a': 98, '0e': 10, '6e': 7, 'f9': 1, 'c5': 1, '7e': 91, 'e2': 180, 'f6': 100, 'fa': 182, '0d': 2, 'df': 10, 'c6': 92, 'dc': 1, '72': 181, 'bf': 4, '21': 91, '22': 268, '9d': 92, 'b1': 3, '4f': 4, '62': 99, 'da': 176, 'f2': 98, '63': 1, '9e': 179, '13': 1, 'c8': 3, '8a': 175, '80': 189, '91': 2, '1a': 183, '10': 89, 'a2': 96, 'ce': 97, '35': 93, '26': 4, '06': 190, 'be': 91, 'f3': 90, '24': 1, '69': 3, '2e': 178, 'a8': 87, '97': 92, '38': 90, '66': 270, '82': 95, '92': 93, '9a': 101, 'e6': 98}
00 50 50 50 50 50 50 50 50 50 50 50 50 50 02 02 50 50 50 50 50 50 50 50 52 81 81 81 52 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 52 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 52 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 52 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 7e 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 7e 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 aa aa aa aa aa aa aa aa aa aa aa aa 81 aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa 81 aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa 81 aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa aa 81 d6 d6 d6 d6 d6 d6 d6 d6 d6 81 d6 d6 d6 81 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 81 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 81 d6 81 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 81 d6 d6 81 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 d6 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 81 02 02 81 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 81 02 02 02 02 02 81 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 02 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 81 2e 2e 2e 2e 2e 2e 2e 81 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 81 2e 81 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 81 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e 81 2e 2e 81 2e 2e 2e 2e 2e 5a 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 5a 81 81 81 81 81 81 81 81 81 81 81 5a 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 5a 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 5a 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 86 81 81 81 86 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 86 86 81 81 81 86 81 81 81 81 86 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 b2 81 81 81 b2 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 81 de de de de de de de de de de de de de de de de 81 de de de de de de de de de de de de de de de de de 81 de 81 de de de de 81 de de de de de de de de de de 81 de de de de de de de de de de de de de de de de de de de de de 81 de de de de de de de de de de 81 de de de de de de de de de 81 0a 0a 0a 0a 0a 0a 0a 0a 0a 81 0a 0a 0a 0a 0a 0a 81 0a 0a 0a 0a
*/
