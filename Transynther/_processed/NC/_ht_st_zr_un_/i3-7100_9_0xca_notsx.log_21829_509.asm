.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1525b, %rdi
nop
nop
nop
nop
inc %rcx
movb (%rdi), %r10b
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_D_ht+0x1c1d0, %rbp
and $7812, %r12
mov (%rbp), %r15
nop
nop
add $56411, %rbp
lea addresses_UC_ht+0xe15b, %r15
nop
xor %r14, %r14
mov (%r15), %r12
nop
nop
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0xe15b, %rsi
lea addresses_WC_ht+0x1269b, %rdi
nop
nop
nop
and %r14, %r14
mov $84, %rcx
rep movsq
sub $13380, %rbp
lea addresses_D_ht+0x1e35b, %r10
nop
nop
nop
nop
nop
sub $5900, %rcx
mov (%r10), %rdi
nop
cmp %r10, %r10
lea addresses_D_ht+0xdcdb, %rsi
lea addresses_UC_ht+0x176db, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add %r12, %r12
mov $54, %rcx
rep movsq
nop
nop
nop
nop
and $3956, %r14
lea addresses_WC_ht+0x18e1b, %rbp
clflush (%rbp)
nop
nop
nop
xor %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, (%rbp)
nop
nop
nop
sub $4393, %r10
lea addresses_D_ht+0x1341b, %rbp
inc %r12
vmovups (%rbp), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r15
cmp $8146, %r10
lea addresses_WC_ht+0x16a17, %r12
xor %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%r12)
nop
nop
xor %r15, %r15
lea addresses_D_ht+0x1823b, %r14
nop
nop
nop
and %r10, %r10
mov (%r14), %esi
nop
nop
nop
add $46607, %rbp
lea addresses_UC_ht+0xf55b, %rsi
lea addresses_normal_ht+0x13215, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $45, %rcx
rep movsl
nop
nop
nop
dec %r10
lea addresses_normal_ht+0x12e45, %rbp
nop
nop
and $37461, %r12
mov $0x6162636465666768, %rsi
movq %rsi, (%rbp)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x757b, %rsi
nop
nop
nop
sub $53610, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, (%rsi)
nop
nop
nop
nop
and %r10, %r10
lea addresses_D_ht+0x1092b, %r10
nop
nop
nop
nop
nop
sub $18757, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
and $0xffffffffffffffc0, %r10
vmovntdq %ymm6, (%r10)
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rbx
push %rcx
push %rdx

// Load
lea addresses_RW+0x1665b, %rbx
nop
nop
nop
dec %rdx
movb (%rbx), %r10b
nop
nop
nop
sub %r14, %r14

// Store
mov $0x3eeae70000000d5b, %rcx
nop
cmp %r8, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%rcx)
dec %r14

