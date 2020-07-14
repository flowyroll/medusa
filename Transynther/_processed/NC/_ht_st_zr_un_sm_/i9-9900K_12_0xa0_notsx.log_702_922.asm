.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1d5b8, %r10
clflush (%r10)
nop
nop
nop
nop
dec %rbp
movw $0x6162, (%r10)
nop
nop
nop
inc %r14
lea addresses_D_ht+0x15b68, %rsi
lea addresses_UC_ht+0x5eb8, %rdi
nop
nop
and $64075, %rbx
mov $18, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x11cc8, %rdi
nop
nop
nop
xor $21928, %rbx
mov (%rdi), %r12d
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x163fa, %r12
nop
nop
nop
sub $61621, %r10
vmovups (%r12), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbx
add $64122, %rdi
lea addresses_D_ht+0x1c248, %r12
nop
nop
sub %r14, %r14
vmovups (%r12), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
add $3539, %r12
lea addresses_WT_ht+0x18848, %r14
nop
nop
nop
add $53009, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r14)
nop
and $27991, %r14
lea addresses_normal_ht+0x1d7fc, %rsi
nop
nop
sub $38112, %r12
mov (%rsi), %bp
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0x4738, %rbp
clflush (%rbp)
nop
nop
and $51796, %rsi
vmovups (%rbp), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
nop
nop
sub $61532, %rbp
lea addresses_WC_ht+0x17c26, %r14
nop
sub %rbp, %rbp
mov $0x6162636465666768, %r12
movq %r12, %xmm0
and $0xffffffffffffffc0, %r14
movaps %xmm0, (%r14)
nop
add $27563, %rcx
lea addresses_WT_ht+0x18fc8, %rsi
lea addresses_D_ht+0x1c848, %rdi
clflush (%rdi)
nop
nop
nop
xor %r10, %r10
mov $106, %rcx
rep movsb
nop
nop
nop
nop
and %r14, %r14
lea addresses_A_ht+0xb724, %rsi
lea addresses_D_ht+0x1d238, %rdi
nop
nop
nop
nop
xor $5019, %r14
mov $47, %rcx
rep movsq
xor %r12, %r12
lea addresses_WC_ht+0x530f, %rsi
lea addresses_UC_ht+0x6048, %rdi
nop
cmp %rbx, %rbx
mov $74, %rcx
rep movsl
xor %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rbp
push %rbx
push %rdi
push %rdx

// Store
mov $0x6a7500000000c48, %rbx
xor %r13, %r13
movw $0x5152, (%rbx)
nop
nop
nop
inc %rbx

// Store
lea addresses_US+0x122c0, %r10
nop
nop
nop
and %rdx, %rdx
movl $0x51525354, (%r10)
nop
sub %rbx, %rbx

