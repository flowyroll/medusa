.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1596b, %rdi
nop
nop
and $31735, %r12
mov (%rdi), %ecx
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_normal_ht+0xe437, %r15
nop
nop
add $4564, %rcx
vmovups (%r15), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r9
nop
nop
nop
cmp $940, %rcx
lea addresses_WT_ht+0x9b2b, %rsi
lea addresses_WT_ht+0x1727, %rdi
clflush (%rdi)
nop
and $10359, %r12
mov $7, %rcx
rep movsq
dec %rdi
lea addresses_WC_ht+0xa16b, %r15
nop
nop
nop
cmp $31064, %rbx
movb (%r15), %r12b
xor %rcx, %rcx
lea addresses_WT_ht+0x41eb, %rsi
lea addresses_UC_ht+0xa16b, %rdi
clflush (%rsi)
nop
nop
nop
nop
add $41575, %rax
mov $25, %rcx
rep movsb
nop
nop
nop
xor %rbx, %rbx
lea addresses_normal_ht+0xf66b, %rax
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm2
movups %xmm2, (%rax)
xor %rsi, %rsi
lea addresses_D_ht+0xe76b, %rsi
nop
add %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
inc %rbx
lea addresses_D_ht+0x7c53, %r15
clflush (%r15)
nop
nop
nop
cmp $53722, %rdi
and $0xffffffffffffffc0, %r15
vmovntdqa (%r15), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rsi
nop
xor %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rsi

// Store
lea addresses_PSE+0x12bc7, %rsi
nop
nop
nop
nop
cmp $42145, %r15
movb $0x51, (%rsi)
nop
and %r15, %r15

// Store
mov $0x176065000000056b, %r9
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r8
movq %r8, (%r9)
nop
nop
sub $40339, %r12

