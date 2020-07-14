.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x625d, %r11
nop
nop
nop
nop
nop
dec %r10
mov (%r11), %r12
nop
dec %rsi
lea addresses_WT_ht+0x9ab7, %rsi
lea addresses_A_ht+0x147b5, %rdi
clflush (%rsi)
nop
nop
sub %rdx, %rdx
mov $28, %rcx
rep movsl
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_A_ht+0x5335, %r11
clflush (%r11)
nop
nop
nop
and %r12, %r12
vmovups (%r11), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
add %rsi, %rsi
lea addresses_A_ht+0x11fb5, %rsi
nop
nop
and %r12, %r12
mov (%rsi), %r10d
nop
nop
nop
add %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rax
push %rbp
push %rdi
push %rdx

// Load
mov $0x4f1b170000000899, %rdx
nop
nop
xor $44403, %rax
movb (%rdx), %r9b
and $26996, %r15

// Store
lea addresses_RW+0x20d5, %r9
and %rbp, %rbp
movw $0x5152, (%r9)
nop
nop
inc %rdi

// Load
lea addresses_A+0x6765, %rdx
nop
nop
sub $13554, %rdi
mov (%rdx), %ax

// Exception!!!
mov (0), %rax
nop
sub $14022, %r9

// Faulty Load
lea addresses_WT+0x97b5, %r9
nop
nop
nop
nop
nop
cmp %r10, %r10
vmovntdqa (%r9), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'79': 123, 'ed': 7, '8d': 180, '03': 2988, '19': 2, '75': 1, '18': 1, 'd9': 19, '35': 1, '65': 2, '72': 6322, '11': 1, '2d': 5, 'b1': 107, '04': 3, 'dd': 1, '06': 135, '85': 18, 'ad': 13, 'f1': 1, 'aa': 1, '21': 36, 'bd': 117, '45': 1935, 'b0': 1, '15': 10, '99': 5, '64': 7, 'd8': 32, 'fd': 21, 'ee': 186, 'd7': 1151, 'c1': 38, '3f': 25, '29': 1, '0a': 2, '61': 2, '3b': 3452, '00': 1732, 'c9': 14, '05': 15, 'b9': 1, 'b5': 14, '9d': 74, '3d': 4, 'b8': 159, 'cd': 19, '6d': 2, '49': 1044, '48': 1561, 'f5': 1, 'f3': 11, '01': 2, 'f9': 3, '1d': 2, '50': 219}
00 00 00 06 06 00 00 06 06 06 06 06 06 06 06 06 06 06 06 00 00 00 00 00 06 6d 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 00 00 00 00 00 00 06 72 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 00 00 00 00 00 00 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 06 00 45 72 72 72 00 45 72 00 00 45 72 72 72 00 45 72 00 45 72 72 72 72 72 72 72 72 72 72 00 45 00 45 72 72 00 45 00 45 72 72 72 72 00 45 72 00 45 72 00 45 72 72 72 72 00 45 72 72 00 45 00 00 00 dd 06 00 03 45 72 72 72 72 72 72 72 72 72 72 72 72 00 03 45 72 72 72 72 72 72 72 72 72 00 03 45 72 72 72 72 72 72 72 72 00 03 45 72 72 72 72 72 72 72 72 72 72 72 72 00 03 72 72 72 00 03 45 72 72 72 72 00 03 45 72 00 03 45 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 00 03 00 72 72 00 03 45 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 00 03 45 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 00 03 45 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 00 49 06 45 72 72 72 72 72 72 72 72 72 72 72 72 49 72 72 72 72 72 72 72 72 72 72 72 72 72 49 72 72 72 72 72 72 72 72 72 72 49 72 72 72 72 49 72 72 49 49 72 72 72 72 00 49 72 72 72 49 72 72 72 72 72 72 72 72 49 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 49 00 03 45 72 72 72 72 72 00 03 45 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 00 03 45 72 72 72 00 03 45 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 00 03 45 72 72 72 72 72 49 72 72 72 72 72 72 72 72 72 72 72 72 72 00 03 45 72 00 03 45 72 72 72 72 72 72 72 72 72 49 72 49 72 72 72 72 72 72 49 72 72 72 72 72 72 72 72 72 72 72 72 72 72 00 03 45 72 72 72 49 49 72 72 72 72 00 03 45 49 72 72 72 72 49 49 72 72 72 72 72 72 72 72 72 72 72 72 72 49 49 49 72 72 72 72 72 00 03 45 72 72 72 72 72 72 72 72 72 72 72 72 72 72 49 72 72 72 72 72 72 72 72 49 72 72 72 72 72 72 72 72 72 72 72 72 72 49 72 72 72 72 72 72 72 72 72 72 00 d7 72 72 72 49 72 72 00 d7 72 72 72 72 72 72 72 72 72 00 d7 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 49 00 d7 49 72 72 49 00 d7 00 d7 72 72 49 49 49 72 72 72 72 72 72 03 03 48 72 72 72 72 72 72 72 72 03 48 72 72 72 72 03 48 72 72 72 72 72 72 72 72 72 72 03 48 72 72 00 d7 03 48 72 72 72 72 72 00 d7 72 72 72 72 72 72 72 72 72 03 48 72 72 72 72 72 03 48 72 72 72 72 72 72 72 72 72 72 00 d7 72 72 72 72 72 03 48 72 03 03 48 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 03 48 72 72 72 00 d7 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72 72
*/
