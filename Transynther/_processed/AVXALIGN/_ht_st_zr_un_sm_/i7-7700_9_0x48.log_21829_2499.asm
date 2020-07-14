.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rax
push %rdi
push %rsi
lea addresses_D_ht+0x24a4, %r10
clflush (%r10)
nop
nop
nop
nop
nop
cmp $65114, %r9
vmovups (%r10), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r14
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0xa5e4, %rax
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov (%rax), %r15w
nop
nop
inc %rsi
lea addresses_normal_ht+0x10d44, %r15
clflush (%r15)
nop
nop
nop
xor %r10, %r10
mov (%r15), %rdi
nop
nop
nop
xor $55928, %r15
lea addresses_A_ht+0xa444, %rax
nop
inc %r9
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_A_ht+0x1524, %r14
nop
nop
cmp %r9, %r9
mov (%r14), %ax
and $52875, %r14
lea addresses_UC_ht+0x1afe4, %r10
clflush (%r10)
nop
nop
nop
nop
nop
xor $22988, %rdi
movl $0x61626364, (%r10)
nop
and %r10, %r10
lea addresses_normal_ht+0x19ae4, %r10
nop
nop
nop
nop
xor $38161, %r14
mov (%r10), %r15d
nop
nop
add $14601, %rdi
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
mov $0xba4, %r9
sub $22735, %r10
mov $0x5152535455565758, %rbx
movq %rbx, (%r9)
nop
nop
nop
nop
add %r9, %r9

// Store
lea addresses_UC+0x185e4, %rcx
nop
nop
cmp %rbp, %rbp
movl $0x51525354, (%rcx)
nop
nop
sub %rbx, %rbx

// REPMOV
mov $0x484, %rsi
lea addresses_RW+0x1e7e4, %rdi
nop
nop
nop
nop
and $46434, %r14
mov $47, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r14, %r14

