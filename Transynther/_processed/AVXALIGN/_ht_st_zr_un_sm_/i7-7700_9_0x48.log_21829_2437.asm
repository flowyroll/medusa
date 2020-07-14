.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1600b, %rsi
lea addresses_A_ht+0x888b, %rdi
clflush (%rsi)
nop
add $17927, %rbp
mov $74, %rcx
rep movsl
dec %rbx
lea addresses_D_ht+0x164cb, %r8
nop
and %r10, %r10
movb $0x61, (%r8)
nop
nop
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x16403, %rbx
nop
nop
nop
nop
add $54872, %rbp
mov (%rbx), %r8w
nop
nop
nop
nop
xor %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rsi

// Store
mov $0x26aa5400000007ad, %rbx
nop
inc %r8
movb $0x51, (%rbx)
nop
nop
sub $40598, %r15

// Load
mov $0x7cf, %r15
clflush (%r15)
nop
nop
nop
nop
cmp $3844, %rbx
mov (%r15), %rbp
nop
nop
nop
nop
xor $57990, %r8

// Store
mov $0x2cb, %r15
dec %rbx
mov $0x5152535455565758, %rbp
movq %rbp, (%r15)
nop
nop
nop
cmp %r15, %r15

// Store
mov $0x4683c800000000cb, %rbx
nop
nop
add $25649, %rsi
mov $0x5152535455565758, %r8
movq %r8, (%rbx)
nop
and $21220, %rbx

// Faulty Load
mov $0x2cb, %rsi
clflush (%rsi)
nop
and $64933, %rbp
vmovntdqa (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'ae': 451, '3c': 10, '63': 2, '24': 69, '03': 3762, '8c': 35, '94': 1, '44': 164, 'd8': 1, 'bc': 4, 'ac': 4, 'a0': 1, 'dc': 21, '40': 153, '70': 3, '74': 3, 'fa': 2, '08': 2, '06': 203, '30': 80, '51': 3630, 'ad': 170, 'ec': 1, 'a8': 9, '54': 1, '90': 13, 'e4': 16, 'e8': 22, '84': 2, 'd0': 737, '04': 2, '98': 7, 'e0': 15, '4c': 74, '64': 26, 'f0': 44, 'fc': 2, 'af': 778, '80': 75, 'b0': 48, '68': 9, '78': 7, 'd4': 231, '3b': 6982, '00': 1009, '38': 4, 'cc': 2, '18': 439, 'a4': 22, '9c': 81, 'c8': 60, 'b4': 30, 'b8': 58, '48': 180, 'c0': 111, '72': 1783, '88': 1, 'c4': 27, '34': 123, '1c': 1, '28': 2, '50': 24}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ad 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 3b 00 80 3b 00 80 3b 00 80 00 80 00 80 00 80 00 3b 00 80 00 00 80 00 80 00 80 00 80 00 80 00 80 00 3b 00 80 3b 00 3b 00 80 00 3b 00 80 00 80 00 3b 00 3b 00 80 00 80 00 80 00 80 00 80 00 3b 3b 00 80 3b 00 8c 00 8c 00 8c 00 8c 00 8c 00 8c 00 8c 3b 00 3b 3b 00 3b 00 8c 3b 00 8c 00 3b 00 8c 00 8c 00 3b 00 8c 00 3b 3b 3b 00 8c 3b 00 8c 00 3b 00 8c 00 8c 00 8c 3b 00 8c 00 8c 00 8c 3b 03 3b 03 06 06 3b 03 06 06 00 3b 03 06 3b 03 06 06 06 06 06 06 3b 03 00 3b 03 06 06 06 06 06 3b 03 06 06 06 06 06 06 00 8c 3b 03 06 06 3b 03 3b 03 3b 03 06 3b 3b 03 3b 03 3b 3b 3b 03 3b 03 06 3b 03 06 06 06 3b 3b 03 06 3b 03 06 06 06 06 06 06 06 06 3b 03 06 06 06 06 06 06 06 06 3b 03 3b 03 06 3b 03 06 06 06 06 06 3b 03 06 3b 03 06 06 06 3b 51 03 06 06 06 06 06 06 00 8c 03 06 3b 03 06 06 3b 3b 3b 03 3b 3b 03 06 3b 03 06 3b 03 3b 3b 3b 3b 03 06 06 06 06 06 06 3b 03 06 06 06 06 06 06 3b 03 3b 3b 03 3b 03 ad bc 03 06 06 06 06 06 3b 3b 03 06 06 06 06 3b 03 06 06 06 06 06 06 06 3b 03 06 06 06 06 06 06 06 06 06 06 06 3b 03 06 06 06 06 06 06 06 06 06 06 06 3b 03 06 3b 03 3b 3b 3b 03 06 06 06 06 06 06 06 3b 03 c8 bc 03 06 c8 c8 03 00 c8 03 06 06 06 06 06 06 06 06 06 06 06 06 c8 c8 03 06 06 06 06 06 c8 00 8c c8 03 06 06 06 06 06 c8 03 06 c8 03 06 06 06 06 06 c8 03 06 06 c8 03 06 06 06 06 06 06 06 c8 03 06 06 06 d4 bc 03 06 06 06 06 06 d4 03 d4 03 06 06 d4 03 06 06 06 06 d4 03 06 06 06 06 06 06 06 d4 03 06 06 06 06 d4 03 06 d4 03 06 06 d4 03 06 d4 03 06 06 06 06 06 06 06 06 06 d4 03 06 d4 d4 03 06 d4 bc 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b d4 03 3b 03 3b 00 8c d4 d4 03 00 8c d4 d4 03 d4 d4 03 3b 03 3b d4 03 3b 03 3b 03 d4 03 3b 03 3b 03 d4 d4 03 3b d4 d4 d4 03 3b 03 3b 03 3b 72 03 3b 00 03 3b 03 3b 03 72 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 00 03 72 03 72 03 72 03 3b 03 3b 03 3b 03 72 03 3b 72 00 03 3b 03 3b 03 3b 03 72 72 72 03 72 03 3b 72 03 3b 03 72 ad 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 72 03 3b 72 72 03 3b 03 72 03 3b 03 3b 03 72 03 3b 72 72 03 72 72 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 72 03 3b 03 3b 03 3b 72 03 72 72 72 72 00 03 72 03 72 03 72 72 03 72 03 72 03 72 03 72 03 72 03 72 03 72 72 03 72 03 72 03 72 03 72 72 03 72 03 72 03 72 03 72 03 72 03 72 03 72 03 72 72 72 03 72 72 03 72 72 03 72 03 72 72 03 72 72 ad 72 03 72 03 72 72 03 72 03 72 03 72 03 72 72 03 72 03 72 03 72 03 72 03 72 03 72 03 72 03 72 03 72 03 72 03 72 03 00 03 72 00 03 72 03 72 03 72 03 72 03 72 03 72 72 72 03 72 72 03 72 72 72 03 72 72 03 72 03 72 72 72 03 72 03 72 03 72 03 72 72 03 72 03 72 03 72 03 72 72 72 03 72 03 72 03 72 03 72 72 03 72 03 72 03 72 72 03 72 03 72 72 03 72 03 72 03 72 03 72 03 72 72 03 72 03 72 03 72 03 72 3b 03 72 72 03 72 03 72 03 72 03 72 72 03 72 03 72 03 72
*/
