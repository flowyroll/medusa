.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rax
push %rdi
push %rdx
lea addresses_WT_ht+0x1ba7e, %r12
nop
nop
nop
nop
xor $3427, %rdx
mov (%r12), %r13w
nop
nop
nop
and $17973, %rdi
lea addresses_UC_ht+0x1467e, %rdx
nop
nop
nop
nop
sub $13944, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rdx)
nop
nop
nop
nop
sub %r12, %r12
lea addresses_D_ht+0x87e, %r13
nop
nop
nop
nop
cmp $30281, %r11
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
movups %xmm3, (%r13)
nop
nop
nop
nop
inc %rdx
pop %rdx
pop %rdi
pop %rax
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %rbp
push %rbx
push %rdi

// Store
lea addresses_WT+0x367e, %r12
nop
nop
dec %r13
movw $0x5152, (%r12)
nop
nop
sub $19616, %r15

// Store
lea addresses_RW+0x1be7e, %r11
and $16874, %rbx
movl $0x51525354, (%r11)
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_WT+0x367e, %rdi
cmp %r12, %r12
movups (%rdi), %xmm6
vpextrq $1, %xmm6, %rbx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': True, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'64': 1, '7f': 12, 'd4': 1, 'fc': 3, 'b2': 1, '47': 157, '56': 22, '0b': 78, 'a6': 590, '48': 12, '58': 13, 'cb': 265, '4d': 34, '00': 3587, '42': 393, 'd1': 1, '90': 416, '2d': 8, 'f9': 1, 'b3': 1, '8b': 223, '27': 15, '39': 1, '96': 87, '4e': 1, 'b4': 120, '54': 24, '41': 92, 'd2': 376, 'c7': 418, '7d': 23, '94': 354, '9d': 191, 'b9': 334, 'ef': 896, '9e': 24, '6b': 8, 'c2': 595, '40': 2654, 'd0': 270, '95': 84, '80': 1, 'ff': 5539, '04': 298, 'b0': 810, '83': 127, '08': 513, '7a': 15, 'bb': 88, 'b1': 87, 'cc': 92, '09': 86, 'db': 1, '78': 12, 'c8': 88, '81': 209, '66': 117, 'da': 1, '82': 1, 'd9': 480, '9a': 337, '97': 449, 'ba': 92}
00 00 00 97 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 ff ff 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 ff ff ff 00 ff ff ff ff 00 ff 00 ff ff 00 ff ff 00 ff 00 ff ff 00 ff 00 ff ff 00 ff 00 ff 00 ff ff ff 00 ff ff 00 ff 00 ff 00 ff ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff ff ff ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff ff ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff ff 00 ff 00 ff ff 00 ff ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff ff ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff ff ff 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 ff ff ff ff ff ff ff ff ff 97 97 97 97 97 97 97 97 42 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 ff 42 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 42 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 42 42 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 42 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 da 00 ff 42 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 42 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 42 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 97 db d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 42 00 ff 42 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 42 d9 d9 d9 d9 d9 d9 d9 d9 d9 42 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 42 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 42 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 42 d9 d9 d9 d9 d9 d9 d9 42 d9 d9 d9 d9 d9 d9 d9 d9 42 42 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 00 42 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 d9 ff ff ff ff
*/
