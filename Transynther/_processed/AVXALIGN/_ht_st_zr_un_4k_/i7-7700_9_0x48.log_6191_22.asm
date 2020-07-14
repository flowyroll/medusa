.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xbd3b, %rsi
lea addresses_normal_ht+0x1672b, %rdi
nop
and $47137, %r15
mov $119, %rcx
rep movsq
nop
and %rax, %rax
lea addresses_WC_ht+0xf63b, %r10
clflush (%r10)
nop
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r10)
nop
nop
sub $5666, %rcx
lea addresses_normal_ht+0x1063b, %r10
nop
add $15245, %r11
movb $0x61, (%r10)
nop
nop
nop
nop
nop
cmp $56246, %rax
lea addresses_UC_ht+0x17d0c, %rcx
nop
add $28455, %r10
mov $0x6162636465666768, %r11
movq %r11, (%rcx)
nop
nop
add $21799, %rsi
lea addresses_WT_ht+0x1d9fb, %rsi
nop
add $41917, %rcx
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0xa1bb, %rax
nop
nop
nop
sub %r15, %r15
mov (%rax), %ecx
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x18a3b, %rsi
clflush (%rsi)
nop
nop
nop
nop
sub %rax, %rax
movb (%rsi), %r11b
nop
inc %rcx
lea addresses_A_ht+0xc9bb, %rdi
nop
add %rcx, %rcx
mov (%rdi), %r11w
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x700d, %rcx
dec %r10
vmovups (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
sub $1343, %rax
lea addresses_WT_ht+0xadbb, %rsi
nop
nop
nop
sub $17306, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
and $0xffffffffffffffc0, %rsi
vmovaps %ymm2, (%rsi)
nop
nop
nop
nop
xor $42988, %r15
lea addresses_WT_ht+0x11e5b, %rsi
lea addresses_WC_ht+0x1292d, %rdi
xor %r13, %r13
mov $37, %rcx
rep movsw
nop
nop
nop
nop
add %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rax
push %rbx
push %rdi
push %rsi

// Store
mov $0x5eb, %r15
nop
nop
nop
cmp $55400, %rdi
movb $0x51, (%r15)
nop
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_normal+0x6e3b, %r10
clflush (%r10)
inc %r15
movb $0x51, (%r10)
nop
nop
nop
nop
and $36549, %r10

// Store
lea addresses_A+0x18a3b, %r13
nop
nop
sub %rdi, %rdi
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_RW+0x9a3b, %rsi
cmp $6450, %r13
movw $0x5152, (%rsi)
nop
nop
nop
and $45943, %r15

// Load
lea addresses_US+0x1fa3b, %r10
nop
add $27305, %r15
vmovups (%r10), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r13
nop
nop
nop
cmp $17306, %rbx

// Store
lea addresses_A+0x1b83b, %r13
nop
nop
cmp $3298, %rdi
movl $0x51525354, (%r13)
nop
nop
nop
inc %r10

// Load
lea addresses_A+0x105fb, %rsi
clflush (%rsi)
nop
cmp $57501, %rbx
mov (%rsi), %rax

// Exception!!!
nop
nop
nop
nop
mov (0), %r13
nop
nop
nop
nop
nop
inc %rax

// Load
lea addresses_RW+0x172fb, %r15
nop
nop
and $59711, %rsi
movups (%r15), %xmm5
vpextrq $1, %xmm5, %r10
nop
nop
nop
nop
xor $47849, %rax

// Store
lea addresses_A+0xabb, %r15
cmp %rsi, %rsi
movl $0x51525354, (%r15)
nop
nop
nop
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_US+0x1fa3b, %rdi
nop
nop
nop
add %r10, %r10
vmovaps (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 2, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'ef': 1, '63': 4, '1f': 8, 'a1': 4, 'b3': 5, '67': 1, '44': 2, 'd9': 9, 'bf': 160, 'b1': 18, '6b': 15, '83': 5, 'c7': 12, '25': 7, '8f': 8, '8d': 6, 'a5': 2, 'd3': 39, '31': 7, '11': 24, 'f1': 18, '5f': 1, '7d': 3, '87': 3, 'db': 6, '45': 9, '15': 2, 'c2': 203, 'e7': 10, '09': 8, '0f': 2, '4d': 5, '4f': 29, 'a3': 1, '23': 17, '73': 2, 'ab': 1, '93': 9, '95': 1, 'f5': 1, '6f': 7, '0b': 17, '29': 14, '5b': 8, '00': 1539, '05': 3, 'cf': 3, 'c9': 21, 'e5': 3, 'cd': 10, '13': 33, '49': 16, 'ff': 304, 'f7': 58, 'c3': 187, 'd5': 1, 'f3': 1, '77': 1, '0d': 2, 'f9': 6, '75': 10, 'a7': 2, 'a9': 19, '57': 2, 'b5': 3, '79': 14, 'ed': 4, '59': 1, '03': 5, '19': 17, '5d': 15, 'e9': 15, '35': 5, '65': 2, '72': 1346, '2d': 31, '7b': 12, 'fb': 27, '08': 962, 'dd': 2, '91': 1, 'cb': 54, '69': 1, 'bd': 68, 'e1': 4, 'c5': 1, 'd7': 1, 'd1': 6, '43': 12, '33': 15, '53': 3, '07': 4, '71': 1, 'fd': 1, '89': 1, '55': 12, '2f': 2, '99': 13, 'c1': 127, '61': 14, '3b': 20, '1d': 4, '8b': 14, '85': 6, '9d': 7, '3d': 19, 'df': 26, '6d': 52, '01': 10, '51': 5, 'c0': 246, '41': 1, '17': 1, '39': 19, '10': 2, '1b': 21, 'e3': 1}
10 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 08 00 08 00 00 00 bf 00 00 00 00 bf 00 bf 00 bf 00 00 00 00 00 00 00 00 00 00 bf 72 00 bf 00 00 00 00 bf 00 00 bf 00 00 00 bf 72 00 3d 72 00 00 cb 72 cb 72 00 cb cb bf cb cb bf cb cb bf cb cb cb cb bf 00 cb 75 00 bf 75 03 75 03 ff 75 03 75 08 08 08 08 00 08 ff 08 08 ff 08 08 08 ff 08 08 ff 08 08 08 08 08 ff 08 08 00 08 08 00 08 ff 08 08 08 08 08 00 00 08 08 00 ff 08 ff 00 c9 72 bf bf bf bf 72 e5 00 72 8f 72 00 72 72 8f 72 72 72 8f 08 00 08 08 ff 08 08 08 08 ff 08 08 08 08 00 08 00 08 bf 8f 8f bf bf 00 bf 8f ff bf 00 bf 08 bf bf bf 72 bf bf 08 bf bf bf bf bf 1b ff bf 1b bf bf bf 1b bf 1b bf 1b bf bf bf bf 1b bf 1b 00 bf bf 08 bf bf 00 bf 08 bf bf 00 bf bf bf bf bf bf bf bf bf bf bf e1 bf bf bf bf e1 bf bf e1 bf bf bf bf bf bf bf 6f bf bf bf bf bf bf 6f bf bf bf 6f bf bf 00 00 00 bf bf bf 35 bf bf 35 bf 35 00 08 bf 35 bf bf bf 35 bf bf 00 00 00 bf bf 08 a7 bf bf bf bf 72 19 bf 00 00 00 00 08 08 fb fb fb 00 fb fb fb fb fb fb fb fb fb fb fb fb ff ff ff ff ff 72 fb fb 72 00 ff 00 fb 00 fb fb fb 87 87 87 00 00 fb 00 fb fb fb fb 08 fb 00 08 08 00 bf bf 00 bf 08 bf bf bf 08 08 72 08 f7 08 72 ff db 00 72 db 72 ff 72 db db bf ff 2f 72 2f 72 72 72 bf 72 08 08 00 ff 08 00 ff 08 00 08 00 ff 08 08 00 00 08 bf 08 08 08 08 08 08 08 08 08 08 08 00 08 00 72 00 ff bf 72 72 72 72 00 00 ff 72 72 00 ff bf bf 72 72 00 72 bf 72 72 72 72 72 72 72 72 72 72 72 00 72 00 00 72 72 2d 00 00 65 72 72 72 08 72 00 72 72 72 72 72 72 72 00 72 72 72 72 72 72 72 00 bf 72 72 00 00 bf 00 00 08 00 00 00 00 00 00 00 00 72 00 00 72 00 72 00 00 72 72 72 00 72 bf 72 72 72 bf 72 72 00 00 72 72 bf 72 72 72 72 72 72 bf 72 72 00 00 72 00 72 00 72 72 00 72 72 00 00 00 72 72 72 00 72 72 72 72 bf 72 bf 72 72 00 72 72 72 00 00 00 72 72 bf 72 bf bf 72 00 72 72 bf 00 72 00 00 72 72 72 72 72 72 00 bf 72 00 72 72 72 00 bf 72 00 ef 0b 00 00 00 ff 00 00 00 00 00 00 43 43 00 00 ff 43 00 ff 43 43 43 00 00 43 43 72 72 43 43 43 08 72 72 72 08 72 08 00 72 72 08 72 00 72 72 72 72 00 72 72 72 08 00 72 08 72 00 72 08 00 72 08 00 00 08 72 08 00 ff 25 25 00 25 25 25 08 00 25 25 00 08 00 08 08 cf bf bf 08 bf 00 bf bf bf ff 00 bf 08 bf 00 bf bf bf bf bf bf bf bf bf bf bf 00 00 00 72 72 00 00 00 72 72 72 72 00 72 00 72 ff 08 72 08 72 08 08 08 08 08 08 72 93 08 08 93 08 08 08 08 00 93 08 93 93 93 93 00 bf 72 00 72 72 00 72 08 08 00 ff 72 72 00 72 08 3d 72 72 08 72 72 08 72 72 08 00 ff 3d 00 72 08 72 72 72 08 72 72 08 00 ff 08 00 00 72 08 00 72 72 08 72 72 08 00 ff cb 08 00 ff 72 91 72 72 72 08 00 ff 1f 1f 1f 1f 08 00 00 72 72 72 72 72 00 72 08 72 08 72 00 72 72 72 72 bf 72 72 bf 72 00 72 bf 72 72 72 00 00 00 72 00 ff 00 08 72 00 72 72 72 72 72 72 00 bf c7 ff ff ff 00 ff ff 00 ff ff 72 00 00 00 ff ff 39 1b 72 1b 72 1b 1b 1b 1b 08 00 55 1b 1b 72 1b 72 1b 72 1b 00 1b 72 1b 72 ff ff 72 00 ff 72 72 ff 00 ff 72 ff 00 08 08 08 ff 08 ff 08 08 08 08 08 ff 00 ff 08 08 ff 72 08 ff 08 00 08 08 08 00 08 ff 08 08 08 08 ff 08 08 08 08 bf
*/
