.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x10b8f, %rsi
lea addresses_UC_ht+0x738f, %rdi
xor $36220, %rdx
mov $3, %rcx
rep movsw
nop
nop
and %r8, %r8
lea addresses_D_ht+0x18b8f, %rsi
lea addresses_WT_ht+0x7cb7, %rdi
nop
nop
nop
nop
nop
and $41665, %r14
mov $0, %rcx
rep movsb
sub %r8, %r8
lea addresses_WC_ht+0x71d5, %rdi
nop
nop
nop
inc %r14
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
nop
add $15113, %r8
lea addresses_WT_ht+0xfaf, %r8
nop
nop
nop
nop
add %r14, %r14
movl $0x61626364, (%r8)
nop
cmp %r8, %r8
lea addresses_WC_ht+0x8b0f, %r8
nop
nop
nop
inc %r13
movw $0x6162, (%r8)
nop
nop
nop
and $12483, %r8
lea addresses_UC_ht+0x15003, %r8
nop
nop
dec %r13
mov (%r8), %si
nop
nop
add %r14, %r14
lea addresses_D_ht+0x4087, %rcx
nop
nop
nop
cmp %rdx, %rdx
movw $0x6162, (%rcx)
nop
add $43611, %r8
lea addresses_WC_ht+0xfd0f, %rdi
nop
nop
nop
nop
nop
inc %rsi
mov (%rdi), %r14w
nop
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x868f, %rcx
and $36436, %r13
mov (%rcx), %rdx
nop
dec %rsi
lea addresses_WT_ht+0x1cd3f, %rdi
nop
cmp %rdx, %rdx
mov (%rdi), %r14w
nop
nop
nop
nop
nop
cmp $27300, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rbp
push %rbx
push %rdi
push %rsi

