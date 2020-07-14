.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xd507, %r15
nop
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %r13
movq %r13, %xmm0
movups %xmm0, (%r15)
nop
nop
xor $51954, %r11
lea addresses_WT_ht+0x116eb, %r10
nop
nop
nop
nop
dec %rbp
movb (%r10), %r13b
cmp %r15, %r15
lea addresses_A_ht+0x18db7, %r12
nop
nop
nop
nop
nop
xor $18757, %rdx
mov (%r12), %ebp
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0xd1b7, %r11
nop
nop
nop
nop
dec %r15
movb (%r11), %dl
nop
nop
add $38349, %r15
lea addresses_D_ht+0x12db7, %r12
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %r13
movq %r13, %xmm6
and $0xffffffffffffffc0, %r12
movntdq %xmm6, (%r12)
add $7367, %r10
lea addresses_normal_ht+0x134d7, %r15
nop
nop
nop
xor $32602, %r13
movb $0x61, (%r15)
nop
nop
nop
dec %r11
lea addresses_WT_ht+0x1adb7, %r11
clflush (%r11)
nop
add $64760, %rbp
mov $0x6162636465666768, %r13
movq %r13, %xmm0
movups %xmm0, (%r11)
add %r11, %r11
lea addresses_normal_ht+0x1c15f, %r13
nop
nop
and %rdx, %rdx
movb (%r13), %r15b
nop
nop
and %rdx, %rdx
lea addresses_WT_ht+0x150b7, %rbp
nop
dec %r12
movb $0x61, (%rbp)
nop
nop
nop
nop
and $15155, %r10
lea addresses_WT_ht+0x1d4f7, %rsi
lea addresses_A_ht+0x1218e, %rdi
clflush (%rdi)
nop
nop
sub %r10, %r10
mov $95, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r11
lea addresses_D_ht+0x138b7, %rbp
nop
nop
nop
nop
nop
cmp $34246, %r11
mov $0x6162636465666768, %r10
movq %r10, %xmm4
and $0xffffffffffffffc0, %rbp
vmovaps %ymm4, (%rbp)
nop
nop
xor $53498, %r13
lea addresses_normal_ht+0x195d3, %rsi
lea addresses_WC_ht+0x1a5b7, %rdi
nop
nop
sub %r12, %r12
mov $93, %rcx
rep movsl
nop
nop
nop
nop
dec %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WC+0x6db7, %r12
nop
nop
nop
and $48589, %rdx
movl $0x51525354, (%r12)
nop
nop
nop
xor $36575, %r12

// Load
lea addresses_WC+0x4337, %rdx
nop
nop
nop
add $23482, %rbx
movb (%rdx), %cl
sub $25799, %rcx

