.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x18d9a, %r13
clflush (%r13)
nop
nop
xor %rdx, %rdx
movl $0x61626364, (%r13)
nop
nop
and $35438, %rsi
lea addresses_A_ht+0xabb8, %rsi
nop
nop
nop
dec %r14
mov $0x6162636465666768, %r15
movq %r15, (%rsi)
nop
nop
nop
nop
and %r11, %r11
lea addresses_A_ht+0x1ae68, %r11
nop
nop
cmp $31839, %rcx
mov (%r11), %r13d
inc %rsi
lea addresses_WC_ht+0xca68, %r11
nop
mfence
and $0xffffffffffffffc0, %r11
vmovntdqa (%r11), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
cmp %r11, %r11
lea addresses_D_ht+0x18be8, %r14
clflush (%r14)
nop
nop
nop
nop
nop
xor $61544, %rcx
mov (%r14), %edx
nop
cmp $16163, %rcx
lea addresses_D_ht+0x17a8, %rsi
nop
nop
nop
sub $19650, %rdx
movb (%rsi), %r15b
nop
nop
nop
nop
and $57496, %r14
lea addresses_A_ht+0x13a0e, %r11
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm2
and $0xffffffffffffffc0, %r11
movaps %xmm2, (%r11)
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0x1e018, %r14
nop
add %rdx, %rdx
movups (%r14), %xmm4
vpextrq $0, %xmm4, %r13
nop
nop
xor $51418, %r13
lea addresses_UC_ht+0xea68, %rsi
lea addresses_UC_ht+0x51e8, %rdi
nop
nop
nop
nop
and $19870, %r11
mov $37, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $53338, %rdx
lea addresses_WT_ht+0xd23d, %r14
nop
nop
nop
nop
and $11363, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm6
movups %xmm6, (%r14)
nop
xor $29004, %rdx
lea addresses_A_ht+0x5268, %rdx
nop
nop
nop
nop
nop
dec %r15
movb (%rdx), %cl
nop
nop
cmp $47524, %rdi
lea addresses_D_ht+0x16000, %rdi
nop
nop
nop
cmp $45923, %rcx
mov (%rdi), %r15d
nop
nop
nop
nop
nop
dec %r14
lea addresses_A_ht+0x14568, %r11
nop
nop
and %r14, %r14
movb (%r11), %r15b
nop
nop
nop
nop
xor %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rax
push %rbp

// Store
lea addresses_UC+0xf568, %rax
nop
nop
nop
nop
nop
add $2673, %r13
movl $0x51525354, (%rax)
sub $4721, %rax

// Store
lea addresses_A+0x15ba8, %r9
and $25554, %r12
movl $0x51525354, (%r9)
nop
nop
add $31074, %rax

// Store
lea addresses_US+0x92d0, %r13
nop
nop
nop
nop
xor $25967, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm4
vmovups %ymm4, (%r13)
nop
nop
nop
nop
xor %r9, %r9

// Load
lea addresses_US+0x12668, %rax
nop
nop
sub $6946, %r13
mov (%rax), %ebp
nop
nop
nop
nop
and %r9, %r9

// Store
mov $0x668, %r12
nop
sub $27361, %rbp
movb $0x51, (%r12)
nop
nop
nop
nop
nop
xor %r9, %r9

// Load
lea addresses_UC+0x1c4d9, %r9
nop
add $7921, %r13
mov (%r9), %rbp
nop
nop
dec %r8

// Store
lea addresses_normal+0x11e68, %rbp
nop
nop
nop
nop
nop
add %r11, %r11
movb $0x51, (%rbp)
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_US+0x12668, %rax
inc %rbp
mov $0x5152535455565758, %r11
movq %r11, (%rax)
add %rbp, %rbp

// Faulty Load
lea addresses_US+0x12668, %r8
clflush (%r8)
nop
nop
nop
nop
nop
xor %r12, %r12
vmovups (%r8), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r11
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_P', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'a4': 2, 'ab': 1, 'b2': 1, '4e': 2, '0b': 5, '48': 24, '4d': 3, 'fc': 1, '4c': 2, '03': 7, '90': 3, '3e': 1, '1e': 3, '9c': 3, '2f': 2, 'd6': 2, 'd5': 1, '71': 1, '6c': 1, 'd2': 2, '94': 1, '65': 1, '45': 1, 'f0': 4, '0c': 19, '8c': 4, 'f1': 1, '64': 1, 'c2': 2, 'df': 2, '40': 2, 'd0': 1, '04': 1, '16': 1, 'a0': 1, 'b0': 2, '98': 1, '83': 1, '36': 1, 'a7': 1, 'e3': 1, 'f4': 2, '57': 1, 'bb': 2, 'a1': 1, '34': 3, 'c4': 1, '17': 1, '73': 2, 'da': 2, 'c0': 6, '12': 1, '4a': 2, '97': 1, '52': 1, 'b7': 2, 'd4': 2, '1d': 2, '46': 7, '1c': 1, 'e5': 2, 'fe': 2, 'e0': 4, 'a6': 3, '44': 1, '86': 1, '58': 1, '02': 1, '5e': 2, '79': 7, '00': 21498, '0e': 2, '7c': 3, 'b8': 5, '6e': 2, 'f8': 2, 'f5': 1, '14': 2, '18': 1, '3c': 3, '29': 4, 'fa': 1, '0d': 13, 'c6': 3, 'dc': 3, '72': 24, 'e8': 3, '54': 2, 'e4': 3, '9d': 1, '8d': 1, '68': 3, 'a9': 1, '9e': 2, '84': 2, '85': 1, '88': 3, '80': 1, '08': 1, 'bc': 1, '10': 1, 'ce': 1, 'f2': 2, 'af': 1, '3d': 1, '26': 1, '06': 1, 'be': 26, 'cc': 1, '24': 3, '2e': 1, '30': 1, 'a8': 3, '78': 5, 'c8': 3, '82': 2, '92': 1, '38': 2, '9a': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 a6 a6 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 3c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 d2 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 68 68 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 fe 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 da 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 5e 5e 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 be 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 a4
*/