// Faulty Load
mov $0x6a7500000000c48, %rbx
nop
nop
nop
cmp $12067, %rdi
vmovups (%rbx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r10
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 4}}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': True}}
{'e2': 10, '1c': 2, '96': 3, 'cc': 5, '68': 4, '80': 3, 'a6': 4, 'f6': 14, 'c2': 2, 'ca': 5, '36': 3, '0a': 7, '64': 3, '3c': 2, '4e': 6, '62': 6, 'b6': 6, '50': 5, 'f4': 10, '04': 5, '30': 2, 'f8': 10, 'ce': 5, '94': 3, '08': 3, 'c4': 10, '58': 2, 'c6': 5, '82': 7, '6e': 3, 'c0': 2, '00': 53, 'c8': 11, '0e': 1, '7c': 3, 'ea': 3, '18': 1, 'ae': 3, '38': 2, 'ee': 4, '66': 1, 'fc': 11, 'da': 6, '34': 3, 'ac': 5, 'e0': 12, '40': 3, '9c': 9, '72': 6, '02': 2, 'a4': 4, 'a2': 4, 'ec': 8, '8e': 2, '98': 2, '10': 5, '42': 4, '7a': 2, 'b2': 6, '20': 2, 'be': 2, 'f0': 16, 'b0': 4, '5e': 5, 'f2': 14, '8c': 2, 'd8': 12, 'a0': 5, 'd4': 9, '52': 54, 'de': 5, '2c': 4, '16': 3, 'bc': 1, '7e': 5, '76': 1, '6a': 3, 'e8': 6, '2e': 6, '14': 4, '2a': 4, '3e': 2, 'd6': 11, 'ba': 2, '92': 5, '46': 2, '32': 3, '56': 4, '3a': 2, '4c': 4, '28': 4, '60': 2, 'dc': 9, 'b8': 1, '4a': 5, '48': 4, 'aa': 8, '90': 2, 'fe': 10, 'fa': 12, '88': 4, '6c': 1, '8a': 4, '84': 2, '78': 4, 'd2': 1, 'e6': 7, 'e4': 15, '22': 2, '70': 3, '26': 2, '44': 2, '24': 6, '5a': 2, '12': 6, '5c': 2, 'd0': 12, '1e': 6, '06': 2, '1a': 4, '0c': 6, '9a': 2, 'a8': 1, '86': 4, '74': 5, 'b4': 2, '9e': 3}
52 f6 f6 9c 0a e4 f8 b2 96 e2 52 76 d8 52 52 52 52 52 26 00 fe 0a 18 28 ec c4 4c 9c 00 8c f0 10 dc f8 10 44 5a c8 d4 f8 00 7e d8 52 f0 d2 28 3a d0 52 c4 aa e0 1e b2 00 fc f0 f4 42 ca e2 f4 d4 e0 30 f0 78 82 d0 d4 e8 e0 44 6e d6 2a 70 f0 c6 da 52 c4 f6 fc 70 e4 f6 4e 86 52 c4 9a 12 52 c8 dc 00 6a f6 cc e4 f6 bc 00 f6 fe 10 00 3a da a2 a4 0c 1a 1c f2 5e 52 f6 82 ee 70 c6 52 24 4a 5a fa 00 fa 86 c8 d0 f8 aa fc ae e2 aa ee 6a b4 ec 16 d0 f6 16 4a f2 f0 d0 a2 a0 de 00 10 f6 7a 30 06 7c be 24 d6 d6 3c 6e d4 c8 f8 72 00 ca 00 4a 82 64 52 fa 00 52 0a 4a 1e ba 2e ae 10 52 e6 d4 e4 fa b6 00 c8 d8 28 92 e8 aa 52 d8 48 de 00 2e de f2 22 d4 74 a6 c4 f8 fc 64 98 0a 62 ac 42 6c 1c d6 dc 00 14 82 f2 68 90 52 c0 42 d8 56 88 90 00 f8 00 92 ee 82 fe 68 34 fa 52 4c 9c 00 4e 92 56 52 7c c4 58 b8 78 00 d8 e4 ac 36 08 0c 24 72 24 c2 a6 40 78 0c f6 00 00 fe e6 9c 48 34 ec 2c 1a fe da e6 2e 4c 52 f4 c8 d6 00 52 d0 52 f2 20 52 f4 e2 d0 00 00 60 f8 fa dc 80 f0 86 cc 12 20 e0 d0 04 a0 b4 e4 fc c6 7e 24 c4 6e 52 b2 cc e0 40 96 1e 1e fc be 4e 9e 2a da 7e d4 f0 46 ce 00 3c 94 f0 b0 88 fe f0 f4 36 62 f2 74 e4 c8 e0 f6 c6 d6 2a 14 3e f0 12 00 02 00 00 f4 d8 e6 88 ac d8 b2 5c f6 a4 c4 62 52 e6 72 52 2c 72 ec a2 f2 80 50 2e c0 a6 e4 4e e6 72 52 b6 04 12 a0 d8 52 ba fa 9c 52 00 aa ec 52 00 52 00 88 9e b6 fe 8a e2 ae 00 00 4c 22 e8 ee 64 fc 00 f2 00 00 04 2a e0 14 14 a6 00 6a 52 b0 d6 e2 62 60 38 2e 5e dc 52 98 8a e8 ce 0c 68 00 82 2c 56 f2 8e 62 78 c6 9c 5e e8 46 1e 06 da f4 8c 00 58 e0 aa 8e 4a 00 a0 f0 d8 00 aa fe 4e e2 74 92 04 42 e4 32 ce d6 36 52 e2 fa 32 e2 c8 e4 e0 e4 fc fe 4e 68 9e 00 fa 28 ea d6 d0 b2 16 e6 52 0c e0 fa d4 a4 b6 66 34 52 f2 86 00 56 7e a8 dc c4 a4 52 e4 50 f8 1a ac e2 ac 08 48 00 00 52 52 96 c2 f4 00 f2 b6 aa d0 52 b0 a0 c8 52 f2 7c ec fa b0 74 52 0a fc 94 9a ec 0e dc 9c de 00 00 40 f6 62 e4 32 f0 00 d8 8a c8 52 ce f0 da d8 48 26 5e 52 9c 00 f8 52 d0 a2 ca de d0 2e ce 72 b6 3e 1a dc f0 0c f2 f4 fc ca 74 00 08 b2 d6 e8 52 7e d6 f2 f4 c8 fa 00 00 04 7a 12 52 e0 50 24 12 1e 02 84 52 fc 9c ca 80 2c 5c 52 94 0a ea 52 50 84 50 e0 ea ec cc e4 c4 0a 82 5e 52 dc f0 38 8a 92 cc d4 e4 52 fe
*/
