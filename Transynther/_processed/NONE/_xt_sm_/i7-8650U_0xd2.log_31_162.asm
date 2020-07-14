.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x4d12, %rcx
xor $9226, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
dec %r12
lea addresses_WC_ht+0x1de66, %rsi
lea addresses_WC_ht+0xfeda, %rdi
nop
nop
add %r11, %r11
mov $56, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $34618, %rsi
lea addresses_UC_ht+0x1ae66, %rsi
lea addresses_D_ht+0x8e06, %rdi
nop
nop
nop
add %r9, %r9
mov $5, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r11
lea addresses_A_ht+0x4c86, %rdi
nop
nop
nop
nop
add %r9, %r9
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_normal_ht+0xcba5, %r11
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r11), %cx
nop
nop
nop
nop
add $20938, %rsi
lea addresses_WT_ht+0x160ad, %rsi
nop
nop
nop
nop
dec %rdi
vmovups (%rsi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x75de, %rsi
lea addresses_D_ht+0xc8e6, %rdi
nop
nop
add %r12, %r12
mov $47, %rcx
rep movsq
sub %rdi, %rdi
lea addresses_A_ht+0x4a66, %rsi
lea addresses_normal_ht+0x4740, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $44335, %rbp
mov $24, %rcx
rep movsl
sub %rsi, %rsi
lea addresses_normal_ht+0x8206, %r9
nop
nop
nop
nop
xor $25408, %r12
movups (%r9), %xmm5
vpextrq $1, %xmm5, %r11
nop
nop
nop
add $20869, %r9
lea addresses_UC_ht+0xd3de, %r13
nop
sub $11944, %rbp
and $0xffffffffffffffc0, %r13
vmovaps (%r13), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
and %r9, %r9
lea addresses_WC_ht+0x1e054, %r13
nop
dec %rcx
movb (%r13), %r9b
nop
sub %r9, %r9
lea addresses_UC_ht+0x2ae6, %rdi
nop
nop
add $40202, %rsi
movb (%rdi), %r11b
nop
nop
nop
and $37332, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r8
push %r9
push %rbp

// Store
lea addresses_WC+0x6b66, %r11
nop
and $53536, %r8
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_WC+0x10f26, %r14
nop
nop
xor $63777, %r10
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%r14)
nop
nop
nop
nop
sub $32657, %r11

// Store
lea addresses_A+0x15666, %r15
nop
nop
nop
nop
nop
xor %r8, %r8
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
sub %r8, %r8

// Store
mov $0x64481c0000000e66, %r14
dec %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm5
vmovups %ymm5, (%r14)
nop
nop
nop
nop
add %r11, %r11

// Load
mov $0xe66, %r11
nop
nop
xor $64988, %r14
movb (%r11), %r10b
add %r8, %r8

// Store
lea addresses_WC+0xa266, %r11
add $978, %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r11)
add %r8, %r8

// Store
lea addresses_US+0x6a66, %r8
nop
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm5
vmovups %ymm5, (%r8)
nop
nop
nop
nop
add %rbp, %rbp

// Faulty Load
lea addresses_WC+0xa266, %r9
nop
cmp $35834, %r10
mov (%r9), %r14d
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'58': 31}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
