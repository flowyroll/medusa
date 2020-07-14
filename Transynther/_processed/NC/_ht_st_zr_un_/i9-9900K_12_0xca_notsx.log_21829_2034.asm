.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1c59b, %r8
nop
nop
nop
nop
and $57139, %r11
movb $0x61, (%r8)
nop
add %rbx, %rbx
lea addresses_normal_ht+0x104f, %rbp
nop
nop
nop
nop
nop
and $11400, %r15
mov (%rbp), %r8
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_normal_ht+0x188db, %rsi
lea addresses_WC_ht+0x150fb, %rdi
nop
nop
xor $37151, %r8
mov $126, %rcx
rep movsl
add %r11, %r11
lea addresses_normal_ht+0xcebb, %r8
nop
nop
sub %rcx, %rcx
mov (%r8), %bx
nop
sub $54525, %r8
lea addresses_D_ht+0x88fb, %rsi
lea addresses_UC_ht+0x150ab, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %r8, %r8
mov $46, %rcx
rep movsq
nop
dec %rbx
lea addresses_WC_ht+0x1e03b, %r8
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov (%r8), %ecx
nop
nop
nop
sub %rbx, %rbx
lea addresses_A_ht+0xbcfb, %r11
nop
nop
inc %rsi
movw $0x6162, (%r11)
nop
nop
nop
nop
nop
add $62896, %rcx
lea addresses_WT_ht+0x437b, %rdi
nop
nop
and %r8, %r8
mov (%rdi), %ecx
nop
nop
nop
dec %r15
lea addresses_A_ht+0x1d43b, %rbx
sub %r8, %r8
mov (%rbx), %bp
nop
nop
and %rbx, %rbx
lea addresses_D_ht+0x171fd, %rbp
nop
add $5096, %r11
movb $0x61, (%rbp)
nop
xor $61834, %rbp
lea addresses_normal_ht+0x896b, %r15
nop
sub %rsi, %rsi
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
xor $57328, %rsi
lea addresses_A_ht+0xfa2b, %rsi
lea addresses_WT_ht+0x1e913, %rdi
nop
nop
nop
nop
nop
xor $7385, %r11
mov $49, %rcx
rep movsq
nop
add %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x108fb, %rsi
lea addresses_D+0xa8fb, %rdi
inc %r14
mov $16, %rcx
rep movsb
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_A+0x16069, %rsi
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm0, (%rsi)
nop
nop
nop
nop
dec %rcx

