.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x14dbd, %r15
nop
nop
cmp $10071, %r8
movb $0x61, (%r15)
nop
nop
nop
add $32183, %r11
lea addresses_normal_ht+0x33dd, %rsi
lea addresses_UC_ht+0x186f1, %rdi
nop
nop
nop
nop
inc %r11
mov $18, %rcx
rep movsl
nop
nop
dec %r11
lea addresses_UC_ht+0x15f1, %rcx
nop
nop
nop
nop
and $64637, %r12
movl $0x61626364, (%rcx)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x84f1, %rsi
nop
add $50185, %rcx
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x7b59, %rdi
nop
nop
dec %r12
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r11
nop
nop
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x196d9, %r11
nop
nop
inc %rsi
movb (%r11), %r15b
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0xe441, %rcx
nop
nop
cmp %r11, %r11
mov (%rcx), %si
nop
nop
cmp $58696, %rsi
lea addresses_WC_ht+0x13871, %rsi
lea addresses_normal_ht+0x1ccf1, %rdi
nop
nop
nop
xor $35939, %r9
mov $124, %rcx
rep movsq
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x1441, %rsi
lea addresses_WC_ht+0xb4f1, %rdi
clflush (%rdi)
sub $1765, %r9
mov $107, %rcx
rep movsw
nop
and $35465, %r9
lea addresses_WC_ht+0x6971, %rsi
nop
nop
xor %r12, %r12
movw $0x6162, (%rsi)
nop
nop
cmp %r12, %r12
lea addresses_UC_ht+0x14cf1, %r9
nop
nop
nop
nop
nop
and %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, (%r9)
sub $10390, %r12
lea addresses_WT_ht+0x691, %rsi
lea addresses_WT_ht+0x1686b, %rdi
nop
and $26032, %r9
mov $37, %rcx
rep movsw
nop
nop
nop
nop
nop
add $3240, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x415, %rdi
nop
nop
nop
add $52, %r14
movb $0x51, (%rdi)
nop
add $51261, %r12

// Load
lea addresses_US+0x1bcf1, %rcx
nop
nop
nop
nop
sub $39438, %r14
vmovaps (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r12
add %rdi, %rdi

// Load
lea addresses_RW+0x1a64d, %r12
nop
and $62073, %rsi
movb (%r12), %dl
nop
nop
nop
nop
nop
dec %r15

// Faulty Load
lea addresses_US+0x1bcf1, %r14
nop
nop
cmp $39539, %r15
movntdqa (%r14), %xmm1
vpextrq $1, %xmm1, %rcx
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'47': 15, '48': 16510, '44': 79, '45': 548, '00': 4677}
00 48 48 48 48 45 00 00 48 48 48 48 48 48 48 48 00 00 48 48 48 48 00 00 00 48 45 00 45 00 48 45 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 00 48 48 48 48 00 48 48 00 48 44 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 44 00 00 48 48 48 48 48 48 48 48 00 00 48 48 48 00 48 00 48 48 48 45 00 48 48 00 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 00 00 48 00 48 48 00 48 48 45 00 48 44 00 48 00 00 48 48 48 48 00 48 48 00 48 48 48 48 00 00 48 00 48 00 48 48 48 48 48 48 48 48 48 48 00 00 00 48 48 48 48 00 48 45 44 48 00 00 45 00 48 48 48 48 48 48 00 00 48 00 00 45 00 48 48 00 00 00 00 00 00 45 00 48 00 45 00 00 00 45 00 44 45 00 45 00 48 00 00 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 00 48 48 48 00 48 48 48 45 00 44 48 00 48 48 48 48 48 48 48 00 48 00 48 48 00 48 48 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 00 48 00 48 48 48 00 48 48 48 48 48 00 48 00 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 48 48 45 00 48 48 48 48 48 48 00 48 48 48 48 48 48 00 45 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 00 48 48 48 00 00 00 00 48 48 48 00 48 48 48 48 48 48 48 45 00 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 00 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 45 00 48 48 00 48 48 48 00 48 48 48 00 48 48 48 48 48 00 00 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 00 48 44 00 00 48 48 48 48 48 00 00 48 00 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 00 00 48 45 00 48 48 00 48 48 48 48 00 48 00 48 48 48 48 48 00 48 00 48 00 48 48 48 48 00 48 48 48 00 48 48 48 45 00 48 00 00 48 45 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 44 48 45 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 00 00 00 00 45 00 45 00 48 00 00 00 45 00 00 48 48 48 48 48 48 48 48 48 48 00 48 00 00 48 48 48 48 48 48 45 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 45 00 48 00 00 45 00 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 00 00 48 44 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 00 48 48 48 48 48 00 00 00 48 48 00 48 48 48 48 48 48 48 48 00 48 00 48 48 48 00 00 48 48 48 00 48 48 48 48 48 48 48 45 00 48 48 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 00
*/