// Load
lea addresses_WC+0x12d8f, %rbx
nop
nop
nop
nop
nop
and %r14, %r14
vmovntdqa (%rbx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
mov $0x6d5091000000038f, %rdi
nop
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
movntdq %xmm5, (%rdi)
nop
nop
nop
nop
nop
inc %r12

// Store
lea addresses_A+0x15f4f, %rbx
and $61364, %r8
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
movups %xmm6, (%rbx)
nop
nop
nop
nop
cmp $51251, %r14

// Store
lea addresses_normal+0xc4e9, %r8
nop
nop
nop
nop
nop
and $31124, %r14
mov $0x5152535455565758, %r12
movq %r12, (%r8)
nop
nop
cmp $43295, %rsi

// Faulty Load
mov $0x6d5091000000038f, %rsi
nop
nop
and %r14, %r14
mov (%rsi), %rdi
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'1a': 4, '54': 1, '1c': 3, '4e': 2, '46': 1, '8a': 2, 'c4': 2, '0e': 1, 'dc': 1, 'b8': 1, '5a': 3, 'e2': 2, '68': 3, 'cc': 2, '04': 3, '16': 1, '9c': 1, 'bc': 1, 'f6': 2, 'fe': 1, 'ee': 5, '5e': 2, '28': 2, 'f2': 2, '22': 4, '14': 3, 'f0': 4, 'a6': 1, '18': 2, '94': 2, '62': 1, '6e': 3, 'ea': 2, '12': 3, 'ac': 1, '2e': 2, 'de': 1, '38': 2, '34': 2, 'd2': 5, 'd6': 1, '5c': 2, 'b4': 2, '2a': 4, 'ba': 4, 'a8': 2, 'c8': 2, '48': 2, 'fa': 4, 'da': 5, '2c': 3, 'f8': 4, 'd4': 2, '9e': 3, '44': 3, 'b0': 1, '0c': 1, '9a': 2, '3c': 2, '24': 3, '98': 3, 'e4': 3, '56': 1, '4a': 4, 'f4': 4, '58': 394, '3e': 2, '20': 3, 'c2': 4, '84': 1, '26': 1, '74': 4, '50': 4, '0a': 2, '30': 1, '3a': 2, 'be': 1, '90': 2, '88': 3, '8e': 1, '7e': 2, '40': 2, '7a': 2, 'ce': 2, '52': 3, '6a': 2, 'fc': 6, 'ca': 3, 'd0': 5, 'ae': 2, '02': 3, 'e0': 3, '92': 3, 'e8': 2, '10': 2, 'c0': 2, '96': 4, 'aa': 1, '4c': 3, '72': 3, '06': 3, '78': 1, 'b6': 1, 'a4': 2, '86': 5, '70': 2, '00': 4, 'a0': 2, '64': 1}
58 78 f8 7e 58 58 28 48 58 58 58 58 58 58 58 24 58 58 58 c8 58 58 58 74 58 e0 58 5c 58 58 58 6e 58 22 da 5c 58 f4 58 b0 20 58 4e f6 58 16 58 58 06 e0 58 14 58 58 58 58 58 1a fa 58 f4 58 58 58 58 2c 58 d2 58 fa 58 58 58 58 58 58 58 58 62 1c 74 9a a4 9e 96 58 58 7e 58 58 58 b6 58 58 ea 58 58 58 58 96 58 58 58 4a 68 58 58 00 a8 58 f0 58 58 58 e4 1c 58 6a 58 ca 58 58 ee 58 58 58 5e 58 58 64 58 58 58 58 58 58 58 58 f4 12 58 58 58 52 f0 ca 04 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 92 58 38 5e 10 58 58 58 24 bc 22 58 58 58 72 f0 a6 58 54 96 58 2e 58 58 58 58 8e 58 58 58 58 52 58 1a 58 6e 58 58 58 58 58 d0 58 58 58 ee 58 58 58 58 58 f8 58 ba 58 58 58 3e 58 dc 58 58 4c 58 58 ae 58 58 34 ba 58 58 58 58 2c 2a ee 14 ce 8a c8 c0 0e 58 9c 6a 4e 58 fc 58 58 58 c4 58 0a da 02 58 72 4c 58 58 58 ba 58 58 70 c0 4a 40 58 58 58 58 58 58 58 58 b4 58 58 58 58 58 58 c2 58 58 58 58 d4 58 58 58 58 58 58 58 58 58 12 7a 04 58 4a 58 58 58 58 58 58 58 58 7a 58 58 86 58 58 e4 70 58 58 58 58 48 58 50 20 d0 fa 58 ba 58 96 58 ea 52 58 58 58 58 58 4a 94 2a 72 58 58 f4 ac ce 58 24 20 58 58 e2 c2 26 06 5a 58 58 10 58 58 f2 58 58 18 d2 58 86 e8 58 58 58 40 02 d2 58 d2 58 58 fe 58 28 58 86 58 68 58 58 f8 cc be 50 58 58 58 58 58 fc 58 58 58 58 3c e0 9e 58 3e ee 68 58 1a 58 58 fc 58 a4 58 34 b4 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6e 58 58 58 74 98 58 f6 98 9a 58 14 58 58 cc 58 58 18 58 12 5a 8a 3a 58 58 f2 88 58 22 50 58 fc c2 58 2a 22 90 88 d0 88 94 58 58 d6 92 58 58 fc da 58 58 58 58 58 58 58 58 58 58 3a 58 ae 58 58 a0 0c 58 58 5a 04 58 92 da c2 56 58 44 86 9e 84 d4 58 38 30 50 58 ee da d2 58 58 58 d0 58 58 f0 58 58 58 58 58 44 86 02 e8 58 58 58 a0 4c 58 58 58 f8 0a 44 00 58 58 58 58 58 58 46 58 58 90 58 58 58 58 58 c4 fa 58 58 58 aa 1a e2 58 58 58 58 58 58 58 58 58 58 58 ca 58 58 58 58 2e 58 58 58 58 1c 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 74 2a 58 de 58 58 fc 58 58 58 58 58 58 98 58 b8 58 58 58 58 e4 06 58 58 58 a8 d0 3c 2c
*/
