.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x6321, %r13
nop
nop
nop
nop
sub $53104, %r12
movb $0x61, (%r13)
nop
sub %r12, %r12
lea addresses_UC_ht+0x7865, %r10
nop
cmp %rbp, %rbp
and $0xffffffffffffffc0, %r10
movaps (%r10), %xmm4
vpextrq $1, %xmm4, %rsi
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x17cd1, %r12
nop
and %r15, %r15
mov (%r12), %esi
nop
nop
nop
nop
nop
and $59219, %r12
lea addresses_WT_ht+0x1b99, %r10
nop
nop
nop
dec %rsi
movw $0x6162, (%r10)
nop
inc %r15
lea addresses_D_ht+0x70d9, %rsi
lea addresses_A_ht+0xfc79, %rdi
nop
nop
nop
nop
add $57241, %r15
mov $17, %rcx
rep movsl
nop
nop
nop
nop
add $41364, %rsi
lea addresses_normal_ht+0x14501, %r13
nop
nop
nop
xor $61763, %r15
movups (%r13), %xmm6
vpextrq $1, %xmm6, %rsi
lfence
lea addresses_UC_ht+0x150f9, %rsi
lea addresses_normal_ht+0x1c9a9, %rdi
nop
nop
sub $13541, %r10
mov $69, %rcx
rep movsq
cmp %r15, %r15
lea addresses_A_ht+0xf479, %r15
nop
nop
and $5424, %r12
mov (%r15), %r10d
xor %rbp, %rbp
lea addresses_A_ht+0xc079, %rdi
and $14839, %r15
mov $0x6162636465666768, %r13
movq %r13, (%rdi)
nop
add $43291, %rbp
lea addresses_A_ht+0x13479, %rdi
clflush (%rdi)
nop
nop
inc %rsi
movups (%rdi), %xmm6
vpextrq $1, %xmm6, %r12
cmp $27141, %r13
lea addresses_normal_ht+0x36d9, %rbp
nop
nop
nop
add %rsi, %rsi
mov (%rbp), %di
nop
dec %rdi
lea addresses_normal_ht+0x7a91, %rbp
nop
nop
xor $17604, %rcx
movb $0x61, (%rbp)
nop
nop
add %r10, %r10
lea addresses_D_ht+0x1d479, %r12
inc %rdi
movb (%r12), %r13b
nop
nop
nop
xor $62877, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi

// Load
lea addresses_D+0x16a79, %r13
nop
and %r14, %r14
vmovups (%r13), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbp
nop
nop
nop
nop
xor $43634, %r9

// Store
mov $0x2453610000000279, %r15
nop
nop
cmp %rcx, %rcx
movb $0x51, (%r15)
nop
xor $8416, %rcx

// Store
mov $0x479, %rbp
nop
nop
nop
nop
add %r15, %r15
movb $0x51, (%rbp)
nop
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_WT+0x2389, %rbp
xor %r15, %r15
movl $0x51525354, (%rbp)
nop
nop
and %r13, %r13

// Store
lea addresses_US+0xf479, %r14
nop
nop
nop
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%r14)
nop
sub $41342, %rdi

