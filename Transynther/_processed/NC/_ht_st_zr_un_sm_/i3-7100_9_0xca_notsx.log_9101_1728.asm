.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x14e99, %r15
nop
nop
nop
nop
nop
xor %rdx, %rdx
movups (%r15), %xmm1
vpextrq $1, %xmm1, %rbx
nop
nop
nop
and $44080, %r9
lea addresses_UC_ht+0x4779, %rsi
lea addresses_D_ht+0x13d99, %rdi
clflush (%rsi)
nop
and %rbx, %rbx
mov $14, %rcx
rep movsl
nop
nop
and $38636, %rdi
lea addresses_WC_ht+0xe5f9, %rsi
nop
nop
nop
sub $31190, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
sub %r9, %r9
lea addresses_WC_ht+0xcff9, %rdx
nop
nop
nop
dec %rdi
and $0xffffffffffffffc0, %rdx
vmovaps (%rdx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rax
push %rcx
push %rsi

// Load
lea addresses_PSE+0xfff9, %rax
nop
nop
nop
nop
inc %r10
mov (%rax), %r12d
nop
nop
nop
nop
nop
cmp %r12, %r12

// Store
mov $0x6af5c600000007f9, %rcx
nop
cmp $26903, %rsi
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
nop
and %r11, %r11

// Faulty Load
mov $0x6af5c600000007f9, %r11
nop
nop
nop
nop
nop
inc %r14
vmovups (%r11), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rsi
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'9a': 14, 'ec': 263, '66': 21, '16': 7, 'a2': 12, 'e6': 273, '8c': 15, '2e': 18, 'fc': 258, 'd0': 261, '30': 9, '5f': 1, '7c': 12, '3a': 14, '6e': 13, '54': 21, '24': 15, 'aa': 14, '72': 12, '90': 20, '82': 17, '3e': 17, 'c6': 282, '0a': 14, '62': 14, '38': 5, 'de': 257, 'ae': 11, '7a': 23, '42': 19, '26': 10, '34': 21, 'b6': 16, '40': 19, '20': 21, 'a8': 9, '88': 21, 'ba': 12, '58': 396, 'fe': 285, 'f0': 261, '1a': 16, 'e0': 257, 'be': 20, 'c8': 16, '0e': 13, '8a': 13, '5e': 22, '7e': 16, 'a0': 15, '60': 21, '28': 10, '1c': 16, '76': 18, '6a': 16, '18': 20, '70': 18, '5a': 10, '08': 16, 'ce': 11, 'c0': 301, 'b2': 14, '68': 18, 'f4': 275, 'c2': 254, 'f6': 243, 'b0': 20, '04': 8, '96': 16, '14': 15, '92': 15, 'e4': 11, '10': 18, '5c': 17, '6c': 18, 'd2': 228, '12': 13, '0c': 18, 'e2': 234, '44': 16, 'a6': 9, 'f2': 283, '00': 306, 'ac': 18, '8e': 15, 'd6': 261, '48': 15, '52': 15, 'ea': 277, '06': 16, '56': 11, 'ca': 276, 'a4': 13, 'fa': 252, '46': 16, '2a': 13, 'e8': 273, '80': 24, '9c': 17, '84': 12, '1e': 14, '22': 23, '4a': 11, '74': 22, 'da': 255, 'bc': 16, 'b4': 15, 'd8': 17, '64': 15, 'c4': 15, '78': 9, '4e': 13, '50': 17, '2c': 16, '3c': 12, '32': 12, '9e': 15, 'b8': 17, 'd4': 22, '86': 16, '02': 9, '98': 13, '4c': 14, 'cc': 288, 'f8': 264, '94': 16, '36': 14, 'ee': 238, 'dc': 272}
58 58 58 cc ea d6 ca 58 f8 fc 3c c2 f4 54 de b8 d6 c6 46 da f8 36 c0 f6 9e 9a 5e cc 5c 5c f8 f8 36 d6 f4 ec c0 d6 60 ee d2 e6 7e 58 96 dc 98 00 58 aa f8 da f0 c0 f0 f8 f0 d2 ee 58 e6 ec e6 da f2 f4 d0 e2 c0 dc ea e8 cc cc f6 fe f0 d6 ec ca ca fc e6 c6 e8 dc f0 fc da 8e ec 9c 30 e0 da fc 5e 00 02 f6 de 44 cc 7a de c2 cc f6 e2 2e 58 cc e2 26 3e cc 8c 7a 3c e8 6c 6e f0 5e 26 56 e6 fc ec c2 f8 f2 1c fa de c0 fe 94 f0 de fe fc e6 ca fc d6 58 9a e8 d6 fc f2 ec ea f2 ca da c0 d6 e8 22 9c 5a 44 ac d8 b0 10 c2 68 98 dc 62 90 d6 0c da 9e de b2 78 c2 a0 aa 7e 20 2c e0 ea 22 e2 82 e2 da d0 f4 fa d2 c0 94 ec d2 e6 ec f8 dc cc c6 d6 f0 e8 f8 e6 e6 4e d6 d6 ea ea d2 fc fe c2 fc dc e8 e8 d0 e6 e8 fe fe ec ea be cc ea ec e6 f6 d2 ee ec f0 f4 e0 fe 84 12 c0 a4 98 00 00 f8 f6 42 ec 98 cc 70 e0 be 58 0c ca ea e6 00 aa c2 c2 ca da 24 c2 fc aa e0 fc 00 f8 f8 64 ec ca cc ee ec e6 e2 ea f4 30 58 fa 82 da d6 c6 d6 d6 d2 f4 fa f6 f0 c2 e6 ea d0 e0 d6 98 72 e0 da ec f4 e6 ca e8 dc fc c0 54 ca fa e2 40 f2 ee e8 fe c0 e0 d6 f8 d2 d2 f4 e0 fe e2 ea 64 d0 4e ee d0 f6 e2 fc cc be 00 d2 f8 c0 c6 f0 d6 dc fa f4 d4 c0 f2 4c ea fe fe 64 d0 cc c2 de c6 00 ee e0 f4 c0 da c2 c0 d6 e6 f2 de fa d6 9c f0 f4 e0 fc c6 fc c0 fe e6 ec fa e8 fe f0 4c de f0 f6 ec 8e dc e2 d6 70 e2 da de e0 00 68 fa d0 c2 00 f8 ee e0 c6 c0 fe f0 08 ca f8 e6 1c d2 f8 d0 dc f4 e2 ea 5c fc ca ec d2 d6 fa 00 da dc c2 8c f8 12 f8 dc e8 e8 24 da fa cc e2 e8 fc 42 c2 dc ee e2 e6 00 ca dc c6 58 f6 de 34 60 00 dc f8 5e e2 d2 de c6 00 ca da da cc 5c c2 1e e2 ea c2 da ec e8 c0 60 f2 f6 e6 fe c6 c0 f6 f0 e0 d6 e2 00 d0 f2 60 00 e2 00 e2 fc b8 fe 00 c2 00 f4 cc e8 f8 00 c2 80 e8 e2 de 1e c6 cc ee ca f6 f8 cc f4 c6 de d0 ca e2 b4 c2 46 e2 f6 fa 9a ee c2 e6 f0 de b8 f8 f0 cc f6 c6 e8 e2 c0 d4 c6 de f4 f6 da ec e8 c2 fc de fa ee ec c0 f0 cc ea fe f0 da 00 d6 d2 d2 42 00 ea ea d2 da fa f8 c0 00 d6 c0 c0 de da f2 b8 d0 e0 de e6 d6 1a e0 f8 fa da cc f2 fc f4 f0 c0 d2 f8 00 fa d6 f4 da fe f2 f4 22 e2 f0 f8 d6 f4 c0 f4 e8 c6 ea 9a f2 cc 54 f4 cc c0 00 fc e0 00 ec 36 fc c6 00 d6 f6 fc f2 d2 c6 cc f8 58 e6 e8 d0 92 00 ea e6 d2 f0 f6 ea c6 da d2 f8 d6 ca c2 d2 9e d6 f8 f2 c2 e2 f0 e6 d2 d0 72 ee f0 cc c2 c6 e8 da f4 e0 fc ce d6 c0 ec f6 dc ee d6 f0 e6 ee fc da fa f4 d0 ec 58 00 da cc cc fe da e0 d2 fc 00 64 f4 da fc d6 fc c2 ea dc 00 88 d6 22 e6 cc e6 ca 00 00 00 ee ae b4 d2 5e f6 ea 50 ca c0 be da 00 de c6 e4 28 da 00 00 fc f2 64 1c a0 68 b0 98 8a 0e c6 ea ca d0 b8 ec 00 da ee 7a fe e6 00 ea d0 50 e0 ee e0 d2 de e0 e6 c6 e0 f6 4c da e8 f8 c2 e8 fe e2 d2 f8 c2 fc fa 96 44 74 ca c2 e8 ca ec f0 f6 e6 da f6 e8 c2 78 c0 e2 5a ea c0 fe ec f0 f8 a0 f2 c0 e8 00 c0 ca 2c ec f2 de f2 04 d4 d2 ca d2 f6 00 fe c0 c0 cc fc ee fc 00 cc ea e2 e6 fa ea f2 fa f2 82 f8 fa d0 00 fe 22 dc ee ec 82 fc c0 c6 fe f8 c2 c0 f2 f6 e2 58 58 d2 fc ba ec c6 d0 f6 c6 fc f6 f2 e6 58 d2 e8 d2 c0 ec f2 d2 00 fa 8e de e6 ea e8 ea da d2 f6 e8 ea e8 ec cc ea ec cc cc ea dc dc f2 e8 c2 fa e8 f6 58 7c ea f8 cc 54 e6 da ec ee d6 e6 1c fa d6 f0 ec f8 ea f6 e2 fc f4 e2 d6 f4
*/