// Faulty Load
lea addresses_UC+0x185e4, %rbx
cmp $51724, %r9
vmovaps (%rbx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'9b': 1, '2a': 6, '3c': 1, '4e': 2, '00': 8522, '5b': 2, '2b': 14, '37': 1, '11': 1, '82': 1, '38': 4, '25': 24, '8f': 1, 'd3': 1, '6a': 44, '66': 1, 'f1': 7, '8e': 104, 'db': 2, '45': 1, '1e': 28, '13': 91, '64': 2, 'f6': 24, 'f0': 26, 'ab': 1, '6f': 7, '52': 34, '29': 31, '50': 5, 'af': 363, '05': 16, 'de': 256, 'c9': 33, 'e5': 38, 'cd': 61, '2e': 30, 'da': 39, '48': 34, 'ff': 3117, 'f3': 1, '77': 101, '88': 9, '5e': 1, 'c4': 1, '75': 56, '57': 31, '18': 15, 'bc': 1, 'ed': 17, '12': 9, '24': 20, '03': 1, '8c': 1, 'e2': 149, 'c5': 3805, '35': 66, '14': 16, '2d': 180, 'b4': 6, 'dc': 12, '40': 2450, '60': 15, '6e': 10, 'fc': 332, '23': 29, '51': 20, 'ad': 187, '54': 27, '58': 11, '55': 14, '34': 1, '22': 56, '33': 47, '53': 17, '07': 8, '71': 64, '32': 6, '89': 25, 'e1': 2, '99': 132, 'b0': 449, 'f2': 18, '0a': 13, '61': 14, '1d': 8, '1a': 1, '85': 16, 'd7': 7, 'df': 26, '56': 29, 'c8': 17, '28': 30, '41': 124, '0f': 5, '16': 1, '7f': 70, '1c': 19, '10': 6, '1b': 28, '5a': 21}
00 00 00 00 25 00 00 00 25 00 25 00 00 25 00 25 00 00 00 00 00 00 25 00 00 00 00 00 25 00 25 00 25 00 25 00 00 00 00 00 25 00 00 00 00 25 00 00 00 00 00 00 00 25 00 00 00 25 00 25 00 00 25 ff 00 00 00 ff 00 ff ff 00 25 ff 00 00 25 00 25 00 ff ff ff ff 00 25 ff ff 00 25 00 ff 00 ff 00 25 ff ff ff ff ff ff 00 00 25 00 ff 00 ff ff ff ff 00 25 ff ff ff ff ff 00 00 00 40 40 ff 40 40 40 40 40 00 40 40 40 00 c5 ff 40 ff 40 40 00 40 ff 40 ff ff ff ff 00 00 c5 ff 40 40 40 40 40 ff 40 ff 40 00 00 00 c5 ff ff ff ff 00 40 40 40 ff 00 40 40 ff 40 ff 40 40 40 ff ff 40 40 40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 66 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 ff 00 ff ff 00 ff 00 ff 00 ff 00 00 00 ff 00 ff ff ff 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff ff 00 00 ff 00 00 00 00 00 ff ff 00 00 00 00 00 00 00 00 00 00 ff 00 ff ff 00 00 00 00 00 00 00 00 00 ff ff ff 00 00 ff 00 ff ff 00 ff ff 00 00 00 ff ff 00 c5 c5 c5 00 c5 00 c5 c5 00 c5 00 00 00 99 00 c5 c5 00 99 00 c5 c5 c5 00 00 c5 c5 c5 c5 c5 c5 c5 00 c5 00 99 00 c5 61 61 61 61 00 c5 61 00 c5 61 c5 61 61 c5 00 c5 c5 61 c5 00 c5 61 00 c5 61 61 c5 c5 c5 c5 61 61 c5 c5 00 c5 c5 60 00 00 c5 c5 00 99 60 c5 c5 00 c5 c5 60 60 c5 00 99 c5 60 c5 c5 c5 60 c5 c5 60 c5 00 00 99 c5 60 60 c5 c5 c5 c5 c5 00 c5 c5 c5 c5 00 99 c5 00 c5 60 c5 c5 c5 00 99 60 c5 c5 60 00 99 00 99 c5 00 c5 60 60 60 00 c5 00 c5 c5 c5 c5 ff c5 ff c5 00 c5 c5 00 c5 ff c5 00 00 c5 ff c5 c5 c5 c5 c5 c5 c5 ff c5 00 c5 00 99 c5 00 c5 ff c5 ff ff 00 c5 ff 00 99 c5 c5 ff ff 00 99 c5 ff c5 c5 ff c5 c5 ff c5 c5 ff ff ff c5 ff ff c5 ff c5 ff c5 c5 c5 ff ff c5 c5 00 99 ff ff c5 00 99 00 99 c5 00 c5 00 00 00 99 ff ff ff ff c5 00 99 c5 ff ff ff ff c5 ff c5 c5 ff c5 00 c5 ff c5 c5 c5 00 c5 c5 00 00 00 00 c5 00 c5 ff c5 c5 00 99 ff 00 c5 c5 c5 c5 c5 c5 ff ff c5 c5 ff c5 c5 c5 ff c5 ff 00 00 99 00 99 ff c5 ff ff ff c5 ff 00 00 99 c5 00 00 c5 ff c5 ff ff ff c5 ff ff c5 c5 ff ff c5 00 99 c5 ff c5 c5 ff c5 c5 00 99 c5 ff ff 00 c5 ff ff ff c5 ff ff 00 00 99 c5 c5 c5 00 c5 00 c5 00 c5 00 c5 ff ff c5 c5 c5 00 c5 ff ff c5 00 c5 c5 c5 c5 c5 c5 c5 ff c5 ff c5 c5 c5 ff c5 c5 ff c5 00 c5 c5 00 99 00 99 57 c5 c5 c5 c5 57 c5 57 57 57 c5 c5 00 c5 57 c5 00 99 c5 c5 00 c5 57 c5 c5 c5 c5 00 ff 00 c5 c5 00 c5 00 99 00 c5 00 99 00 00 00 c5 c5 c5 c5 c5 c5 c5 00 c5 00 00 c5 00 c5 00 55 00 55 00 55 00 55 55 00 00 00 00 55 00 55 00 00 55 00 55 55 00 55 55 00 00 00 00 00 00 55 00 55 c5 c5 c5 c5 c5 c5 00 00 c5 c5 00 c5 c5 c5 00 00 00 c5 00 c5 00 c5 00 c5 00 00 00 c5 00 c5 c5 00 00 00 c5 00 c5 c5 00 00 00 00 00 c5 00 c5 c5 c5 00 c5 00 00 00 00 00 c5 c5 00 00 c5 c5 c5 c5 c5 c5 00 00 00 c5 c5 99 c5 00 00 00 00 00 00 00 c5 c5 c5 c5 00 00 c5 c5 c5 c5 c5 c5 c5 00 c5 c5 c5 c5 00 c5 c5 c5 c5 c5 c5 00 c5 c5 00 00 00 ff c5 c5 c5 c5 c5 c5 c5 c5 00 c5 c5 c5 c5 c5 00
*/
