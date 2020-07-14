.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x144b2, %rsi
lea addresses_normal_ht+0x13a2, %rdi
xor %rbp, %rbp
mov $95, %rcx
rep movsw
and $30849, %rbp
lea addresses_WT_ht+0x6022, %rax
nop
nop
inc %rcx
movb (%rax), %r11b
nop
nop
nop
nop
xor $44302, %rbp
lea addresses_UC_ht+0x18ca2, %rsi
dec %r12
vmovups (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rax
nop
nop
and $57842, %rcx
lea addresses_D_ht+0x14062, %rsi
lea addresses_UC_ht+0xcda2, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %r15, %r15
mov $10, %rcx
rep movsq
nop
nop
xor %r15, %r15
lea addresses_D_ht+0x98a2, %rbp
sub $49009, %r11
movb $0x61, (%rbp)
nop
nop
nop
nop
nop
cmp %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rbx
push %rdx
push %rsi

// Load
lea addresses_normal+0x1c002, %r15
and %r9, %r9
mov (%r15), %rsi
nop
nop
nop
dec %rdx

// Store
mov $0x8a2, %rbx
clflush (%rbx)
nop
xor $31075, %r14
movw $0x5152, (%rbx)
nop
nop
nop
inc %rdx

// Load
lea addresses_RW+0x1bea2, %r15
nop
inc %r11
movb (%r15), %r14b
xor %r15, %r15

// Faulty Load
lea addresses_WT+0x74a2, %r9
nop
dec %rbx
movups (%r9), %xmm4
vpextrq $0, %xmm4, %r15
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'2a': 1, 'ae': 3719, 'bc': 1, '8d': 392, '19': 764, 'af': 1, 'e2': 1, '44': 451, 'd9': 2, '35': 1, '37': 1, '3c': 1, '92': 1, 'bb': 4258, 'ef': 348, 'fa': 2, '6e': 2, 'c7': 1, '67': 2, 'a5': 160, 'd3': 1, '31': 5, 'ec': 1, 'a8': 1, 'dd': 7, '21': 1, 'db': 374, '42': 1, 'eb': 1, '7a': 2, 'e0': 1, '81': 1, '4b': 1, '64': 5, 'b7': 1, '32': 1, 'fd': 1, '73': 3, 'e1': 73, '6c': 13, '47': 3311, '1a': 1, '3f': 4, 'f2': 556, '78': 1, 'aa': 5, '00': 5318, 'b1': 379, 'd2': 1, '18': 1, '8c': 2, '3d': 1, 'a4': 1, 'cd': 230, '6d': 1, '06': 2, '01': 123, '48': 922, 'bf': 1, 'fe': 2, '9f': 1, 'b2': 3, '9a': 1, 'da': 116, '5c': 1, 'f1': 1, '7f': 11, '1c': 1, '1b': 228, '5a': 1}
00 6c 6d 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 47 01 00 01 47 01 47 01 47 01 47 01 6e 01 b1 01 b1 01 b1 01 b1 01 b1 01 b1 01 b1 67 01 b1 01 b1 01 b1 01 b1 01 b1 01 00 bb 01 b1 01 b1 01 b1 01 b1 01 b1 00 bb 01 b1 01 b1 01 b1 01 b1 01 b1 01 b1 01 b1 01 b1 01 b1 01 b1 01 b1 01 b1 01 b1 01 b1 01 b1 01 b1 01 b1 01 b1 01 b1 01 6e 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 00 bb 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 8d 01 bb bb 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 00 bb 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 8d 01 ae 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 00 a8 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 00 bb 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 bb 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 67 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 ae 01 aa a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 aa bf a5 a5 a5 a5 a5 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ae 01 aa a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 a5 8d 01 aa 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 37 01 aa 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19 19
*/
