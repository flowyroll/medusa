.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x12696, %rdi
nop
add $49524, %r9
movb $0x61, (%rdi)
nop
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0xad88, %r10
clflush (%r10)
add $61276, %r11
mov (%r10), %r13
nop
inc %r13
lea addresses_WT_ht+0xce96, %r13
nop
nop
nop
nop
cmp %r15, %r15
movb (%r13), %r10b
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x18aaa, %rdi
nop
nop
and %r9, %r9
mov $0x6162636465666768, %r11
movq %r11, %xmm6
vmovups %ymm6, (%rdi)
nop
inc %rdi
lea addresses_UC_ht+0x1e196, %rsi
lea addresses_A_ht+0x8096, %rdi
clflush (%rdi)
nop
sub %r10, %r10
mov $45, %rcx
rep movsb
nop
nop
add %r11, %r11
lea addresses_A_ht+0x4ae, %rcx
cmp %rsi, %rsi
movb (%rcx), %r11b
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rbx
push %rdx

// Store
mov $0x1e896a0000000896, %r9
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %r10
movq %r10, (%r9)
nop
nop
nop
nop
cmp %r10, %r10

// Store
mov $0x76fef500000000c6, %rbx
nop
nop
xor $6060, %r15
mov $0x5152535455565758, %r14
movq %r14, (%rbx)
nop
nop
cmp %r9, %r9

// Faulty Load
mov $0x1e896a0000000896, %rbx
nop
nop
nop
nop
nop
xor %r15, %r15
movb (%rbx), %r10b
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'34': 16, 'f8': 20, '6a': 21, '4e': 20, '42': 17, '66': 16, '72': 19, '7a': 13, 'f0': 21, 'c2': 18, '2c': 16, '24': 15, '0c': 19, '5e': 18, 'b0': 20, '9c': 23, 'cc': 30, '28': 22, '36': 21, '12': 11, '86': 30, '56': 24, '96': 13, '20': 25, 'ba': 14, '26': 19, '50': 17, '0e': 22, 'ea': 39, 'ae': 17, '46': 18, 'de': 31, '04': 23, 'ac': 22, 'e6': 35, '16': 15, '2e': 19, '82': 21, '54': 20, 'f4': 25, '58': 18492, 'b6': 13, '76': 19, 'e0': 26, 'c4': 27, 'fa': 30, '7c': 11, 'aa': 19, '70': 21, '6c': 16, 'b8': 21, 'a2': 15, 'a0': 24, 'd8': 36, 'b2': 11, '94': 20, 'dc': 28, 'a8': 22, '3a': 10, 'e4': 42, '90': 28, '3e': 15, '2a': 5, 'bc': 17, '0a': 27, 'fc': 20, '60': 21, 'ee': 32, 'a4': 18, '38': 17, '5a': 21, '40': 21, '62': 17, '30': 17, '10': 22, '00': 162, '84': 13, 'a6': 22, '4c': 29, 'be': 21, '14': 12, '8c': 20, 'ce': 20, '52': 28, 'd6': 18, '9e': 28, 'f2': 46, '06': 21, '8a': 25, '64': 15, '98': 21, '1e': 16, 'd2': 19, 'da': 24, '22': 19, 'c8': 20, 'fe': 27, 'f6': 40, '18': 17, '9a': 25, '5c': 20, '3c': 17, '74': 12, '68': 22, '1c': 15, 'c0': 33, 'e8': 36, '02': 20, 'ca': 40, '80': 17, '44': 18, 'ec': 33, '92': 5, '1a': 17, '8e': 17, '6e': 7, '08': 21, '7e': 15, 'e2': 25, '32': 15, '88': 19, '4a': 18, 'c6': 15, 'b4': 21, 'd0': 41, '78': 15, '48': 10, 'd4': 26}
58 62 58 58 58 58 58 58 58 58 98 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e2 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 90 58 58 58 58 58 58 58 58 58 58 58 58 58 f4 58 58 58 58 58 58 90 58 58 58 58 fc 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 b4 58 58 58 58 00 58 58 58 94 58 58 58 58 58 58 58 06 58 58 58 58 58 58 58 9e 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 9e 58 84 58 02 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 46 58 58 58 58 58 58 58 58 44 58 58 58 58 58 58 c0 58 58 58 02 58 8a 58 58 fa 58 84 58 58 58 58 58 58 58 58 58 58 58 62 58 58 3a 58 34 58 a8 58 bc 58 58 58 58 fa 58 58 58 58 58 58 da 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 3c 58 40 58 58 ce 58 58 58 58 58 58 58 58 58 58 58 46 58 58 e4 58 58 58 58 58 f2 1e 58 58 58 68 58 58 58 58 58 1e 3c 58 9e 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 14 58 58 58 58 58 58 58 58 58 8a 58 58 c8 58 14 58 58 58 d0 58 58 58 58 58 58 58 f2 58 58 58 58 58 4e 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 4e 58 58 58 d0 58 58 58 58 58 58 58 58 58 58 58 58 58 44 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 82 58 58 58 58 58 58 58 58 58 58 58 3e 58 58 58 58 58 58 58 58 58 58 fe 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 60 58 58 58 58 e0 58 58 58 58 ae 58 58 58 58 58 b2 c4 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 ee 58 58 58 58 58 58 4c 02 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 d2 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 d8 58 58 58 58 58 ee d4 58 58 58 68 58 90 58 58 58 2e 58 58 58 58 ec 58 58 58 58 58 58 58 58 58 58 58 58 ac 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 de 58 58 58 58 58 58 58 58 58 58 58 58 96 58 58 58 58 58 d0 58 ea 58 54 58 58 58 58 a0 a8 58 58 58 58 5a 58 58 58 58 58 58 58 58 58 0e 58 58 58 58 58 82 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 22 58 58 58 58 58 58 58 58 58 58 58 58 58 ce 58 58 58 58 58 58 58 58 60 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 16 58 9e 58 58 58 58 58 58 9c 58 36 58 58 58 58 58 58 58 58 58 58 58 36 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 de 58 58 58 58 58 58 58 ec 58 58 58 e0 58 58 58 58 58 58 58 0c 58 1e d6 58 58 58 58 58 58 58 58 58 b0 58 58 58 58 58 58 f0 58 58 58 58 58 58 58 82 4c 58 58 58 fe 80 58 58 32 58 58 58 58 58 58 58 08 58 b4 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 68 a0 58 58 58 58 58 58 58 58 58 58 58 58 58 34 00 58 d0 58 58 58 58 58 58 58 58 58 e6 58 58 58 58 58 58 58 e0 58 58 58 58 58 58 58 58 b8 58 9a 58 58 fc 58 58 58 58 58 58 58 58 58 ac 58 58 58 58 58 58 58 58 58 58 ee 58 58 58 58 58 58 de 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 f2 58 58 58 58 58 58 58 58 58 58 58 58 7a 58 58 6e 58 58 ea ee 58 58 58 58 58 58 58 58 58 b8 50 58 58 9e 58 58 58 e0 58 00 ea 58 58 58 58 58 ec 58 58 58 58 58 58 58 58 58 58
*/