// Faulty Load
mov $0x6050b9000000056b, %r8
nop
nop
nop
sub $18868, %rsi
vmovntdqa (%r8), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r12
lea oracles, %rcx
and $0xff, %r12
shlq $12, %r12
mov (%rcx,%r12,1), %r12
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': True}}
{'ae': 2, 'b3': 1, '5b': 611, '37': 1, 'cf': 376, '82': 99, '70': 420, '74': 1, 'd1': 1, '8f': 1, '8b': 1, '06': 11, '31': 140, '11': 3, 'a8': 55, 'e4': 2, 'ce': 805, 'eb': 56, '04': 6, 'a9': 2, '09': 4, '8c': 1, '97': 134, '4f': 2, 'b7': 1, '23': 1, '93': 25, '15': 57, '6f': 1, '52': 6, '50': 24, '00': 1421, 'd2': 11, 'c9': 1, 'b8': 6, 'a1': 197, '5e': 1558, 'cc': 53, 'ff': 1111, '14': 1, '77': 2, '49': 2, 'c4': 3, '79': 263, '03': 908, '7a': 2, 'c5': 1, 'b9': 1, '35': 2, '72': 3544, '36': 1, '3e': 323, 'a6': 5, '7c': 53, '67': 1, '51': 2, 'ad': 1, '54': 101, '5d': 1132, '21': 1, '58': 6, 'f3': 1, 'bd': 56, '98': 3, 'e6': 47, '07': 4, '48': 1, '71': 57, 'fd': 47, 'b6': 1, 'a2': 160, 'b0': 3, 'f8': 8, 'e3': 2, '3b': 616, '1d': 334, '44': 171, 'c1': 1, '9d': 1, '91': 1, 'df': 1, '7e': 144, '19': 256, '01': 123, 'd4': 60, '90': 1, '46': 5879, '81': 279, '39': 1, 'fe': 1, '61': 7}
00 00 00 00 46 00 46 00 00 46 00 00 46 00 00 00 00 00 46 46 46 00 00 00 00 00 46 46 00 46 46 00 00 46 00 00 00 00 00 00 00 46 00 46 46 46 00 00 00 46 00 46 00 46 46 00 00 00 00 46 00 00 46 00 00 00 00 00 00 46 06 03 06 06 06 06 46 00 00 00 00 46 46 46 00 00 00 00 46 00 00 00 46 00 00 46 00 00 00 46 00 46 00 00 00 03 06 06 06 06 06 46 00 00 00 00 46 00 46 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 72 03 06 46 46 46 00 00 46 00 00 00 00 00 46 00 46 00 00 46 00 00 00 00 46 03 46 00 00 00 00 00 46 46 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 46 46 46 00 00 00 00 00 46 46 00 46 46 46 46 46 00 00 46 46 46 00 ff 00 ff 46 00 ff 00 ff 00 ff 46 00 ff 00 ff 00 46 46 00 ff 93 00 ff 46 46 00 ff 46 00 ff 46 00 ff 93 00 ff 93 00 ff 93 00 ff 46 00 ff 93 44 46 00 ff 93 00 ff 46 00 ff 93 46 00 ff 00 46 93 3b 00 46 00 ff 46 46 00 00 ff 00 44 00 46 00 ff 93 46 46 46 00 46 00 ff 93 00 ff 00 46 00 46 00 ff 00 46 46 00 ff 46 00 46 00 ff 93 00 ff 46 46 00 46 00 ff 00 ff 46 00 ff 00 ff 46 46 00 ff 00 ff 46 46 46 00 46 44 3b 00 ff 46 00 46 00 ff 93 00 46 00 ff 93 00 46 00 ff 46 00 ff 93 46 00 ff 93 00 ff 00 ff 00 ff 46 00 ff 93 00 ff 00 46 46 00 ff 00 ff 93 46 46 00 ff 93 00 ff 93 46 00 ff 93 00 ff 46 46 46 00 44 00 b9 46 00 ff 00 ff 46 46 00 ff 93 00 ff 46 46 46 00 ff 93 00 00 46 46 00 ff 46 46 00 ff 46 00 46 46 00 ff 93 00 ff 46 00 ff 93 00 ff 46 46 00 46 00 ff 00 ff 46 00 ff 93 46 00 46 46 46 00 ff 46 00 ff 46 72 46 3b 3b 46 3b 3b 3b 46 3b 46 3b 3b 46 3b 3b 46 3b 3b 46 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 00 00 46 3b 46 3b 46 3b 46 3b 3b 3b 3b 3b 46 3b 3b 3b 3b 3b 3b 3b 3b 46 3b 46 3b 3b 3b 46 3b 03 46 46 3b 46 46 46 46 3b 3b 3b 3b 3b 03 72 46 46 3b 46 3b 3b 3b 46 3b 46 3b 3b 46 46 3b 46 3b 3b 3b 3b 46 46 3b 46 46 3b 46 3b 3b 3b 46 3b 3b 3b 46 3b 3b 3b 46 46 3b 3b 3b 46 3b 00 46 3b 3b 3b 3b 3b 46 46 3b 00 00 00 00 00 00 44 46 3b 3b 00 46 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 46 46 3b 46 3b 3b 3b 3b 3b 3b 46 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 46 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 46 3b 46 46 3b 3b 3b 46 3b 3b 46 3b 3b 46 3b 3b 46 3b 3b 3b 3b 3b 46 3b 46 3b 46 df 03 46 46 03 72 03 72 03 46 03 72 03 72 03 46 03 46 03 46 03 72 03 72 03 72 03 46 03 46 03 46 03 72 03 72 03 72 03 72 03 46 03 72 03 46 46 03 72 03 46 03 46 03 72 03 72 03 46 03 72 46 03 72 46 03 72 46 03 46 46 03 72 03 46 46 03 46 3b 03 72 03 46 03 72 46 46 46 46 46 46 46 46 03 46 03 72 03 72 03 72 46 03 46 03 46 46 03 46 3b 03 72 03 72 03 72 46 03 72 03 46 46 03 46 03 46 03 72 03 72 03 72 46 03 72 46 03 46 03 72 03 46 03 72 03 72 03 72 03 72 03 72 03 3b 72 46 03 72 46 46 03 72 03 72 03 46 03 72 03 72 03 46 03 72 46 46 03 72 03 46 46 03 72 03 46 03 46 03 72 03 72 03 72 03 46 03 72 46 03 72 00 98 03 72 03 46 03 72 03 72 46 03 46 03 72 03 00 98 03 00 46 03 72 03 46 03 72 46 03 72 03 5d 3b 03 46 03 46 03 46 03 46 03 72 03 72 03 72 46 03 72 03 72 46 46 03 72 03 72 46 03 72 03 72 03 72 03 72 03 72 03 72 46 03 46 03
*/
