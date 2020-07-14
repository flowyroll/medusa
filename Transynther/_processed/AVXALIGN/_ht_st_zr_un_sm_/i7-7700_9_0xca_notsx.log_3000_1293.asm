.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xf83a, %rbp
nop
nop
nop
nop
cmp $5333, %r15
movb (%rbp), %r8b
nop
nop
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0xc450, %rcx
nop
nop
dec %rbp
movups (%rcx), %xmm7
vpextrq $0, %xmm7, %r13
nop
nop
nop
nop
nop
add $6406, %rbp
lea addresses_normal_ht+0x6c1f, %r11
cmp $48702, %r15
movw $0x6162, (%r11)
nop
nop
dec %rcx
lea addresses_WT_ht+0x12850, %r8
nop
nop
nop
sub %rbp, %rbp
mov (%r8), %r15d
nop
nop
sub $34781, %r11
lea addresses_UC_ht+0x1ca50, %r11
nop
nop
nop
nop
nop
and $26694, %rdi
mov (%r11), %r15d
nop
nop
nop
dec %rbp
lea addresses_WC_ht+0x3250, %rcx
nop
nop
cmp $15316, %r11
mov $0x6162636465666768, %r15
movq %r15, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0xd9c8, %r15
nop
xor %rcx, %rcx
movups (%r15), %xmm2
vpextrq $1, %xmm2, %r13
nop
nop
nop
xor $2702, %r15
lea addresses_A_ht+0x1a396, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
add $6594, %r15
movb $0x61, (%rcx)
nop
cmp $11783, %rcx
lea addresses_WC_ht+0x1c50, %rsi
lea addresses_normal_ht+0x100c8, %rdi
nop
nop
nop
cmp $53495, %r8
mov $50, %rcx
rep movsl
nop
nop
nop
add $29286, %r8
lea addresses_normal_ht+0x16630, %rsi
lea addresses_UC_ht+0x4d50, %rdi
nop
nop
inc %r8
mov $3, %rcx
rep movsb
nop
nop
nop
nop
sub $54963, %rdi
lea addresses_D_ht+0x8950, %r8
nop
add %rbp, %rbp
movw $0x6162, (%r8)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0xddc2, %rsi
lea addresses_WT_ht+0x12c50, %rdi
clflush (%rsi)
nop
nop
nop
nop
add $13783, %r15
mov $126, %rcx
rep movsb
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x3de0, %rsi
nop
cmp $58937, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm6, (%rsi)
nop
nop
nop
nop
nop
and $13408, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi

// Store
mov $0x1b2d420000000450, %r15
nop
nop
nop
inc %rdi
movb $0x51, (%r15)
nop
nop
nop
cmp $19669, %rcx

// Load
lea addresses_A+0x15450, %r13
nop
nop
nop
inc %rbx
movups (%r13), %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
add %r8, %r8

