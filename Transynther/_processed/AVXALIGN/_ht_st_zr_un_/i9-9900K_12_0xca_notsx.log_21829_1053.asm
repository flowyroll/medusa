.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x2977, %rsi
nop
nop
nop
nop
and $40464, %rdx
mov (%rsi), %r15
nop
sub %r9, %r9
lea addresses_normal_ht+0x9837, %rbp
nop
nop
add %r8, %r8
vmovups (%rbp), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
and $23345, %r8
lea addresses_WC_ht+0x1dc37, %r8
nop
nop
nop
nop
nop
cmp %rbp, %rbp
movups (%r8), %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x8837, %rsi
lea addresses_A_ht+0x16947, %rdi
clflush (%rsi)
sub %rbp, %rbp
mov $19, %rcx
rep movsw
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_D_ht+0xa037, %rsi
lea addresses_A_ht+0x1e337, %rdi
clflush (%rsi)
nop
nop
nop
and %r8, %r8
mov $117, %rcx
rep movsl
nop
nop
nop
nop
inc %r9
lea addresses_D_ht+0x837, %rsi
lea addresses_UC_ht+0x15ac7, %rdi
nop
nop
nop
nop
nop
add $46996, %r15
mov $61, %rcx
rep movsq
sub $64503, %rdx
lea addresses_WC_ht+0x19237, %rbp
nop
nop
nop
nop
and $58694, %rsi
mov (%rbp), %ecx
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_normal_ht+0x7637, %r9
nop
nop
add %r8, %r8
movb (%r9), %r15b
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_A_ht+0x14edb, %rsi
lea addresses_WT_ht+0x5837, %rdi
nop
nop
nop
xor %r9, %r9
mov $76, %rcx
rep movsq
nop
nop
xor %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rbx
push %rdi
push %rdx

// Load
mov $0x485d5c0000000437, %r9
nop
nop
nop
sub $55792, %r13
mov (%r9), %rbx
nop
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_D+0x8437, %r9
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%r9)
nop
nop
nop
nop
xor $58723, %r12