// Faulty Load
lea addresses_US+0xf479, %rcx
nop
nop
nop
nop
nop
sub $22149, %r13
mov (%rcx), %r15d
lea oracles, %r14
and $0xff, %r15
shlq $12, %r15
mov (%r14,%r15,1), %r15
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 8}}
{'8c': 14, '0c': 16, 'e0': 12, '72': 18, '42': 19, 'e8': 22, 'ae': 16, 'd8': 14, '6e': 15, '98': 26, '6a': 13, 'ea': 13, 'b8': 24, 'e4': 17, '51': 18, '46': 17, '1e': 10, 'a2': 12, 'c2': 29, '08': 8, 'ce': 15, '4c': 16, '64': 13, '68': 8, '88': 30, '66': 10, 'ec': 13, 'f4': 18, 'd4': 14, '4e': 18, '28': 16, '80': 19, '3a': 13, 'b2': 19, 'ca': 18, '0a': 14, 'be': 11, 'fc': 14, '9c': 15, '84': 20, '2c': 16, 'c8': 16, '60': 22, '90': 17, 'da': 18, 'ee': 13, 'c6': 18, 'aa': 12, '56': 19, '36': 21, '54': 14, '2e': 24, 'e6': 19, 'f8': 14, 'd0': 23, 'fa': 22, '18': 9, 'ac': 26, '76': 16, '8a': 17, '7c': 23, '02': 23, '92': 20, '26': 12, '3c': 15, '30': 14, '1c': 17, '06': 24, '24': 11, '44': 16, 'a6': 18, '5a': 18, '5c': 15, 'a8': 21, '62': 12, 'c4': 18, '00': 18, '04': 17, '4a': 10, 'c0': 25, '58': 19697, '74': 19, '16': 14, '52': 9, 'ba': 15, '38': 21, '32': 13, '8e': 10, '7a': 14, '82': 14, 'a0': 11, '70': 12, '7e': 19, '1a': 16, 'e2': 21, '40': 19, '78': 20, 'dc': 13, 'f2': 13, '6c': 6, '20': 19, 'd2': 15, '94': 16, '5e': 18, 'd6': 20, 'b6': 18, '48': 16, '50': 16, '34': 16, 'bc': 17, 'de': 20, 'b0': 16, '9e': 13, 'b4': 24, '86': 20, 'cc': 11, 'fe': 16, 'a4': 17, '22': 26, '3e': 25, '2a': 20, 'f0': 10, '14': 12, '9a': 24, '96': 15, '10': 18, '0e': 13, '12': 17, 'f6': 15}
58 58 ec 54 2c 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 1e 58 58 64 58 58 58 60 58 58 58 58 58 58 58 4e 58 58 58 58 58 5a bc 58 58 58 58 58 02 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5a 58 58 58 58 58 58 58 58 58 58 58 58 1c 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6e 58 58 58 58 58 58 cc 58 58 58 58 58 58 58 58 58 58 58 34 58 58 58 58 58 58 58 58 58 58 58 58 58 58 c4 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 14 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 72 58 58 58 58 58 58 58 58 58 58 58 58 74 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 e6 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 98 46 58 58 58 58 58 58 58 58 00 50 58 58 58 58 58 58 58 5c 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 d8 58 58 58 58 58 58 fc 58 58 58 1c 58 58 58 58 58 58 58 42 58 58 58 58 58 b8 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 fe 58 58 58 be 58 58 58 58 58 1a 58 58 58 58 58 06 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5a 58 58 58 58 58 ea 58 58 58 58 58 58 70 58 40 58 e0 58 d4 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 9a 58 58 58 58 58 58 58 82 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 1e 58 58 58 58 58 58 58 1c 58 58 58 58 58 58 58 d4 58 58 58 58 58 58 58 58 fa 58 58 58 58 58 cc 58 58 58 58 58 58 58 58 ae 58 58 58 58 2e 58 58 58 da 58 58 58 58 58 58 58 58 06 58 58 58 58 58 58 58 58 58 58 00 f0 58 58 fc 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 36 58 58 58 58 58 58 58 58 58 44 58 58 58 58 58 58 58 58 58 58 c6 58 58 04 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 f0 58 58 58 58 58 58 58 58 58 58 58 58 ac 1a 58 58 58 58 58 58 72 04 58 58 58 58 58 58 58 58 58 58 58 58 58 ee 58 58 58 58 58 58 58 54 58 58 58 58 58 58 fc 58 58 58 58 58 58 58 58 58 92 58 58 58 58 58 58 58 bc 58 58 58 58 58 58 58 58 58 58 8a 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 c0 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 de 58 58 58 58 58 58 58 58 58 58 58 58 d6 58 e8 58 58 58 58 f6 58 58 58 58 52 58 58 58 58 58 58 58 a2 58 58 58 5e e8 34 58 2a 58 de 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 2c 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 06 58 58 58 58 58 58 58 20 58 58 58 58 8e 58 58 58 84 58 58 58 58 58 58 58 58 58 58 58 d4 58 58 58 a8 58 58 58 58 58 58 58 58 58 58 58 58 b8 58 58 58 84 aa 58 58 58 58 58 58 58 58 58 58 f4 58 58 58 58 58 58 58 58 7e 58 58 58 58 90 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 b0 58 58 4e 58 58 58 58 58 58 60 58 58 58 2a 58 58 58 58 84 58 58 58 58 58 58 58 58 58 24 58 58 58 58 58 58 58 02 58 58 58 58 58 58 58 58 76 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 9a 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