// Faulty Load
mov $0x1b2d420000000450, %rbx
nop
nop
nop
cmp $53993, %r15
vmovaps (%rbx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r8
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'34': 6, '6a': 3, '08': 7, '4e': 6, '4c': 2, '66': 4, '72': 8, '7a': 3, 'f0': 94, '98': 1, '1e': 4, 'c2': 12, '2c': 1, '24': 7, '0c': 3, '6e': 5, '5e': 3, 'f8': 99, '9c': 3, '3e': 2, '28': 8, '36': 3, '12': 5, '06': 9, '56': 9, '96': 20, '20': 5, 'ba': 8, '26': 5, '50': 4, '0e': 4, 'ea': 77, 'ae': 3, '46': 7, 'de': 83, '04': 2, 'ac': 4, 'e6': 85, '16': 4, '2e': 6, '82': 5, '54': 4, 'f4': 85, '58': 4, 'b6': 21, '76': 4, 'e2': 7, 'c4': 4, 'fa': 105, '7c': 1, 'aa': 4, '70': 4, 'b8': 5, '51': 285, 'a2': 10, '5c': 3, 'd8': 6, 'b2': 6, '94': 2, '4a': 3, '3a': 4, 'e4': 101, '90': 3, 'cc': 100, '2a': 5, '86': 3, 'bc': 4, 'fc': 88, '60': 7, 'ee': 109, '0a': 5, '38': 2, '5a': 3, 'd6': 55, 'f6': 83, '10': 4, '00': 122, '84': 5, 'e0': 120, '42': 8, 'be': 1, '14': 2, '8c': 2, 'ce': 3, '52': 6, '40': 5, '9e': 8, 'f2': 90, '8a': 2, '64': 4, '30': 2, 'dc': 96, 'd2': 4, 'da': 91, '22': 7, 'c8': 5, 'fe': 85, '62': 4, '18': 2, '9a': 6, 'a0': 6, '3c': 2, '74': 3, '68': 4, '1c': 3, 'c0': 77, 'e8': 85, '02': 6, 'ca': 5, '80': 3, '44': 7, 'ec': 96, '92': 6, '1a': 5, 'b0': 5, '8e': 5, 'a4': 10, 'a6': 2, '7e': 4, '78': 6, '32': 4, '88': 2, '6c': 1, 'c6': 15, 'b4': 7, 'd0': 91, '48': 4, 'd4': 88}
f2 dc c0 d0 6e 00 f4 02 f4 de 51 51 92 c0 d0 ec 92 d6 da 1e e4 51 ee ee ea e0 cc ea f4 f6 de e8 fc d0 51 00 00 96 44 e6 d6 51 51 ec ec 62 00 e8 e6 f4 e6 7a ba cc f6 68 ce ec fc ec 34 12 cc e4 e0 f4 fe ea ec f8 e4 f0 dc ec e4 51 51 fe fe e6 e4 a6 ac 51 00 f8 c0 22 d6 c0 f6 f8 fc 44 e4 f4 c0 fa 51 ec 51 f8 fe f8 51 dc fc 51 ee 7c e8 cc a2 fa fc 96 f4 dc e4 e4 d6 c0 51 f4 e8 e0 ee 50 f2 d4 dc f2 d0 56 fc 51 dc fc 0a 4a b8 00 ec f8 cc f4 00 00 ec dc 32 e0 de 7a ec f6 f0 e0 fc 06 06 fa ee f4 cc 51 c4 ec d0 66 00 fe fa c0 e4 f8 34 e0 51 fc 0c 7e d0 c0 f4 ea f6 c2 8a e8 ee da f4 72 fe f8 51 51 cc e6 a4 fc 00 a6 d0 fc b4 00 f2 00 fa f8 ea ec fc b6 6e ee f8 f0 00 00 d8 51 f6 51 1c da ee e4 00 e0 fc ce cc c6 51 e8 fe d8 e8 d0 e4 e4 ea 6e 20 e6 ee d0 c0 ea e8 d8 f0 f8 e4 c6 d0 cc e6 96 fa 00 ee 00 f6 ea ea f6 de f6 ee ea f6 d4 fe b2 e0 f6 ba d4 f8 51 c0 00 24 fa 51 d4 51 e0 e6 c4 d4 cc 46 ea fc 9a cc 00 f4 d6 d4 fa 46 d0 00 de 51 de 51 68 f0 f8 e4 cc e4 de d0 da 0c e8 e2 dc e6 dc fa f8 fe f8 10 54 51 e4 fa 51 f4 96 cc fe 51 d6 d4 46 f8 cc a4 fe ee e0 00 00 f2 d6 fe fc fe e6 f6 fc da 51 f6 cc de da d4 51 c0 dc d6 c6 de ec f0 e8 fa fc fc ee d0 f0 f4 8e e6 28 04 d4 f8 e0 d0 e0 ec c0 dc 56 d4 f2 da 1a f2 e0 cc f0 5a e6 51 fe ec e0 7e 00 ec e6 f4 fe 96 e0 dc fa 51 d4 ea f6 d6 f8 0e 42 60 ee ec f8 e4 b4 d4 fc ea cc f8 ca f6 da e4 e0 78 dc e6 e0 51 f8 00 51 fe 51 de e0 cc f6 fc fc 8e f4 cc dc ec 94 f0 e6 f0 84 d0 fa de 51 ee ea e4 d6 e0 d0 82 d6 ea da 51 f2 ca d4 51 60 6e f6 b6 2a de e4 fa dc 51 d4 cc da 7e f6 ea fa ea b8 e2 f0 ee da aa 51 f6 51 d4 f2 51 f8 e6 fa 51 f4 f6 cc 9c cc 51 ee cc dc fa fa fa 46 ec da da ec da fe e6 9a c0 fa e8 56 f4 fa c0 02 f6 e8 de 51 51 c2 5c 51 e0 f4 42 00 e0 d4 51 51 fc a2 fe e0 02 ec de 51 d6 51 28 e0 b2 51 cc f0 51 ec de ea d4 00 f0 f0 f0 fa fe f0 ee cc e4 2a f0 52 e8 51 f4 86 e4 ec 51 dc f6 f8 92 c0 12 e4 e6 fc 00 ee da ec f6 34 fa 5c c0 da 36 51 b6 84 f8 e6 51 d6 d0 e0 56 ea e8 fe dc c2 fc fc 00 c0 ec c6 de e6 bc f6 51 d0 51 d0 f0 d4 cc da de 78 f4 51 dc e8 e4 f2 42 fa cc ee f8 c0 e6 f0 51 ea dc 4e d6 c0 c0 d4 16 fa f8 42 ee c0 dc e4 a2 f8 b0 f8 f2 fc f8 08 ea 3e c0 d2 d0 e0 f6 da fa 1c da 00 4c fe fc cc fe ea dc d4 cc f6 cc f2 d0 e0 cc 51 d0 c0 d6 da f6 b6 d6 d4 c0 56 08 51 ea e0 f0 ec ec ea cc d4 de d4 fe ec ec e6 82 0a fa 00 d6 fa 51 e6 f6 ee e6 ee fc e6 d4 a2 e8 e6 00 f2 d4 51 ec f6 aa ac fc 08 ba ee ea ec f4 e4 51 f0 51 d0 f8 20 d4 de 50 e0 f8 fe f0 f4 fa f0 51 e0 f2 fc c2 dc e8 51 dc de fa f6 51 00 f2 e8 00 68 51 f4 d4 36 51 e4 51 51 f8 2a f8 dc c0 96 fa 00 ec e0 00 f6 f2 fc e0 51 b4 cc ee ee 56 da e8 fc ec f6 9e 00 a2 00 96 cc ea de d4 32 3a f6 51 f6 f0 e0 e8 ee f8 f2 e0 fa ea 51 fe da 66 c6 f8 de 00 b4 56 fa d0 84 fe ee 51 ee f6 da c6 ee fa ec ec cc e4 cc f6 b6 f2 f2 51 fc f8 e4 51 ec 51 51 aa 00 e8 f0 51 e4 f2 74 f6 51 e0 e0 ec 9a cc 00 fe 02 00 82 ec 51 fa e6 78 51 c0 dc 51 ec ec ea d4 e0 51 51 fa ec 51 f6 51 fc da e4 50 d4 de b4 51 dc de cc 51 00 70 e6 00 fc 26 fa e4 3c 51 f2 72 b6 de 51 c2 f2 d0 51 de 08 64 cc fa e8
*/
