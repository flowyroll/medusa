.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rsi
lea addresses_UC_ht+0xff60, %r15
xor $61260, %r13
movb $0x61, (%r15)
nop
nop
nop
nop
nop
cmp $57315, %r9
lea addresses_UC_ht+0x3cb0, %r13
dec %rbp
movl $0x61626364, (%r13)
nop
cmp $34053, %r15
lea addresses_UC_ht+0xca22, %r8
nop
nop
nop
nop
nop
add $28059, %rbp
vmovups (%r8), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
dec %rsi
lea addresses_D_ht+0xf220, %r8
nop
nop
xor $31712, %r9
movups (%r8), %xmm3
vpextrq $0, %xmm3, %rbp
nop
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0xe058, %rbp
clflush (%rbp)
nop
nop
nop
nop
xor %r9, %r9
movw $0x6162, (%rbp)
nop
nop
nop
sub %r13, %r13
pop %rsi
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rdx

// Load
lea addresses_normal+0x2c40, %r8
nop
nop
nop
nop
xor %r9, %r9
movb (%r8), %dl
nop
nop
nop
nop
nop
sub $28303, %r15

// Store
lea addresses_UC+0x5760, %r8
nop
cmp %rbx, %rbx
movb $0x51, (%r8)
and %r14, %r14

// Load
lea addresses_A+0x17f30, %r8
nop
nop
cmp $51910, %r13
movups (%r8), %xmm1
vpextrq $1, %xmm1, %r14
nop
nop
nop
nop
add %r13, %r13

// Store
lea addresses_RW+0xd160, %rdx
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovaps %ymm1, (%rdx)
nop
nop
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_A+0xcf60, %r15
and %rdx, %rdx
movw $0x5152, (%r15)
nop
nop
nop
nop
xor $27204, %r13

// Load
lea addresses_PSE+0x135e0, %rbx
clflush (%rbx)
nop
nop
nop
nop
xor %rdx, %rdx
vmovups (%rbx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r13
nop
nop
nop
nop
nop
sub $61679, %r14

// Load
lea addresses_WT+0xdb60, %r8
nop
nop
nop
nop
xor $41799, %rdx
movups (%r8), %xmm4
vpextrq $1, %xmm4, %r15
xor %r9, %r9

// Faulty Load
mov $0x1eddaa0000000f60, %r14
nop
xor $3511, %r15
movups (%r14), %xmm5
vpextrq $1, %xmm5, %r9
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rdx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_RW', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'7f': 252, 'eb': 2, '1d': 114, '84': 1, 'f8': 64, '56': 146, '0b': 1, '48': 133, 'fd': 176, '6a': 784, '42': 8007, 'b8': 9, 'e9': 1, '43': 76, '00': 6472, '1e': 1, 'cd': 91, 'f6': 63, '96': 3, '38': 107, '4d': 21, 'ca': 10, 'fc': 2, '21': 78, '25': 97, '94': 1, '65': 1, '45': 43, '8d': 77, '77': 40, '4f': 20, 'f1': 11, '14': 2, '40': 1583, '80': 579, 'ff': 1712, 'e7': 100, '91': 4, '35': 40, 'a7': 560, '33': 1, '6f': 1, 'f4': 1, 'c3': 131, 'f0': 1, 'a1': 2, '2a': 75, '11': 3, 'd3': 1, '78': 22, 'f5': 47, '9c': 1, '92': 39, '6b': 20}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80 80 00 80 80 00 96 80 00 80 80 80 80 80 80 80 80 00 80 80 00 80 80 80 80 80 80 00 96 80 80 00 96 80 f1 42 42 00 42 42 42 00 42 00 f1 42 42 42 00 f1 42 00 42 00 42 42 42 00 42 00 00 42 42 42 42 42 94 42 42 00 42 00 f1 42 42 42 00 42 42 42 42 42 00 42 42 42 00 42 42 00 42 00 f1 00 42 00 42 f1 42 42 42 42 42 00 f1 42 00 00 00 42 00 f1 42 00 42 42 00 42 42 42 42 00 42 00 42 42 42 42 42 00 42 42 00 42 42 42 42 42 42 42 00 42 00 42 42 00 42 42 00 80 00 80 00 42 00 42 42 42 00 80 42 42 42 f1 42 42 40 42 42 40 42 42 42 00 80 42 00 42 42 40 42 40 42 40 40 42 42 40 42 42 00 80 42 42 42 ff 42 42 40 42 40 42 40 42 42 42 42 40 42 42 42 42 42 42 00 42 42 42 42 42 42 40 42 40 42 00 42 42 40 42 00 f1 40 42 42 40 40 42 40 40 42 42 42 42 40 40 42 42 42 00 42 42 40 42 42 42 42 42 42 40 42 42 40 42 42 42 40 42 42 42 42 42 40 42 42 40 40 40 40 42 42 42 00 42 42 42 42 40 42 40 40 42 42 40 40 42 40 40 42 42 f1 42 42 42 40 42 42 40 42 42 42 40 42 40 40 42 42 42 42 42 40 42 40 42 42 42 42 40 42 42 42 42 42 42 42 42 42 42 42 42 42 00 42 00 00 42 42 42 42 00 42 42 42 42 42 42 42 42 42 42 42 42 42 42 ff 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 00 00 00 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 00 00 00 42 42 42 42 42 42 42 42 42 42 42 42 42 42 ff 42 42 6a 6a 42 42 42 6a 42 42 42 6a 42 42 42 6a 42 42 6a 6a 42 42 00 42 6a 42 42 42 42 42 00 42 42 42 42 6a 42 00 42 42 42 42 6a 42 42 42 42 6a 42 42 42 6a 42 42 42 42 42 6a 42 42 6a 00 42 42 42 80 42 80 42 42 42 42 80 80 42 42 80 00 00 42 42 42 80 42 80 42 42 42 42 80 80 42 42 42 80 80 42 00 42 00 00 00 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 00 00 42 ff 42 42 42 42 00 42 42 42 42 00 42 42 42 42 42 42 42 42 42 42 42 42 42 ff 42 42 42 42 00 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 00 42 42 42 42 42 42 00 42 42 42 42 00 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 00 00 42 00 00 00 42 42 00 00 00 00 00 00 42 00 00 00 42 42 00 00 00 00 42 00 00 00 00 00 00 00 00 00 00 42 00 00 00 00 00 00 00 00 00 42 00 00 00 42 00 00 00 42 42 00 00 00 00 00 42 00 42 00 00 80 00 80 00 00 00 80 00 80 00 80 00 00 80 00 80 00 00 80 00 80 00 00 00 00 00 00 00 00 00 80 00 80 00 80 42 00 80 00 00 00 00 00 00 00 00 80 42 00 00 80 42 42 42 00 80 42 00 00 00 00 80 00 00 40 00 00 00 00 80 00 80 00 80 00 80 00 00 80 42 00 00 00 00 00 80 00 80 00 00 00 00 00 00 00 00 00 40 40 42 40 40 42 40 40 42 42 40 40 40 40 40 40 40 42 42 40 00 40 40 42 42 40 42 40 40 40 40 00 00 42 40 7f 40 40 40 40 40 40 7f 40 40 7f 40 40 7f 40 7f 40 00 40 40 40 7f 40 40 40 40 00 40 00 40 00 40 40 00 40 40 00 40 40 40 00 40 40 00 40 00 40 40 00 42 40 00 00 42 40 40 40 00 42 00 40 40 40 40 40 40 40 40 40 40 ff 40 ff 40 ff 40 40
*/
