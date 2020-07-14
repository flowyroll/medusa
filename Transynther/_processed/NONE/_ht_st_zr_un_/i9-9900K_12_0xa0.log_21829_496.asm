.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x451b, %rsi
lea addresses_D_ht+0x1e6bb, %rdi
cmp %rax, %rax
mov $49, %rcx
rep movsq
nop
nop
sub %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_normal+0x391b, %r15
nop
nop
nop
nop
nop
and %rbp, %rbp
movl $0x51525354, (%r15)
nop
nop
nop
sub %r15, %r15

// Load
lea addresses_WT+0x13933, %rbp
nop
nop
nop
nop
cmp %rcx, %rcx
movups (%rbp), %xmm7
vpextrq $0, %xmm7, %rdi
add %rbp, %rbp

// Store
lea addresses_WC+0x16ae7, %r15
nop
nop
nop
nop
add %rcx, %rcx
movw $0x5152, (%r15)
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_WT+0x1d91b, %rbp
nop
nop
nop
add $63603, %r15
vmovups (%rbp), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'eb': 67, '6a': 4040, 'ab': 22, '5a': 2, 'f8': 17, '75': 89, '1c': 1, '31': 1, 'e5': 143, '67': 1, '48': 827, '4d': 1, '00': 344, '4c': 1, '03': 3338, '90': 6, '0d': 197, '6d': 62, '84': 3, 'f9': 61, 'b6': 25, '2f': 1, 'e2': 1, 'd5': 1, '71': 1, '96': 1, '4e': 1, 'af': 435, '72': 4388, 'ca': 2, '54': 1, '41': 2, 'fc': 347, 'c7': 115, '94': 124, '18': 197, '65': 39, '45': 1, '8d': 72, '17': 1, 'ed': 1468, '63': 1, 'a9': 2, '64': 1, '15': 1, '2d': 2, '0f': 84, 'df': 1, 'd0': 1, 'd3': 6, '06': 61, 'c8': 12, '49': 3, '98': 1, '91': 1, 'f2': 165, '01': 2, 'a7': 1, '33': 133, '5c': 60, '16': 66, 'ff': 1, 'f4': 12, '3b': 185, '19': 926, 'e4': 60, 'be': 661, 'f3': 1, 'cc': 62, '11': 26, '69': 784, 'b4': 83, 'c4': 1, '9f': 82, '56': 117, 'a3': 1, 'fb': 3, 'c0': 1, '24': 3, '4a': 2, 'ec': 1700, 'fd': 68}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 65 06 65 65 06 65 65 06 00 65 06 00 65 06 00 65 06 00 00 65 06 00 00 00 00 65 65 06 00 00 00 65 65 65 06 00 00 00 00 00 65 06 00 00 00 65 65 06 00 00 00 00 00 00 00 00 00 00 65 be 06 00 00 00 00 00 00 65 06 00 65 06 00 00 00 00 00 00 65 06 00 65 06 65 65 06 65 65 65 06 00 00 00 65 06 00 00 65 65 06 65 06 00 65 06 00 00 00 65 65 65 06 00 65 06 00 65 06 65 6a be 06 00 00 00 00 6a 6a 06 00 00 00 00 00 00 00 00 00 00 00 00 00 00 6a 6a 06 00 00 00 00 00 00 00 00 00 00 00 00 6a 06 00 00 00 00 00 00 00 00 6a 6a 6a 6a 06 6a 06 6a 06 00 00 00 6a 06 00 00 6a 06 00 00 00 00 72 be 06 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 6a 06 6a 06 00 00 00 00 00 00 00 00 6a 06 6a 6a 06 00 00 6a 06 00 6a 06 00 6a 06 00 00 6a 06 00 00 6a 06 00 00 6a 06 6a 06 00 6a 06 6a 06 41 41 06 00 00 6a 06 00 00 00 00 00 00 00 6a 06 00 00 6a 06 00 00 00 6a 06 00 6a 06 00 00 00 6a 06 00 00 00 00 6a 06 6a 6a 6a 06 6a 06 00 6a 06 00 00 00 6a 06 00 00 00 00 00 00 00 00 00 00 6a 06 00 00 00 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 be 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 be ec 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 6a ec 48 48 48 48 48 48 48 48 6a 48 48 6a 6a 6a 48 48 48 48 48 48 48 48 48 48 48 48 48 6a 48 48 48 48 6a 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 6a 48 48 48 6a 48 6a 48 48 48 48 48 6a 48 48 6a 6a 6a 48 48 48 48 48 48 6a 03 03 00 00 00 00 6a 48 48 6a 48 48 48 48 48 48 48 48 48 6a 6a 6a 48 48 48 6a 48 48 48 48 6a 6a 48 48 6a 48 48 48 6a 6a 6a 48 48 48 6a 48 48 48 48 48 6a 48 48 48 6a 48 48 6a 48 48 48 6a 48 48 48 48 48 6a 6a 03 00 00 00 00 00 00 00 6a 03 00 00 00 6a 6a 03 00 6a 03 00 6a 6a 6a 6a 6a 03 00 00 00 00 00 00 00 00 00 00 6a 03 00 00 6a 03 00 00 6a 03 6a 6a 03 6a 6a 6a 6a 03 00 6a 03 00 00 00 00 00 00 00 be ec f9 f9 f9 f9 f9 f9 6a f9 f9 f9 6a f9 f9 f9 f9 f9 f9 f9 6a f9 f9 f9 f9 f9 f9 f9 f9 6a f9 f9 f9 f9 6a 6a f9 f9 f9 6a f9 6a f9 f9 6a f9 6a 6a 6a f9 f9 6a f9 f9 f9 f9 f9 f9 6a f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a 6a
*/