// Faulty Load
mov $0x485d5c0000000437, %r12
nop
nop
add $28197, %r13
mov (%r12), %r11
lea oracles, %r13
and $0xff, %r11
shlq $12, %r11
mov (%r13,%r11,1), %r11
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'b8': 131, '26': 125, '66': 131, '64': 116, '08': 100, 'ae': 153, '2a': 121, '9e': 134, 'b2': 144, '58': 5183, 'f6': 156, '84': 113, '68': 132, 'a6': 117, '98': 128, 'd2': 117, 'c2': 134, 'a2': 120, 'b0': 125, 'a4': 141, '44': 124, '56': 125, '9c': 132, 'ca': 140, '4e': 138, '6c': 141, '48': 138, 'e8': 145, 'c8': 128, 'ba': 127, 'f8': 157, '92': 139, 'e4': 145, 'de': 121, '12': 122, '8a': 131, 'cc': 139, 'fe': 128, '94': 134, '60': 127, '1c': 120, 'e0': 122, '4a': 120, '06': 108, '5a': 106, 'c6': 165, 'a0': 130, 'ec': 136, '28': 150, '70': 126, 'aa': 125, '24': 111, '2c': 119, '50': 128, '34': 122, '1e': 107, 'b6': 123, '18': 130, '0e': 113, '52': 116, '3a': 129, '82': 133, 'c4': 146, '40': 123, '80': 121, '78': 120, '96': 123, '30': 126, '2e': 120, '86': 143, '14': 137, '3e': 135, 'f4': 148, 'be': 136, '76': 136, 'fa': 156, '62': 113, '42': 121, '02': 111, '38': 151, 'b4': 118, 'dc': 123, '20': 130, '46': 128, 'e6': 139, '72': 122, 'd0': 123, 'ee': 132, 'ea': 131, '6e': 160, '04': 134, 'bc': 137, 'd8': 137, '7c': 128, 'fc': 142, '54': 100, '32': 131, '0c': 137, '3c': 135, 'e2': 131, '16': 99, '0a': 119, '6a': 136, '10': 129, 'a8': 116, '9a': 147, 'd6': 149, 'f2': 153, '8e': 137, '7a': 119, '74': 131, 'ac': 129, 'c0': 145, 'da': 132, '7e': 138, 'ce': 134, '88': 123, '8c': 105, '4c': 101, 'd4': 143, '36': 133, '90': 133, '22': 119, '00': 276, '1a': 139, '5c': 125, '5e': 144, 'f0': 150}
f4 58 90 cc 58 92 58 5c be c8 3e 58 ea 58 f8 58 2a 58 ce 58 58 58 ba 58 32 4c 58 ce 58 c0 58 58 4e 58 1c 58 58 d6 58 44 0e 58 20 58 58 58 98 58 58 58 58 58 ec 0e b6 50 58 82 14 02 40 2e 3e f0 dc 58 f8 58 58 56 8c 58 aa 7c 58 b4 e2 58 3e 12 82 58 3a 06 6a 7e 68 0a 82 7e 58 96 a8 0a 3c 2c 0e d8 58 b0 58 12 cc 58 a2 c0 be 58 ac 4e 58 1a 18 5e f4 58 58 9a 1a 58 e0 58 58 04 b0 42 5c 50 6a 9a 9c fe 58 e0 20 9a 58 e4 e0 00 ca 58 3c 28 d0 e4 70 90 3e 60 c6 22 2a fa ac f6 58 98 02 f4 aa 70 58 be 34 58 f2 2e aa 58 94 54 b6 1c 58 1a 1e 12 18 68 5a 00 58 b6 58 28 c4 58 54 c8 5a ca fa 58 aa ec 1a 74 58 6c 0e 3e 58 bc 26 12 58 5e 78 00 6e 58 9a 58 8e 58 a2 58 92 7e 44 e8 58 42 58 ae a2 32 c2 58 d8 58 4e 58 7c 1c 4c 3e 7a 58 e4 58 5a 22 0e 58 d0 58 ea 58 f0 58 ba 9e 58 1a b2 ca 58 48 58 58 c6 58 ee 58 9e 58 64 fc 58 58 3c 58 6e 7a 00 84 3a 7e 58 58 58 ae 9c 58 58 84 58 66 e6 58 58 58 e0 58 58 40 58 58 60 58 ea 58 bc 58 be 6a 58 ac 58 58 58 26 58 68 fe 58 30 14 26 58 54 58 52 88 58 58 58 58 6a 58 58 30 86 58 d8 58 9c 58 58 14 58 58 58 12 b2 34 26 e0 58 d2 58 bc 28 92 36 58 c6 58 0e 28 7c 58 58 50 de 8a cc 62 f2 58 74 92 d2 24 58 be 58 d4 a8 ae be f2 aa da 12 58 aa 0a 3c 58 18 58 32 32 1e 60 58 18 58 58 b4 3c 46 7c 04 50 98 58 06 58 fa 00 58 9a 58 58 d4 58 2a 58 58 58 24 58 c2 58 58 58 58 5c 64 58 d4 58 5a 58 ec 58 e8 58 e8 58 6c ca 58 4e 58 32 0c 6e 2e 58 4e 32 a8 58 e6 2e fa 68 58 0e f0 58 58 58 58 66 58 58 58 24 58 f8 58 0a 58 00 08 5c cc 58 7c 58 58 58 9a 58 58 fe e2 58 a4 f6 58 58 06 58 58 58 ae 08 58 58 76 58 58 58 6e 58 6c 8a 62 72 58 b2 12 58 58 7e cc 58 a4 58 58 6c 94 58 92 2e 58 58 1e d4 90 44 58 42 c8 70 00 58 58 58 86 94 58 58 8a c4 f4 f2 92 0a 92 58 dc 8c d4 38 1c b4 2a 9c fe 3a 2e 7a 58 22 1a d0 d0 00 b8 82 3c 72 b8 40 58 20 c8 44 94 f4 d6 14 72 3a 58 aa f0 58 82 78 92 58 8c 40 58 cc 98 86 58 86 d0 c4 58 5a 58 86 4c 94 58 c6 c2 b6 72 10 58 50 f2 58 58 58 58 58 54 76 58 6a 8a 62 ce 58 e6 58 56 f0 58 ea 58 58 5c 56 92 f6 58 58 de 58 58 40 48 58 58 f2 58 58 64 26 c0 40 fe 58 18 58 58 00 00 66 d0 ce 58 14 80 74 c2 58 38 28 ba cc 6c 58 60 58 c2 20 48 58 08 00 fe fe 34 aa 9e 58 c0 82 6a 2e 38 84 c4 0e ca f4 5a 02 ca fc c6 58 26 42 58 4a ee 90 3a 58 ca 68 ce 22 32 f8 58 58 58 58 58 ac 26 58 66 58 58 58 58 58 04 20 a0 58 76 58 58 14 0c d2 58 58 e2 52 64 2a 1a b8 58 a4 62 a2 1e 10 58 c4 58 ba 58 8c f2 58 fa 58 88 58 26 9c 58 58 58 06 58 aa a6 58 fa 58 00 2e 84 58 b4 d6 58 ec 84 1c d8 b6 78 58 88 fa d0 48 48 1a 38 08 74 50 5a da 56 62 58 24 be b6 b0 e2 c8 5e 64 58 86 20 94 58 1e 6a a2 8e 58 c4 b8 34 b0 ee 58 a6 58 ba 24 58 04 6e 74 16 5e 58 2a 58 26 58 14 74 28 18 22 58 50 06 e2 58 88 06 6c 06 72 bc da 58 42 a8 b4 bc e2 58 f2 58 1a 58 ea 58 58 9e 14 70 58 b8 3e 46 88 3a f6 58 f6 58 d6 58 e0 58 00 0a 9a 70 50 0a fa 58 46 5a de 58 9e b4 58 cc 58 32 c6 58 32 58 ca 58 da 58 58 da 58 f2 58 58 d6 58 44 04 10 b2 9e 94 58 7a 1c bc e0 58 3e c8 58 58 dc 58 52 b2 18 d4 58 04 58 a2 70 58 26 28 f0 58 58 ce ce 58 e0 98 58 58 fe 08 1c 58 a4 ea 58 78 ae a0 90 4e cc be 58 6e
*/