// Faulty Load
mov $0x85a220000000db7, %r12
nop
cmp %rcx, %rcx
movb (%r12), %dl
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC', 'size': 4, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'72': 69, 'aa': 85, '9a': 83, 'ec': 86, '66': 85, 'a2': 71, 'e6': 86, '4e': 80, '2e': 86, 'fc': 79, 'd0': 77, '84': 95, '30': 94, '7c': 87, '52': 64, '6e': 68, '54': 10626, '24': 112, '0c': 108, '08': 95, '2c': 92, 'b8': 81, '82': 65, '3e': 76, 'c6': 79, '0a': 99, '62': 66, '38': 85, 'de': 76, '7a': 83, '04': 118, '26': 91, '34': 59, 'b6': 80, '40': 69, '20': 112, 'a8': 62, '88': 87, 'ba': 86, '58': 65, 'fe': 77, 'f0': 81, '1a': 88, '6a': 66, 'be': 82, 'c8': 85, '0e': 63, '8a': 85, '5e': 84, '7e': 69, 'd4': 94, '60': 86, '28': 60, '1c': 98, '76': 99, 'e8': 75, '70': 72, 'd6': 92, 'd2': 80, '46': 80, 'b0': 76, '32': 109, 'f4': 96, 'c2': 78, 'f6': 73, '90': 92, '42': 79, '96': 81, '14': 89, '92': 69, 'e4': 81, '10': 99, '5c': 88, '6c': 98, 'ce': 84, '12': 68, 'ae': 83, 'e2': 77, '44': 67, '1e': 80, '00': 953, 'b2': 105, '8e': 89, '5a': 73, '48': 85, '18': 77, 'ea': 52, '06': 56, '56': 98, 'ca': 62, 'a4': 83, 'fa': 68, 'c4': 90, '2a': 56, '3a': 65, '68': 91, '80': 92, '9c': 88, '22': 62, 'f2': 71, 'c0': 88, '4a': 65, '74': 75, 'da': 68, 'bc': 74, '16': 68, 'd8': 89, '64': 80, '78': 88, '8c': 97, 'ac': 74, '3c': 105, 'a6': 78, '9e': 73, '50': 96, 'a0': 77, '86': 65, '02': 76, '98': 91, '4c': 86, 'cc': 72, 'f8': 95, '94': 101, '36': 79, 'ee': 69, 'e0': 90, 'dc': 79, 'b4': 65}
b0 54 be d8 54 54 54 c6 40 cc 54 54 70 54 54 54 54 54 54 00 54 3e 6a 54 54 ba a8 54 d0 66 54 54 5c 54 1e 54 30 54 54 54 54 54 90 1e 54 d2 54 00 fa 54 e6 54 54 0a 54 54 54 ae 1e 54 a4 54 54 a0 24 54 d0 54 54 3c 2a aa 98 54 5c 6a d2 54 54 a6 54 54 80 54 54 54 54 54 54 54 54 54 fc d6 54 5e 54 50 12 54 54 54 54 54 54 08 54 5a 00 54 00 54 54 54 22 fe e2 60 54 54 54 54 54 5c 00 14 2e 54 54 54 54 a0 f4 18 54 54 3c 54 b8 54 0e 96 30 16 54 54 54 54 54 54 54 54 54 94 54 54 54 54 54 54 7a 00 82 54 54 54 54 54 10 54 54 34 54 d4 f2 54 54 54 b0 54 fe bc 54 de e0 e6 00 54 54 30 54 54 ce 10 54 f6 00 1e 54 00 54 54 54 54 54 da 00 32 6a 24 54 ba 00 30 54 54 ce 44 54 1a 54 8c 1c ec 54 06 20 cc 2c 54 54 62 54 92 54 24 64 54 00 f2 54 54 54 8a 54 66 36 54 26 54 54 d2 b2 be 8e 54 82 d4 54 54 32 54 54 98 54 e4 08 54 f2 1e 00 3e 54 3e 28 54 9c 54 54 54 54 54 54 3c 54 54 54 8a 2c 54 54 f8 dc 00 54 54 54 54 54 54 54 b8 54 66 74 54 fe 00 04 30 5a 54 54 54 54 54 54 54 54 54 54 b8 c4 9c 54 9a 08 76 8e 90 02 54 40 5c 00 5e 84 54 54 9a 54 74 ac 54 86 ae 6c d8 22 54 3c 54 54 54 54 d0 56 52 54 54 54 54 54 2e 54 54 54 54 54 de 54 54 54 4e 2e 54 46 58 54 10 54 54 54 aa 54 56 54 b6 54 54 46 54 56 50 54 54 54 54 4e 54 54 60 54 54 54 54 54 54 d4 54 54 54 38 54 54 54 54 54 54 c8 54 54 9a 54 5e 54 54 66 e2 54 54 54 56 68 f4 54 04 54 54 54 50 54 54 54 54 52 d6 54 54 54 00 54 54 56 10 54 54 54 54 54 f0 54 54 54 54 54 fe b8 04 d4 7c 54 64 d8 54 54 ae 54 54 54 54 30 a2 54 54 54 54 54 54 56 c2 0e 54 2c b6 2c 30 54 32 8c c0 d8 6c 18 f2 54 54 00 00 26 60 00 fc 54 64 92 58 54 aa 54 1c 80 52 3e 76 54 68 54 54 98 56 6c 7e fc 78 54 54 00 54 54 a4 54 54 54 54 00 54 24 08 ac 28 54 54 7e 14 4a b2 94 68 54 54 54 54 ac 54 54 54 54 04 54 54 54 54 54 54 54 d0 4e 74 54 54 a2 d2 c6 54 54 54 c0 54 54 54 54 60 54 54 00 02 54 6e 10 f0 5a 8a 42 bc 68 e4 00 6a 54 54 38 9c 00 54 54 54 54 90 54 f4 54 2a 54 54 54 2e 54 54 54 00 54 6e 54 54 54 54 54 54 54 54 54 e2 54 96 54 8c 42 f6 c0 82 54 00 2a 54 54 a2 6c 54 54 54 20 b6 54 22 54 54 54 54 64 54 28 54 5e 54 0a 54 54 1c 54 54 1e 54 54 ba 76 54 54 54 00 ca f8 54 74 cc 54 54 54 54 54 34 10 54 54 fe 54 54 82 3a 54 54 54 5e 7e 00 a0 a4 54 54 54 e8 54 24 54 de 3c 54 54 30 e8 54 6c 2c ba 8a 54 b8 5c 00 8a 54 54 54 00 0c 76 54 54 e8 e2 28 1c 54 82 74 54 54 54 0a 54 6c 54 38 3e 54 54 e8 fe 54 50 b6 54 54 5a 54 d8 34 54 a4 e0 54 54 c4 54 ba 54 0a 54 54 ea 9e 66 54 64 54 88 04 54 00 54 54 54 64 54 54 ca 36 0a 54 f6 54 d6 0c 54 54 54 94 54 aa 3a 54 7a 54 04 d8 dc 9e 54 54 94 6e 54 54 0e 54 54 7a 54 8c 06 ac aa 32 00 54 ae 54 54 00 54 9c 54 54 00 54 f0 f0 a4 16 72 78 22 54 4c 54 08 50 52 24 8c 54 54 54 54 54 c4 54 54 54 46 a6 54 54 4c 80 54 54 54 90 86 7e 54 56 ba 54 7c d2 54 54 54 54 54 54 9e 82 08 ce 54 b2 6a a4 0a 54 54 54 54 54 54 54 d6 04 54 54 54 54 54 54 54 00 da e4 1c 54 54 54 54 54 80 30 54 84 00 54 0a 54 98 82 a8 ce 54 54 54 d4 64 00 54 30 54 9e 54 4c cc 54 54 1c 60 b2 1c 06 b8 54 54 18 b2 80 54 00 78 54 54 54 00 54 54 a8 98 54 f6 c4 54 54 54 e8 9c e8 d0 54 54 0e 78
*/
