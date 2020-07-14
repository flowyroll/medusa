.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1930b, %rdi
nop
nop
nop
nop
nop
inc %rdx
mov (%rdi), %r8w
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_WC_ht+0x19ccb, %rcx
inc %rsi
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r13
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x5dee, %rsi
lea addresses_WT_ht+0x19acb, %rdi
nop
nop
nop
inc %r12
mov $19, %rcx
rep movsw
nop
cmp $662, %rsi
lea addresses_UC_ht+0x2b1b, %rcx
nop
nop
cmp $64397, %rbx
movb (%rcx), %r8b
nop
add $28776, %r8
lea addresses_UC_ht+0x370d, %r8
clflush (%r8)
nop
dec %rcx
movb $0x61, (%r8)
nop
nop
add $19172, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rbp
push %rdi
push %rdx

// Store
lea addresses_RW+0xdccb, %r15
nop
nop
nop
cmp $17529, %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
nop
nop
sub $60281, %r15

// Load
mov $0x16900c0000000acb, %rbp
clflush (%rbp)
nop
dec %rdi
mov (%rbp), %r13d
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_normal+0x11acb, %rdx
nop
nop
nop
nop
add $52702, %rbp
movw $0x5152, (%rdx)
nop
nop
sub %r14, %r14

// Store
lea addresses_WT+0xe245, %r11
nop
nop
nop
nop
add %r13, %r13
movl $0x51525354, (%r11)
nop
add $17005, %r11

// Faulty Load
mov $0x16900c0000000acb, %r13
nop
nop
nop
nop
sub %rdi, %rdi
movups (%r13), %xmm7
vpextrq $1, %xmm7, %rdx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'2a': 1, '82': 106, '4e': 121, 'b3': 1, '92': 2, 'c5': 5894, 'b7': 1, '37': 20, 'ff': 3938, '2d': 1, 'a0': 1414, '40': 2702, 'bb': 8, '74': 241, '25': 1, '53': 2, '08': 1, 'a6': 1, '12': 7, '9f': 1, '31': 1, '16': 1, '73': 1, 'a8': 1, '7d': 3, '71': 1, 'e8': 4, '45': 61, '1e': 1, '43': 1, '33': 1, '4c': 116, '5d': 1, 'ca': 6, '88': 1, '5e': 579, '93': 1, '1a': 1, '0b': 1, '3f': 1, '52': 28, '0a': 1, 'e3': 1, '00': 5498, 'b1': 6, 'cf': 8, 'd6': 1, 'c2': 1, 'a4': 1, 'a1': 828, '8a': 2, '01': 16, '1f': 15, '48': 3, 'c0': 1, '46': 3, '41': 34, '9a': 10, '0d': 91, '78': 1, '0e': 22, '10': 1, 'aa': 11}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 aa 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 aa 00 00 00 00 00 00 00 00 00 00 aa 00 00 aa 00 00 00 00 00 00 00 00 aa 00 aa 00 00 00 00 00 00 00 aa 00 00 00 00 00 00 00 00 00 00 aa 00 00 aa c5 ff ff ff ff ff ff ff ff ff aa ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff aa ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff a8 ff ff ff ff ff ff ff ff ff 4e ff ff ff ff 4e 4e ff ff ff ff ff ff ff ff ff ff 4e ff 4e ff ff ff ff ff ff ff ff ff ff 4e ff ff 4e ff 4e ff ff ff ff ff ff ff ff ff ff 4e 4e ff ff ff ff ff ff ff ff ff ff 4e ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 4e ff ff 4e ff ff ff ff ff ff ff ff 4e ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff c5 ff ff ff ff ff ff ff c5 ff ff ff ff c5 ff ff ff ff ff 40 ff ff ff 4e ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 4e ff ff ff ff ff ff ff ff ff ff 4e ff ff ff ff ff 4e ff ff ff ff ff ff 4e ff ff ff ff ff ff ff ff ff ff ff ff ff ff 40 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 4e ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff c5 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 4e ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 4e ff ff ff ff ff ff 4e 4e ff ff 4e 00 ff 00 ff 4e 00 ff 4e 00 ff 4e 4e 00 ff 4e 00 ff 4e 4e 00 ff 4e 00 ff 4e 00 ff 4e 00 ff 4e 00 ff 4e 00 ff 4e 00 ff 4e 00 ff 4e 00 ff 4e 00 ff 4e 00 ff 4e 00 ff 4e 00 4e a1 00 ff 4e 00 ff 4e 00 ff 4e 00 ff 4e 00 ff 4e 00 ff 4e 00 ff 4e 00 ff 4e 4e 00 ff 4e 00 ff 4e 00 ff 4e 00 ff 4e 00 ff 4e 4e 4e 00 ff 4e 4e 00 4e 00 ff 4e 00 ff 4e 00 ff 4e 00 ff 4e 00 ff 4e 00 ff 4e 4e 00 ff 4e 00 ff 4e 00 ff 4e 00 ff 4e 00 ff 4e 00 ff 4e 00 ff 4e 00 4e 00 ff 4e 4e 4e 00 ff 4e 00 ff 4e 4e 4e 00 ff 4e 40 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 40 00 c5 40 40 00 c5 00 c5 00 c5 00 c5 00 c5 40 00 c5 00 c5 00 c5 00 c5 00 c5 00 40 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 40 00 c5 00 c5 00 c5 00 40 00 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 4e 00 4e 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 c5 00 4e 00 c5 00 c5 00 c5 00 c5 00
*/