// Store
lea addresses_US+0x6087, %r11
nop
nop
nop
cmp $11384, %rdx
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Faulty Load
mov $0x588f560000000d5b, %r8
nop
nop
nop
inc %r10
movb (%r8), %bl
lea oracles, %r14
and $0xff, %rbx
shlq $12, %rbx
mov (%r14,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'9a': 29, 'ec': 32, '66': 36, '16': 38, 'a2': 43, 'e6': 40, '4e': 31, '2e': 55, 'fc': 46, 'd0': 33, '30': 40, '2c': 26, '7c': 34, '3a': 31, '6e': 37, '54': 43, '24': 49, 'aa': 32, '72': 24, 'b8': 42, 'ea': 38, '82': 44, '3e': 33, 'dc': 37, '0a': 59, '62': 28, '38': 38, 'de': 33, '7a': 26, '42': 35, '34': 40, 'b6': 38, '40': 39, '20': 40, '3c': 38, '88': 41, 'ba': 39, '58': 16914, 'fe': 40, 'a6': 28, '8e': 29, '1a': 34, 'e0': 29, 'be': 43, 'c8': 53, '8a': 38, '5e': 40, '7e': 37, 'd4': 32, '60': 41, '76': 37, '1c': 35, '28': 36, '6a': 35, '52': 36, '70': 26, '5a': 37, '08': 41, 'ce': 21, '46': 42, 'b0': 39, '5c': 48, '68': 35, 'f4': 44, 'c2': 32, 'f6': 48, '90': 41, '04': 39, '96': 39, '14': 45, '92': 34, 'e4': 36, '10': 47, 'e2': 37, '6c': 34, 'd2': 34, '12': 41, '0c': 45, '26': 47, 'ae': 37, '1e': 37, 'f0': 40, '44': 52, '00': 202, 'b2': 30, '50': 41, 'd6': 31, '48': 34, '18': 36, 'c0': 36, '06': 50, '56': 40, 'ca': 37, 'a4': 25, 'fa': 34, 'c4': 36, '2a': 37, 'e8': 37, '80': 37, '9c': 37, '84': 51, 'f2': 43, '22': 33, '4a': 45, '74': 38, 'da': 41, 'bc': 31, 'b4': 36, 'd8': 44, '64': 21, '78': 37, '8c': 26, 'ac': 44, 'a8': 31, '32': 35, '9e': 30, '0e': 42, 'a0': 39, '86': 34, '02': 32, '98': 31, '4c': 32, 'cc': 34, 'f8': 34, '94': 55, '36': 32, 'ee': 33, 'c6': 43}
58 36 46 58 c8 58 58 4a 58 94 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 1e 58 58 20 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 c8 58 58 58 58 58 58 58 58 58 58 58 50 58 58 58 58 58 58 58 58 58 58 58 58 64 58 58 58 58 58 58 58 58 58 58 58 58 58 58 64 58 58 58 78 58 58 58 58 58 58 58 58 58 58 58 58 b8 58 58 58 58 58 58 58 58 58 90 58 58 58 58 f8 58 58 58 58 58 58 58 58 58 58 58 e2 58 58 30 58 58 40 58 58 58 58 58 58 58 58 da 58 58 58 58 58 58 6a 00 58 58 58 fa 58 60 b2 f8 58 c4 58 58 58 58 f8 58 58 58 58 3e 58 58 58 58 58 58 aa 30 58 f8 58 58 58 58 58 58 90 58 58 58 58 58 58 58 58 58 58 b4 fc 58 fe 62 5a 58 58 58 6a 9c 12 58 00 58 58 58 58 58 58 58 00 58 58 0a 58 58 58 58 58 58 58 58 4a 58 58 58 10 dc 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 dc 58 58 78 58 90 58 62 58 58 4e 7a 58 58 d8 58 58 e8 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 d8 58 e0 e8 58 be 58 58 0c 58 58 26 00 58 58 58 58 58 58 56 58 d8 c8 88 00 58 58 58 58 58 58 58 58 58 58 58 58 58 20 cc 58 58 58 58 58 58 58 58 58 06 58 58 58 58 58 58 58 58 58 58 58 fc 58 58 10 0a 58 98 58 e4 58 58 58 26 58 58 fc 58 58 8c 58 58 58 58 06 f6 58 22 58 c8 58 58 58 d8 58 58 30 5c 5c 58 58 c2 58 58 58 58 58 06 58 58 58 58 58 f8 58 58 58 58 58 58 58 a2 58 58 58 58 58 58 58 58 58 58 02 58 58 58 58 58 58 58 90 58 ae 58 58 58 58 24 58 58 58 58 58 20 58 58 58 58 58 58 58 58 58 f6 58 58 58 34 58 58 c8 58 58 c2 58 cc 58 58 58 58 58 58 58 58 58 ba 58 58 f4 58 c2 58 e4 5c 58 58 58 dc 58 58 58 58 58 58 0a 58 e6 58 58 56 8a 58 fa 58 58 58 58 58 58 58 18 58 58 a2 58 58 58 58 58 58 58 58 58 6c 58 58 58 58 02 bc 58 58 58 58 12 58 58 58 10 58 58 58 58 58 ac bc 58 58 58 58 58 58 58 30 58 58 58 58 58 a2 58 00 58 0c 58 f8 58 58 58 58 4e 58 58 58 58 58 58 58 58 1a 58 94 5a 58 58 58 58 58 58 58 58 58 58 58 58 58 58 44 58 58 58 58 58 58 58 70 76 f4 58 58 58 aa 90 58 58 58 58 58 58 a0 98 58 58 58 7c 58 58 58 58 58 58 58 58 58 58 58 58 58 58 22 58 00 58 58 94 58 58 58 58 58 58 58 46 58 58 d8 58 58 da 58 58 58 58 58 58 22 58 58 84 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 72 58 58 58 58 58 58 68 58 58 58 58 58 58 58 34 58 58 58 58 58 08 4c c2 58 58 58 58 96 58 58 58 30 58 58 0c 58 3e 58 14 58 00 58 58 58 c8 58 58 58 58 58 58 58 58 58 58 58 44 58 58 62 2a 58 58 58 14 a8 58 58 58 58 58 58 58 58 58 58 58 58 be 58 58 58 58 58 58 58 58 58 58 58 58 58 4a b8 58 58 58 58 58 cc 58 58 58 86 58 58 10 54 58 58 58 58 58 58 58 58 58 58 58 58 58 ac 58 58 ac 12 58 58 58 58 58 58 84 58 58 58 44 58 58 58 14 58 58 58 34 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 f2 58 58 58 58 58 58 26 58 58 58 58 58 58 94 58 58 58 58 58 58 58 58 58 58 ee 58 58 90 58 4e 58 58 58 58 58 58 58 58 58 58 58 58 ba 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 da 58 58 58 c4 58 58 58 58 58 58 58 58 58 58 c8 58 58 58 58 58 58 12 58 58 58 58 26 58 7e 58 58 58 58 26 58 58 58 d4 58 32 74 58 3a 64 58 58 58 42 58 6c 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
