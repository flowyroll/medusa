.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x16d92, %rsi
clflush (%rsi)
nop
nop
sub %r9, %r9
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm4
vpextrq $1, %xmm4, %r11
nop
nop
nop
nop
nop
cmp $39874, %r15
lea addresses_normal_ht+0x1bba2, %r13
nop
nop
nop
xor $32964, %rax
movb $0x61, (%r13)
nop
nop
nop
nop
add %r11, %r11
lea addresses_WT_ht+0xfbe2, %r15
nop
nop
nop
sub $22932, %rdi
movups (%r15), %xmm4
vpextrq $0, %xmm4, %r13
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0xf242, %r15
clflush (%r15)
sub $3315, %r11
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
sub $7977, %rsi
lea addresses_WC_ht+0xc4d2, %rsi
lea addresses_WC_ht+0x1aa42, %rdi
nop
nop
nop
nop
nop
and $25716, %r9
mov $76, %rcx
rep movsq
nop
xor $40306, %r11
lea addresses_UC_ht+0x6242, %r9
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x18cc2, %rsi
nop
nop
nop
and %r11, %r11
mov (%rsi), %r9w
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x14442, %r15
nop
nop
nop
nop
nop
cmp $29146, %rdi
movw $0x6162, (%r15)
nop
nop
nop
nop
inc %r13
lea addresses_WC_ht+0xec62, %rdi
clflush (%rdi)
and %r13, %r13
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %r15
nop
nop
nop
nop
add $3491, %r11
lea addresses_UC_ht+0x6522, %r9
nop
nop
nop
nop
add %r15, %r15
mov (%r9), %rdi
nop
and %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rax
push %rdx

// Store
mov $0x6da2640000000a42, %rdx
nop
nop
cmp %r15, %r15
movw $0x5152, (%rdx)
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_US+0x6742, %r13
clflush (%r13)
nop
nop
nop
nop
add $33072, %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm6
movups %xmm6, (%r13)
and $23257, %r11

// Store
mov $0x46d1940000000242, %r12
nop
and $54662, %r10
mov $0x5152535455565758, %r11
movq %r11, (%r12)
nop
nop
and $47994, %rax

// Load
lea addresses_US+0x63fb, %rax
clflush (%rax)
nop
cmp %r10, %r10
movb (%rax), %r13b
xor $53281, %r11

// Store
lea addresses_RW+0x1bab2, %rax
nop
add %rdx, %rdx
movb $0x51, (%rax)
add %r15, %r15

// Store
lea addresses_A+0xe242, %r11
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movaps %xmm7, (%r11)
nop
nop
nop
nop
add $3073, %r13

// Load
lea addresses_RW+0x12242, %r15
cmp $34160, %rax
movups (%r15), %xmm3
vpextrq $0, %xmm3, %r12
nop
cmp $36963, %r11

// Faulty Load
mov $0x6da2640000000a42, %r11
nop
nop
nop
sub %rax, %rax
vmovups (%r11), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r12
lea oracles, %r11
and $0xff, %r12
shlq $12, %r12
mov (%r11,%r12,1), %r12
pop %rdx
pop %rax
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'79': 1, '2d': 15, '8d': 1, 'a1': 37, 'b3': 7, '9b': 34, 'c5': 12, 'd9': 2, 'd5': 68, '37': 406, '72': 847, '36': 390, '6b': 1, 'a3': 4, 'c7': 5, 'c3': 2, 'fb': 47, '08': 707, '67': 5, 'a5': 11, '51': 1, '11': 37, 'ad': 66, '5f': 1, 'bd': 2, 'd0': 6, '27': 1, 'af': 1, '13': 12, 'eb': 7, '0f': 22, '07': 2, 'b7': 14, '23': 12, '73': 28, 'e1': 8, '43': 1, '99': 23, '61': 1, '3b': 6, '00': 17837, '05': 1, 'e9': 1, 'b5': 96, 'e5': 18, '47': 19, '6d': 1, '01': 5, '48': 254, 'ff': 680, '9f': 17, '17': 1, '39': 30, '49': 5, '7f': 7, '57': 4}
00 00 00 00 00 00 00 00 48 d0 d0 00 00 00 00 00 00 11 d0 00 48 00 48 00 00 00 11 d0 00 11 00 11 00 00 00 00 11 00 00 00 00 11 00 00 00 48 d0 d0 00 00 00 11 00 00 00 00 11 00 11 00 00 00 00 00 00 00 00 11 00 00 00 00 00 00 11 00 00 11 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 11 00 11 00 00 00 00 00 00 00 00 48 00 11 08 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 48 00 48 00 00 11 48 00 11 00 11 48 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 11 00 00 00 00 11 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 11 00 00 00 00 00 00 11 08 00 00 00 48 00 00 00 11 00 00 00 00 00 00 00 11 00 00 00 00 00 00 00 00 00 11 00 11 48 00 00 11 00 00 11 00 00 00 00 00 00 00 00 11 00 00 00 00 00 00 00 11 00 00 ff 48 00 11 00 00 00 00 00 00 11 00 48 00 00 00 00 00 11 00 00 00 00 00 00 11 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 11 00 00 00 00 00 00 11 00 48 00 00 00 00 48 00 11 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 36 00 00 00 00 00 00 00 00 00 00 00 72 00 00 00 72 00 00 00 00 00 00 00 00 00 00 00 72 36 00 36 00 00 00 36 00 72 00 00 72 00 00 00 72 08 00 00 00 72 00 00 00 36 00 36 36 08 00 00 00 72 00 00 00 00 00 00 00 72 00 00 00 72 00 00 72 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 72 00 00 00 00 00 00 00 00 00 72 00 00 72 00 00 00 00 00 00 00 ff 00 ff 00 00 72 ff 00 72 00 ff ff ff 00 00 00 00 00 00 00 72 00 00 00 00 00 72 00 72 00 00 00 00 00 00 72 08 00 00 00 00 00 72 00 00 00 00 00 00 00 00 00 00 00 00 72 00 72 08 00 00 ff ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 72 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 72 00 00 00 00 00 00 72 00 00 72 00 00 00 00 00 00 00 00 72 08 00 72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 72 00 00 72 00 72 00 00 00 00 00 00 72 00 00 72 00 72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 72 08 08 00 00 00 00 00 00 00 00 72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 72 08 00 00 00 00 00 00 00 00 72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 47 08 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 47 08 08 08 00 00 00 ff 00 00 00 00 00 00 00 00 d5 00 47 00 00 00 00 00 d5 08 00 00 d5 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 08 ff 47 00 00 00 00 00 00 d5 00 00 00 00 00 47 00 00 00 47 00 47 00 00 d5 00 00 00 d5 00 d5 08 00 00 00 00 00 47 00 00 00 00 00 d5 08 ff 00 d5 08 00 00 00 00 47 00 d5 00 00 00 00 00 00 00 00 00 47 00 00 47 00 00 00 00 00 00 00 00 d5 08 00 00 d5 08 00 00 d5 00 00 d5 00 00 00 00 00 00 00 47 00 d5 00 00 00 00 00 00 00 00 00 00 00 00 d5 08 00 00 00 00 00
*/