// Faulty Load
mov $0x756a600000008fb, %rax
nop
nop
nop
nop
sub %r14, %r14
vmovups (%rax), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r10
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_PSE'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'26': 76, '66': 77, '64': 61, '08': 91, 'ae': 71, 'aa': 77, 'b2': 65, '58': 73, '36': 84, '84': 70, '68': 72, 'a6': 80, '98': 85, 'd2': 81, 'ba': 73, '1c': 83, 'a2': 70, 'b0': 78, 'a4': 70, '45': 233, '44': 75, 'ca': 84, '82': 89, '56': 81, '4e': 67, '6c': 80, '04': 90, '7c': 88, '40': 88, 'c8': 85, 'f4': 68, '2a': 94, '94': 68, 'f8': 76, '92': 85, '7a': 72, 'e4': 71, 'de': 89, '12': 68, '8a': 89, 'cc': 69, 'ce': 77, 'd4': 71, '8c': 91, '60': 69, 'c2': 73, 'e0': 66, '4a': 75, '06': 83, '5a': 88, 'c6': 65, 'a0': 81, 'ec': 78, '28': 61, '02': 65, 'e6': 84, '24': 52, '6e': 78, '50': 95, '34': 73, '1e': 84, 'b6': 68, '10': 74, '9e': 78, '0e': 71, '52': 61, '3a': 74, '9c': 69, 'c4': 76, 'e8': 84, '78': 81, '96': 66, '30': 83, 'f6': 74, '86': 66, '14': 87, '3e': 76, 'fe': 96, 'be': 86, '80': 93, 'fa': 70, '62': 99, 'b4': 85, '70': 83, '38': 86, '42': 91, 'dc': 64, '20': 78, '72': 68, 'd0': 81, 'ee': 83, 'ea': 67, '76': 73, '48': 105, 'bc': 80, 'd8': 76, 'b8': 60, 'fc': 86, '54': 85, '32': 81, '0c': 84, '3c': 64, 'e2': 98, '16': 91, '0a': 88, '6a': 66, '2c': 76, '00': 1155, '9a': 73, 'd6': 81, 'f2': 76, '8e': 74, '46': 3329, '33': 7305, '74': 69, 'ac': 80, 'c0': 90, 'da': 74, '7e': 62, '2e': 92, '88': 88, '18': 69, '4c': 102, '90': 79, '22': 72, 'a8': 76, '1a': 69, '5c': 78, '5e': 77, 'f0': 73}
00 33 00 33 33 33 46 e8 56 33 46 62 cc c0 33 46 46 33 46 33 ca 0a c0 33 33 46 33 33 33 50 33 90 a8 e2 00 33 66 ae 46 d4 33 46 9c 82 33 5e 33 46 b8 46 33 50 33 33 33 33 50 06 70 33 46 33 e4 45 33 5c 33 46 26 33 0a c6 33 46 46 be 33 2e 33 46 33 33 f8 33 46 33 62 33 ae 72 bc 30 26 3e 46 33 33 76 aa 33 84 33 d6 00 33 4e 3a 33 33 46 b6 30 2e 33 46 33 9e 98 16 33 00 50 ec 00 b4 52 00 33 36 fe 02 38 33 4c 33 33 5e bc 33 33 33 33 82 00 62 5c 50 2a 33 6a 00 33 f6 00 46 ea 22 33 33 42 33 6e 33 46 46 84 e6 00 c4 33 46 c0 08 46 4a 33 46 bc 46 46 d2 33 46 72 0c 33 6c b8 33 46 ee 00 33 28 46 33 45 78 33 7e 33 33 bc 33 46 33 00 46 b8 33 00 54 33 33 46 33 46 33 00 5e 46 33 33 12 0a 46 33 33 80 46 5e 46 f0 33 33 ca 58 33 33 46 33 33 33 d8 74 88 46 33 33 33 46 33 46 33 46 33 33 00 46 33 12 d0 d2 ae 46 33 46 33 45 33 d6 d8 33 33 d4 00 46 46 46 fe 4a 33 92 de 46 33 33 46 33 58 33 00 d8 33 46 33 da 33 46 50 fe 00 4e c2 33 4c fc 00 60 33 ec 33 e2 a4 33 33 33 56 46 34 46 e2 33 33 33 33 33 00 00 33 00 46 33 46 33 33 00 2a 68 33 46 00 6a 5e 46 33 54 b8 33 64 6e 52 d2 33 33 aa 33 46 68 12 33 ce 32 33 2e 5c 94 33 84 33 2c 33 9a 82 33 33 46 33 45 46 33 33 cc 00 34 33 2c 46 60 dc 00 46 9a 33 fa 33 18 46 33 46 00 46 0a 33 c2 00 90 33 3a 33 33 46 2e 33 46 7e 33 33 06 33 46 b4 33 33 46 33 33 33 46 33 33 33 92 33 33 8e ca 33 46 33 33 33 c6 e2 33 38 33 33 33 9e 1a 3e 33 46 d2 00 33 5c 33 bc 33 88 c2 33 46 ce b0 46 33 33 6a da 33 c0 33 45 33 00 46 33 a0 c2 e0 46 8e 2c 00 33 46 00 2c 46 b6 33 5c 33 18 e8 00 33 20 88 e8 72 56 00 32 33 14 48 46 a2 26 46 7e 46 33 7a 30 45 33 f6 00 33 33 5a 8c 33 16 6e 44 ba d0 4e de 33 8e 46 e0 33 c6 33 8e 46 33 00 33 46 33 c8 76 e8 b4 ba 33 33 00 98 3a 22 33 1a 33 30 33 45 0c 10 33 33 33 33 a2 46 60 1c 30 cc 4c 33 33 48 7a d8 00 c8 00 32 c8 33 cc c6 36 00 33 33 18 fa 00 46 d6 33 aa fc 98 33 f8 12 46 46 ae 33 66 46 33 4c 46 33 46 ee 00 33 00 46 e8 00 26 33 33 45 d2 8a 80 40 33 c2 8a 80 3e b6 00 ee 00 02 3c a6 33 ba cc 38 33 33 46 1e 33 46 33 33 46 33 33 82 f2 10 33 46 0c 00 46 38 78 ea 33 33 33 6c 33 68 33 d6 be 7c 45 33 33 de 96 38 18 88 33 00 72 00 32 33 8c ca ec 7c b2 33 b2 76 f2 4e 98 33 46 f8 33 7c 84 f8 bc 5e 46 64 12 33 46 b6 33 33 33 94 33 33 02 08 e0 00 33 33 46 46 16 33 42 33 33 33 64 33 33 3e 30 33 33 46 92 b8 94 33 33 70 33 33 33 fe 00 33 33 ba 00 b4 33 33 46 9c 2c f0 52 46 32 7e 33 02 46 33 46 7a 33 ae 33 b6 d6 de 33 58 48 a4 46 b4 33 46 6c 33 82 ba 2e 94 4e 33 b0 33 00 33 1e 33 ee 33 66 bc 33 d2 00 a8 33 20 34 33 be 33 46 7e 46 33 33 08 92 ac be 46 20 33 04 fa 56 f4 33 62 60 33 82 b8 d6 33 6e 48 46 33 33 33 46 33 a8 33 33 b4 ac f2 00 33 80 33 46 33 42 c6 66 33 00 33 33 00 46 33 33 46 33 f4 f8 c8 e6 70 33 33 04 50 33 00 45 f8 00 46 33 33 0c 24 b8 33 33 d0 1c 46 82 33 46 46 33 46 84 33 c0 2e 33 f8 00 33 46 33 ee 33 46 33 33 46 33 33 00 42 1e 33 ee 33 33 46 e2 00 46 ce b0 46 33 b8 60 4e 2c 33 33 88 2a 33 58 62 33 33 ec 78 33 46 33 33 02 42 ee 00 86 33 06 c4 33 46 33 33 5c 33 28 46 46 c2 36 08 33 e8 14 33 ba 33 48 46 30 f2 30 88 62 33 46 46
*/
