.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1ed77, %rsi
nop
xor %r12, %r12
mov (%rsi), %r11w
sub %r10, %r10
lea addresses_UC_ht+0xacdb, %r10
nop
nop
nop
nop
dec %r9
mov (%r10), %r8d
nop
nop
nop
sub $58207, %r8
lea addresses_A_ht+0x87b7, %r9
clflush (%r9)
nop
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %r10
movq %r10, %xmm2
and $0xffffffffffffffc0, %r9
movaps %xmm2, (%r9)
xor %r8, %r8
lea addresses_WC_ht+0x2237, %r11
nop
nop
and %rdx, %rdx
movl $0x61626364, (%r11)
nop
nop
nop
nop
dec %r10
lea addresses_A_ht+0xe837, %rsi
nop
nop
nop
nop
xor %r12, %r12
mov (%rsi), %r10d
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_WC_ht+0x8cd7, %r9
sub %rdx, %rdx
mov (%r9), %rsi
nop
nop
nop
and $24930, %r9
lea addresses_normal_ht+0x5697, %rsi
lea addresses_WT_ht+0x11c37, %rdi
nop
nop
nop
and $46851, %r12
mov $83, %rcx
rep movsl
nop
nop
cmp $41335, %rdi
lea addresses_normal_ht+0xa037, %rsi
lea addresses_WC_ht+0x15935, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
mov $72, %rcx
rep movsb
cmp $15089, %rdi
lea addresses_normal_ht+0xbe07, %rsi
lea addresses_UC_ht+0x514f, %rdi
nop
nop
nop
sub $5605, %r12
mov $56, %rcx
rep movsb
nop
sub $47633, %r9
lea addresses_A_ht+0x8787, %r8
nop
nop
inc %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r8)
nop
and %r9, %r9
lea addresses_WT_ht+0x107b7, %rsi
lea addresses_D_ht+0x1ddaf, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $5533, %r10
mov $125, %rcx
rep movsw
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_A_ht+0x177a7, %r11
nop
add %rsi, %rsi
and $0xffffffffffffffc0, %r11
movaps (%r11), %xmm6
vpextrq $1, %xmm6, %r8
nop
dec %r8
lea addresses_A_ht+0xa1a7, %rsi
lea addresses_normal_ht+0x19837, %rdi
nop
nop
nop
xor $41544, %r8
mov $2, %rcx
rep movsq
nop
xor %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rax
push %rbp
push %rdi
push %rsi

// Load
lea addresses_US+0x9e37, %r12
nop
nop
add $53410, %r13
vmovups (%r12), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
nop
add $14202, %rsi

// Load
lea addresses_WC+0x1b837, %rax
add $61003, %rdi
mov (%rax), %r13
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_normal+0x2837, %r9
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, (%r9)
nop
nop
dec %r9

// Faulty Load
lea addresses_normal+0x2837, %rbp
nop
nop
nop
cmp $47430, %rsi
vmovntdqa (%rbp), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r13
lea oracles, %r12
and $0xff, %r13
shlq $12, %r13
mov (%r12,%r13,1), %r13
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'94': 1, 'f6': 1, 'ec': 1, '90': 1, '84': 1, '96': 1, '92': 2, 'd0': 1, '8a': 4, '6c': 2, 'ce': 2, '12': 1, '0c': 1, '26': 1, '9a': 1, '44': 1, 'b6': 1, '00': 1342, '2c': 2, 'b8': 1, 'c6': 2, '18': 1, '38': 1, '06': 1, 'de': 2, 'a4': 1, '46': 1, 'd8': 1, '68': 2, '34': 2, 'a0': 2, '9c': 2, '22': 1, '40': 1, '74': 1, '20': 1, 'bc': 1, 'ba': 1, '58': 20412, 'fe': 1, 'f0': 1, '1a': 1, 'e0': 1, 'be': 1, 'c8': 1, '10': 1, 'a8': 1, '9e': 2, '8e': 1, '60': 2, '02': 1, '98': 1, '52': 1, 'cc': 1, 'f8': 2, 'c4': 1, '36': 2, 'ee': 1, 'dc': 1, 'f4': 1}
00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 36 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 90 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 d0 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 92 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 2c 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 34 58 58 58 58 58 58 58 00 58 58 58 58 58 ce 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
