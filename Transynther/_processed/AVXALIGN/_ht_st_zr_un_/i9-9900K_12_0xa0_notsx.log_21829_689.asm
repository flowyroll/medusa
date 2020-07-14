.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r9
push %rbp
push %rdi
push %rdx
lea addresses_D_ht+0x4598, %rdx
nop
nop
nop
nop
nop
inc %rdi
movb (%rdx), %r9b
nop
nop
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x1ea59, %rdx
clflush (%rdx)
cmp $62920, %r11
mov (%rdx), %r14
nop
cmp $57995, %rdi
lea addresses_normal_ht+0x1ee98, %r13
sub $20473, %rbp
mov (%r13), %r11
nop
nop
cmp $31287, %rbp
lea addresses_A_ht+0x5d22, %r9
nop
nop
nop
nop
and %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
and $0xffffffffffffffc0, %r9
vmovntdq %ymm7, (%r9)
nop
nop
and $978, %r11
lea addresses_A_ht+0x12398, %rbp
cmp $7974, %r13
movb $0x61, (%rbp)
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x818, %r11
nop
nop
nop
add $19987, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r11)
nop
add %r9, %r9
lea addresses_normal_ht+0x170f6, %r9
nop
add %r13, %r13
vmovups (%r9), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
nop
sub %rdx, %rdx
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rbp
push %rdx
push %rsi

// Store
mov $0xdd8, %rdx
nop
inc %r12
movw $0x5152, (%rdx)

// Exception!!!
nop
nop
nop
nop
mov (0), %r8
nop
nop
nop
sub $22507, %rbp

// Faulty Load
mov $0x398, %r8
nop
nop
inc %rsi
vmovntdqa (%r8), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r12
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rsi
pop %rdx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'b0': 5, 'ff': 52, '44': 10673, '51': 40, '00': 11059}
00 00 44 00 00 00 00 44 00 00 00 44 00 44 00 00 00 00 44 00 00 44 00 44 00 44 00 00 00 ff 44 00 44 44 00 44 00 44 00 44 44 00 44 00 00 44 00 44 00 00 44 44 00 44 44 00 00 44 44 00 44 00 00 44 44 00 00 44 00 44 00 44 00 00 44 00 44 44 00 44 00 44 00 44 44 00 44 00 44 00 00 44 00 44 00 44 00 00 00 44 00 00 44 44 44 00 44 00 44 44 44 00 44 44 00 44 00 44 00 44 00 44 44 00 44 00 44 00 00 44 00 00 00 00 44 00 44 00 44 00 44 00 00 00 00 44 00 44 00 44 00 00 00 00 44 00 44 44 00 00 00 44 00 00 44 00 44 00 44 00 44 00 44 00 44 00 00 00 00 00 44 00 44 00 44 00 44 00 00 00 44 00 00 44 00 44 44 44 44 00 00 44 00 44 00 44 44 00 44 00 00 44 44 00 00 44 44 00 44 00 44 00 44 00 44 00 00 44 00 44 00 44 00 44 44 00 44 00 00 00 00 00 00 44 00 44 44 00 44 44 00 00 00 00 44 00 44 44 44 44 44 44 44 00 44 00 00 00 00 00 00 44 00 44 00 44 00 44 44 00 00 44 44 00 44 00 44 00 44 00 44 00 44 00 00 44 44 00 44 00 44 44 00 44 00 44 00 00 00 b0 00 00 00 44 00 44 00 00 44 00 44 00 44 00 44 00 44 00 44 00 00 44 00 44 44 44 44 44 44 00 44 00 44 00 44 00 44 44 00 44 00 00 44 44 44 00 00 00 00 44 00 44 00 00 44 44 00 44 00 44 00 44 00 44 44 00 44 00 44 00 44 00 44 00 44 00 00 00 00 00 00 00 44 00 44 44 44 00 00 44 00 00 44 00 44 00 44 00 00 00 00 44 00 44 00 00 44 00 00 44 00 00 44 00 44 00 00 00 00 44 00 00 44 00 00 44 44 00 00 00 00 44 00 44 00 44 00 44 00 44 00 44 00 44 00 44 00 44 00 44 44 00 00 00 00 00 44 00 44 00 44 00 44 00 44 00 44 00 44 00 00 44 00 00 00 44 00 44 00 44 44 00 00 00 00 00 ff 44 44 44 00 00 44 44 00 00 00 00 44 00 00 00 00 00 44 00 44 00 00 00 44 00 44 00 00 00 00 44 00 44 00 44 00 44 00 44 44 00 44 00 44 00 44 00 44 44 00 44 00 44 00 44 00 44 00 00 00 00 00 44 00 00 00 44 00 00 44 00 00 00 44 00 44 00 00 00 44 00 44 00 00 44 00 44 00 44 00 44 00 00 44 44 44 00 44 44 00 44 00 44 00 44 00 44 00 44 00 44 00 44 00 00 00 00 00 00 44 00 00 00 00 44 44 00 44 00 44 00 44 00 00 44 00 44 44 00 44 00 44 00 00 44 00 44 00 44 44 44 44 00 44 00 44 00 00 00 44 00 00 00 00 00 44 00 44 00 44 44 44 00 00 00 00 44 00 44 00 44 00 00 00 00 00 b0 44 00 44 44 00 44 00 44 00 44 00 44 00 44 00 00 44 00 00 44 44 00 44 00 44 00 44 00 44 44 44 00 00 44 00 44 00 44 00 00 00 00 00 44 00 00 44 00 44 00 44 00 00 44 00 44 00 00 00 44 00 44 00 44 00 44 00 44 00 44 00 44 00 44 44 00 00 44 00 44 00 44 00 44 00 44 00 00 00 00 00 00 44 44 44 00 44 00 44 00 00 44 00 00 00 00 44 44 44 44 00 00 00 00 44 00 44 44 00 00 44 44 00 44 00 44 44 00 44 00 44 44 00 44 00 00 44 00 00 00 44 00 00 00 44 00 00 44 00 00 00 44 00 00 44 44 00 44 44 00 44 44 44 44 00 00 44 00 00 44 00 00 44 44 00 44 00 44 44 00 44 44 00 44 44 44 44 00 44 00 00 44 44 00 44 44 00 44 44 00 00 00 00 44 00 44 00 44 00 00 44 00 44 44 00 00 00 44 00 44 44 00 44 44 00 44 44 00 44 00 44 00 00 44 00 44 00 44 00 44 00 44 00 44 00 44 00 00 00 00 44 00 00 00 00 44 44 00 00 00 00 44 00 44 00 44 00 44 00 44 44 00 44 00 44 00 00 44 00 ff 00 44 00 44 00 44 00 44 00 00 00 44 44 00 44 00 44 00 44 00 44 44 00 00 00 44 00 44 00 44 00 44 00 44 00 44
*/
