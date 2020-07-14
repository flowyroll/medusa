.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x188b9, %rsi
lea addresses_WC_ht+0x1232d, %rdi
nop
sub %r11, %r11
mov $68, %rcx
rep movsl
nop
xor %rbp, %rbp
lea addresses_D_ht+0x3eb9, %rdi
nop
nop
nop
nop
nop
xor %rax, %rax
movw $0x6162, (%rdi)
nop
nop
nop
dec %rbp
lea addresses_normal_ht+0x15eb9, %rcx
nop
nop
nop
nop
inc %rbx
mov $0x6162636465666768, %r11
movq %r11, (%rcx)
cmp %rsi, %rsi
lea addresses_UC_ht+0x114b9, %rdi
nop
nop
and $11362, %rbp
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
xor $56199, %rsi
lea addresses_A_ht+0x3939, %rsi
add $24688, %r11
movw $0x6162, (%rsi)
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0x7b9, %rsi
lea addresses_normal+0x1e7b9, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
mov $31, %rcx
rep movsw
nop
add $10121, %r10

// Store
lea addresses_US+0x26b9, %rcx
nop
nop
nop
and %r14, %r14
movw $0x5152, (%rcx)
dec %r14

// Load
lea addresses_UC+0x15d39, %rcx
nop
nop
nop
nop
nop
add $38468, %rsi
mov (%rcx), %r14

// Exception!!!
nop
nop
nop
mov (0), %r8
nop
nop
nop
nop
inc %r13

// Store
mov $0x3028d60000000039, %r14
clflush (%r14)
nop
nop
nop
cmp %rdi, %rdi
movb $0x51, (%r14)
nop
nop
nop
nop
dec %rcx

// Store
lea addresses_PSE+0x15b99, %r8
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movaps %xmm3, (%r8)
nop
nop
nop
nop
nop
and $56853, %r8

// Faulty Load
lea addresses_US+0x26b9, %rdi
nop
xor $55949, %rsi
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 11, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'63': 64, '8d': 86, 'a1': 141, 'b3': 1, 'af': 145, '5b': 31, 'd9': 2, 'bf': 20, '6b': 38, 'c7': 102, 'd1': 102, '1f': 382, 'a5': 8, '93': 34, 'db': 42, '45': 19, '04': 136, 'bd': 62, '13': 34, '4b': 30, '59': 146, '4f': 11, 'b7': 18, '23': 83, '73': 205, 'ab': 1, '2f': 284, '95': 1, '47': 136, '6f': 45, '0b': 19, '3f': 162, '29': 3, '9b': 128, '05': 1, 'c9': 55, '56': 1152, 'e5': 23, 'cd': 2, 'e7': 2, '49': 173, '37': 94, 'f5': 1, 'c3': 139, 'f3': 77, '77': 61, '01': 91, 'a7': 1, 'a9': 1, '57': 1895, '79': 3, 'ed': 1, '19': 161, 'c5': 30, 'e9': 2, 'd5': 199, '72': 3123, 'ff': 3817, '2d': 2, '7b': 54, 'a3': 9, 'bb': 1, '08': 3383, '00': 1687, '67': 102, '51': 1, '17': 2, '21': 20, '58': 1334, '27': 58, '55': 1, '25': 80, '43': 137, '33': 53, '0f': 2, '71': 1, 'fd': 42, 'e1': 80, '99': 42, 'c1': 108, 'e3': 97, '3b': 36, '8b': 15, '85': 1, 'd7': 75, '3d': 92, 'df': 58, '6d': 1, '91': 108, '90': 35, '81': 55, '69': 1, '1b': 23, '61': 208}
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 08 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 00 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 04 56 00 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 08 04 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 95 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 00 56 72 72 72 72 72 72 72 ff 56 72 72 56 56 72 72 72 56 72 56 72 56 56 72 56 56 56 56 72 56 56 72 56 72 72 56 72 56 56 56 72 56 56 72 72 72 56 56 56 56 72 72 56 72 56 72 72 72 72 56 72 72 56 72 56 72 72 56 56 56 56 72 72 72 72 72 56 72 72 56 56 56 56 56 72 5b 5b 56 56 56 5b 56 5b 56 5b 5b 5b 5b 56 56 56 5b 5b 5b 5b 5b 5b 56 56 56 5b 5b 56 5b 56 5b 56 5b 56 56 5b 56 56 56 56 56 56 56 56 5b 5b 5b 56 56 56 56 5b 56 5b 5b 56 56 56 56 5b 56 5b 56 56 5b 5b 56 56 56 72 72 56 72 72 56 56 56 56 56 72 72 56 56 56 56 72 56 56 56 72 56 56 72 56 72 72 56 72 72 72 72 72 72 56 56 56 56 72 56 56 72 72 72 72 72 72 56 72 72 72 72 56 56 56 56 72 56 72 56 56 56 56 56 72 72 56 72 72 56 56 72 56 72 72 72 72 56 56 56 56 72 72 72 56 72 72 56 72 56 72 56 56 56 56 72 56 72 56 56 72 56 72 72 72 56 56 72 56 56 72 72 72 72 72 72 72 72 56 72 56 56 56 72 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 ff 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 56 08 56 08 56 08 ff 08 56 56 56 08 ff 56 08 ff 08 56 08 ff 08 56 08 ff 56 56 56 56 56 56 08 56 08 ff 56 08 56 08 ff 56 08 56 08 56 56 08 56 08 ff 56 56 08 ff 56 56 56 08 ff 08 ff 56 08 56 08 ff 08 56 56 08 56 56 56 08 56 56 08 56 56 56 56 08 56 56 56 08 ff 08 56 56 56 56 08 56 56 56 56 56 56 08 ff 56 56 56 56 56 08 ff 56 56 08 ff 56 56 08 56 08 56 08 ff 56 56 08 56 56 56 56 56 08 ff 08 ff 56 08 ff 56 56 08 ff 56 08 56 08 56 56 08 56 56 00 56 56 08 56 56 08 56 08 56 56 56 56 56 56 08 56 56 08 56 08 56 56 56 08 08 56 56 56 08 56 08 56 08 56 56 08 08 1f 72 08 08 72 72 08 08 08 72 72 72 72 08 72 72 72 08 72 72 72 08 08 08 08 72 72 08 72 72 72 72 72 08 08 08 08 08 72 72 72 72 72 08 56 72 72 72 08 56 72 08 72 08 56 08 56 08 72 08 56 08 72 08 56 72 72 72 72 08 72 08 56 72 08 56 08 72 72 72 ff 3b 3b 3b 08 3b 3b 08 56 3b 3b 08 3b 3b 3b 08 56 3b 3b 3b 3b 3b 3b 08 56 08 56 08 56 08 3b 08 3b 08 3b
*/
