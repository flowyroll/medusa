.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rax
push %rbx
lea addresses_WT_ht+0x141bb, %r9
add $27650, %rax
mov (%r9), %r13
sub %r15, %r15
lea addresses_D_ht+0x1b547, %r11
nop
nop
nop
cmp %rax, %rax
movb $0x61, (%r11)
nop
nop
nop
nop
sub $1086, %r9
lea addresses_WT_ht+0x165bb, %rbx
nop
nop
nop
nop
cmp $631, %r10
movb (%rbx), %r11b
dec %r9
lea addresses_D_ht+0xd99, %r10
nop
nop
nop
add $46576, %r13
mov $0x6162636465666768, %rax
movq %rax, (%r10)
nop
nop
cmp %rax, %rax
lea addresses_D_ht+0xe2bb, %rbx
nop
nop
nop
nop
inc %r13
mov $0x6162636465666768, %r15
movq %r15, %xmm6
movups %xmm6, (%rbx)
nop
nop
nop
inc %r13
lea addresses_UC_ht+0xb7bb, %r11
nop
nop
nop
nop
nop
dec %r15
mov (%r11), %r10w
xor %r9, %r9
lea addresses_normal_ht+0x153bb, %r13
clflush (%r13)
nop
nop
nop
nop
and $61436, %rbx
and $0xffffffffffffffc0, %r13
movaps (%r13), %xmm1
vpextrq $0, %xmm1, %r15
nop
nop
sub $19893, %rax
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rbp
push %rbx
push %rdi

// Load
lea addresses_UC+0xcf3b, %rbp
clflush (%rbp)
nop
xor %rbx, %rbx
movups (%rbp), %xmm1
vpextrq $0, %xmm1, %r11
nop
nop
and $24406, %r10

// Store
lea addresses_WC+0x197b, %r9
nop
nop
xor $57919, %rdi
movw $0x5152, (%r9)
nop
nop
nop
nop
dec %r10

// Store
mov $0x7cb, %r11
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movntdq %xmm4, (%r11)
nop
xor %rbx, %rbx

// Load
lea addresses_RW+0x133bb, %r14
nop
and $34986, %rdi
vmovups (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbx
nop
nop
nop
xor $59569, %r10

// Store
mov $0x3bb, %rdi
nop
and %r14, %r14
movw $0x5152, (%rdi)
nop
cmp %r11, %r11

// Faulty Load
lea addresses_US+0xcbbb, %rbx
nop
and %r14, %r14
vmovntdqa (%rbx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r9
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'e5': 1, '32': 1, '5f': 2301, '12': 19518, 'a7': 1, '00': 6, '0b': 1}
12 5f 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 5f 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 5f 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 12 5f 5f 12 12 12 12 12 12 12 5f 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 5f 12 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 5f 12 12 12 5f 12 12 12 12 12 12 5f 12 12 5f 12 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 5f 12 5f 12 12 12 12 12 12 12 5f 12 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 5f 12 12 12 5f 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 5f 12 12 5f 5f 12 12 5f 12 12 12 5f 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 5f 12 12 12 12 5f 12 12 5f 12 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 5f 12 5f 5f 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 5f 12 5f 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 5f 12 12 5f 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 5f 12 5f 12 12 12 12 12 12 5f 12 5f 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 5f 12 12 12 12 12 12 12 12 5f 12 12 12 5f 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 5f 12 12 12 12 12 12 12 12 12 12 12 12 5f 12 12 12 12 12 12 5f 12 5f 12 12 5f 12 12 12 12 5f 12 12 12 12 12 12 12 12
*/
