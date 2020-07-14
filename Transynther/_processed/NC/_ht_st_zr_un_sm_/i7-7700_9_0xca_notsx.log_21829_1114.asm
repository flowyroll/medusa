.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xd555, %r8
add %r15, %r15
mov $0x6162636465666768, %rbp
movq %rbp, (%r8)
nop
nop
nop
cmp $41196, %r10
lea addresses_A_ht+0x1ba55, %rcx
nop
nop
nop
xor %r10, %r10
movw $0x6162, (%rcx)
nop
nop
nop
nop
inc %rbp
lea addresses_UC_ht+0x2295, %r14
clflush (%r14)
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x5a45, %rsi
nop
nop
nop
nop
sub $64304, %rbp
mov $0x6162636465666768, %r15
movq %r15, (%rsi)
nop
xor $15325, %r15
lea addresses_WC_ht+0x2e95, %r10
nop
nop
nop
nop
nop
and $19571, %r14
mov (%r10), %si
nop
nop
xor %rbp, %rbp
lea addresses_WT_ht+0x17765, %rsi
lea addresses_normal_ht+0x4ed5, %rdi
nop
nop
add %r15, %r15
mov $63, %rcx
rep movsq
nop
xor $15035, %r14
lea addresses_A_ht+0x1552d, %rbp
nop
nop
cmp $19148, %rsi
movups (%rbp), %xmm7
vpextrq $0, %xmm7, %r14
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x2955, %rbp
nop
nop
nop
nop
cmp %rdi, %rdi
movb $0x61, (%rbp)
nop
nop
nop
nop
inc %r8
lea addresses_WT_ht+0xf88d, %r10
nop
cmp %rsi, %rsi
mov (%r10), %rdi
nop
nop
nop
xor $64049, %rbp
lea addresses_WT_ht+0x6695, %rsi
lea addresses_WC_ht+0x1774f, %rdi
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $16, %rcx
rep movsb
nop
nop
nop
cmp $41985, %r15
lea addresses_WT_ht+0xe651, %rcx
and $18037, %r14
movw $0x6162, (%rcx)
nop
nop
nop
nop
xor $53790, %r10
lea addresses_normal_ht+0x11a95, %rsi
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov (%rsi), %r14d
nop
nop
nop
nop
and %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r15
push %rbx
push %rsi

// Store
mov $0x4483f90000000a95, %rsi
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm6
movups %xmm6, (%rsi)
nop
nop
sub %r13, %r13

