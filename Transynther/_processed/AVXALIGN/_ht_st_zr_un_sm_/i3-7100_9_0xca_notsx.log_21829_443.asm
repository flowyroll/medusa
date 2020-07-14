.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1970a, %rsi
lea addresses_WC_ht+0x1870a, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
mov $14, %rcx
rep movsq
dec %r14
lea addresses_A_ht+0x1a812, %rsi
sub %r10, %r10
mov $0x6162636465666768, %r15
movq %r15, (%rsi)
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0xdb0a, %rcx
nop
sub $19127, %rdx
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
and $23596, %rcx
lea addresses_A_ht+0x30ea, %rdi
nop
nop
nop
nop
nop
add $59880, %rdx
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
nop
add %r14, %r14
lea addresses_normal_ht+0x19f0a, %rsi
lea addresses_WT_ht+0xdc02, %rdi
clflush (%rsi)
nop
add $12642, %rbp
mov $99, %rcx
rep movsw
nop
nop
dec %r15
lea addresses_WC_ht+0x7f0a, %rsi
nop
nop
sub $36639, %rdx
movups (%rsi), %xmm2
vpextrq $0, %xmm2, %r14
inc %rdi
lea addresses_UC_ht+0x1d50a, %r14
nop
nop
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %rbp
movq %rbp, (%r14)
sub $46297, %r10
lea addresses_normal_ht+0x15aea, %rsi
lea addresses_WC_ht+0xf0a, %rdi
clflush (%rsi)
nop
and %rdx, %rdx
mov $25, %rcx
rep movsb
nop
nop
xor %rdx, %rdx
lea addresses_WT_ht+0x1c30a, %r15
nop
nop
add $38580, %rdi
movb $0x61, (%r15)
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_normal_ht+0x131fa, %rsi
lea addresses_WC_ht+0x1b70a, %rdi
nop
nop
nop
dec %r15
mov $78, %rcx
rep movsq
nop
nop
cmp $65092, %r14
lea addresses_WC_ht+0xde0a, %rsi
lea addresses_WC_ht+0x70a, %rdi
nop
nop
nop
dec %rdx
mov $121, %rcx
rep movsb
add $53362, %rcx
lea addresses_normal_ht+0x2a0a, %rdx
nop
nop
nop
nop
add $47659, %rdi
movb $0x61, (%rdx)
nop
nop
add $9561, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rbp
push %rdx
push %rsi

// Store
lea addresses_A+0x470a, %r15
and %r9, %r9
movb $0x51, (%r15)
sub %rsi, %rsi

// Store
mov $0xe0a, %r11
nop
nop
nop
nop
nop
cmp %rbp, %rbp
movb $0x51, (%r11)
nop
nop
add %r11, %r11

// Store
lea addresses_WT+0xcaca, %rsi
nop
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
xor %r14, %r14

// Faulty Load
lea addresses_A+0x470a, %rdx
nop
nop
add %r15, %r15
movntdqa (%rdx), %xmm4
vpextrq $0, %xmm4, %r14
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rsi
pop %rdx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': True}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'02': 1, '9a': 1, '66': 1, '2e': 1, 'fc': 2, 'd0': 1, '30': 1, '7c': 3, '3a': 3, '6e': 2, '54': 1, '24': 1, 'aa': 2, '2c': 1, '3e': 1, '06': 1, 'de': 1, '7a': 1, '04': 2, '34': 1, 'b6': 1, '48': 1, '20': 1, '3c': 5, '58': 1, 'fe': 1, 'f0': 2, '1a': 1, 'e0': 1, 'be': 1, 'c8': 1, 'bc': 2, '5e': 2, '7e': 1, '60': 4, '76': 2, '52': 1, '70': 1, 'd6': 1, 'b0': 1, 'b2': 2, '32': 3, '68': 1, 'f4': 2, 'f6': 1, '90': 5, '42': 1, '96': 2, '14': 1, '92': 1, '10': 2, '5c': 1, 'd2': 1, '12': 1, '0c': 1, 'e2': 3, '44': 1, '1e': 1, '00': 500, '84': 2, '8e': 1, '40': 3, '18': 2, 'ea': 2, '0a': 4, '56': 1, 'a4': 2, 'fa': 2, '94': 4, '2a': 1, 'e8': 2, '80': 3, '9c': 2, '22': 1, 'c0': 2, 'b4': 3, 'd8': 1, '78': 2, 'ac': 1, 'a8': 1, 'a6': 1, '9e': 2, '0e': 4, 'd4': 3, '86': 1, '51': 21179, '4c': 2, 'ae': 2, 'c4': 2, '36': 1, 'ee': 1}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 d8 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 9e 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 3c 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 76 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51
*/