// Faulty Load
mov $0x4483f90000000a95, %rsi
nop
add $58345, %r12
mov (%rsi), %r10d
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rsi
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': True, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'34': 102, 'a4': 92, '4e': 78, '4c': 84, '66': 92, '72': 86, '7a': 75, 'fa': 86, '1e': 66, 'c2': 84, '24': 106, '0c': 110, '5e': 88, 'b0': 98, '9c': 103, '6a': 78, '28': 91, '36': 78, 'f8': 80, '06': 112, '56': 86, '96': 73, '20': 91, 'ba': 86, '26': 85, '50': 83, '0e': 98, 'ea': 97, 'ae': 76, '46': 82, 'de': 105, '04': 106, '92': 77, 'e6': 105, '16': 90, '2e': 89, '82': 93, '54': 90, 'f4': 97, 'b6': 85, '76': 74, 'e0': 90, 'cc': 90, 'c4': 89, 'f0': 105, '7c': 98, 'aa': 81, '70': 95, '12': 83, '6c': 99, 'b8': 97, 'a2': 68, '58': 2829, 'd8': 91, 'b2': 74, '94': 95, 'a8': 87, '3a': 74, 'e4': 109, '90': 83, '3e': 81, '2a': 104, '86': 103, 'bc': 102, 'fc': 90, '60': 94, 'ee': 88, '6e': 75, '38': 80, '5a': 81, '40': 78, 'f6': 101, '30': 96, '10': 82, '00': 7849, '84': 80, 'a6': 74, '42': 95, '78': 77, '14': 76, '8c': 99, '32': 71, '80': 83, 'd6': 83, '9e': 81, 'f2': 97, '8a': 70, '64': 89, '98': 85, 'dc': 95, 'd2': 69, 'da': 71, '22': 80, '52': 83, 'c8': 80, 'fe': 113, '62': 87, '18': 93, '9a': 96, 'a0': 81, '3c': 84, '74': 77, '68': 108, '1c': 122, 'c0': 68, 'e8': 78, '02': 108, 'c6': 82, 'ca': 91, '88': 91, 'ec': 91, 'ac': 82, '1a': 100, '8e': 88, '0a': 91, '44': 93, '08': 85, '7e': 104, 'be': 75, 'ce': 96, '4a': 84, '2c': 96, 'b4': 74, 'd0': 75, '5c': 90, '48': 102, 'e2': 97, 'd4': 91}
0e 00 00 08 e8 58 00 28 76 16 00 94 2c 58 20 00 00 c6 58 58 52 00 00 be 00 00 00 46 58 58 82 00 64 00 a8 58 00 00 00 a0 00 00 00 00 00 ac 38 58 1c b8 58 58 00 00 e6 fa 00 ea 58 70 6a 58 c6 00 00 f4 58 dc 00 f2 04 ee 00 00 00 48 58 fe 96 80 00 02 8c 00 4c 3e 00 00 ca 58 90 fe 02 6e 58 68 00 00 06 04 16 cc 9a 58 42 3e 60 42 58 00 50 00 ec 00 00 00 1a 5a 00 00 00 00 52 68 80 58 00 58 9e 00 00 f8 84 fe 1c 46 3e 00 58 00 c8 00 00 00 00 58 52 58 f2 42 00 00 58 80 58 dc 7a 00 00 d0 94 58 00 50 c4 00 00 00 d0 d4 00 00 00 28 00 b4 58 0e 58 0e d2 00 1c 00 a0 00 00 4e 54 58 00 00 58 00 ee d2 58 c2 10 00 88 00 00 00 34 0c 00 00 00 58 00 00 00 9c 4e a0 c8 ba 58 4c 00 00 38 e8 9c 00 f6 aa 00 06 58 58 58 58 58 58 3e 7a 58 00 58 00 58 00 8c 58 7a 60 98 00 9a 58 c4 58 58 58 00 58 00 24 58 00 00 00 00 00 e0 68 58 ea 00 58 00 28 00 8a 58 58 68 b6 34 5a 00 f2 92 28 e8 54 f4 00 9a 00 4e 60 ce 28 58 98 00 00 e6 b2 00 00 f2 18 00 f4 0a 00 72 f0 58 b2 00 00 92 94 58 00 58 00 00 58 36 64 58 34 58 00 40 00 c4 00 cc b2 00 00 b4 00 00 58 00 58 4e 58 88 00 00 e8 82 58 58 58 00 00 3e 00 00 b4 00 00 f2 90 58 00 58 16 00 00 20 5a 28 66 58 d8 58 00 76 00 c6 5a f8 fa 00 f4 74 58 00 6a 00 00 ec 56 58 00 00 ee 66 dc d8 9e 58 00 00 00 58 58 00 00 ba 00 00 9e 00 10 00 c6 58 c8 98 d0 72 00 ca 00 00 00 00 00 00 00 00 a8 00 00 60 58 08 00 fc 10 00 74 1e 00 bc 58 58 58 50 ea 00 b8 00 00 e0 58 e0 58 00 04 00 94 22 bc 00 00 00 00 00 fe 00 b6 00 00 1c f4 00 00 00 00 a2 64 00 5c fc 00 de 00 00 58 7a 58 00 58 58 00 cc 00 00 58 74 58 00 00 a8 58 58 14 a2 2c 7c 00 58 00 22 86 00 b0 58 00 c8 00 00 00 34 b0 92 00 68 f4 d8 00 00 62 dc 00 34 a2 58 00 c4 58 00 00 00 00 44 e2 58 00 64 68 58 00 00 5a 74 00 94 d6 80 58 e8 58 80 00 d4 00 0e c8 1e 00 88 00 b4 00 58 f0 58 e0 bc 58 00 00 82 72 74 00 00 00 00 00 e8 58 00 00 94 00 00 f4 34 3c b6 00 0e 00 f4 86 92 e6 58 14 00 b4 86 c6 58 a8 58 00 7a 58 6e 58 00 4c 00 00 00 a2 00 00 a6 00 00 88 58 12 00 58 00 00 ba 58 18 00 c6 58 00 00 58 58 1a 5a 58 2a 00 4c be 00 00 78 58 00 00 00 d8 b0 00 00 be 36 58 00 76 00 12 58 9a 58 58 58 06 58 58 fe 1a 00 00 b8 b6 c8 a2 58 00 58 00 00 36 94 00 4c 8c 58 b0 00 00 98 de 58 00 52 dc 58 46 ea 82 b4 58 00 00 00 00 0c 00 c8 8c 58 7c 94 58 b8 00 00 00 00 a8 a0 00 00 2a be 36 58 00 00 84 fe 46 c4 86 84 60 00 12 00 30 00 bc 00 00 00 64 58 00 7a 00 58 00 00 00 bc 78 76 94 58 18 b2 00 00 00 00 f4 e2 92 58 58 4a a0 00 00 00 00 2a 58 90 fa 00 00 4e 58 58 04 58 00 00 58 00 58 c8 58 00 1c 32 58 58 00 6c 00 2e 00 54 da 0e 00 66 00 1a 06 c4 00 c4 00 28 06 00 6e ec 2a 90 00 00 ca 2e 00 00 ec 82 e6 58 58 00 00 00 04 00 58 f0 00 5c 00 00 82 8e 42 00 00 00 00 1e 26 00 18 9c 42 6c 58 20 98 00 1c ca 58 e4 b8 00 00 00 00 e4 e6 58 14 00 46 be 58 00 00 ee 00 00 00 00 00 76 3c 58 00 00 00 00 00 58 58 00 00 00 00 8c 6e 00 00 00 28 3a 58 2c 4a 58 fe 18 ce 00 00 00 1e 52 48 00 20 00 00 00 00 00 00 00 d4 00 00 00 00 00 9e 00 fc 70 58 c4 b0 00 82 58 58 78 d0 7e 00 0a 62 5e 00 64 82 00 a0 b8 00 16 70 ce 00 c8 58 00 a4 00 00 58 58 fc b4 98 02 22 f2 ae
*/
