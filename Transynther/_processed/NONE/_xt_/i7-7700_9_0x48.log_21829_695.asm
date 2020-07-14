.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x9666, %r11
nop
nop
xor $40560, %r9
movb $0x61, (%r11)
cmp %r12, %r12
lea addresses_WC_ht+0x2166, %rsi
lea addresses_normal_ht+0x15766, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $19, %rcx
rep movsw
nop
nop
nop
nop
and $51387, %rdi
lea addresses_WT_ht+0x10066, %rsi
lea addresses_D_ht+0x1eca6, %rdi
nop
nop
nop
nop
sub %r12, %r12
mov $29, %rcx
rep movsq
nop
cmp $14081, %r8
lea addresses_WT_ht+0x12566, %r9
nop
nop
nop
nop
nop
cmp %r12, %r12
vmovups (%r9), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
nop
nop
nop
and $26058, %r9
lea addresses_D_ht+0x6ac6, %r11
nop
nop
sub $45520, %r8
movups (%r11), %xmm3
vpextrq $1, %xmm3, %r12
nop
add $14869, %rcx
lea addresses_UC_ht+0x1cc1c, %rsi
lea addresses_WC_ht+0x18966, %rdi
nop
nop
nop
nop
nop
xor $64387, %r11
mov $118, %rcx
rep movsl
nop
sub %rax, %rax
lea addresses_WT_ht+0x1edac, %r11
nop
nop
nop
add %r8, %r8
mov $0x6162636465666768, %rax
movq %rax, %xmm1
and $0xffffffffffffffc0, %r11
vmovntdq %ymm1, (%r11)
nop
dec %r8
lea addresses_WC_ht+0x7d66, %rdi
nop
nop
nop
nop
sub $30867, %rcx
mov $0x6162636465666768, %r12
movq %r12, %xmm1
and $0xffffffffffffffc0, %rdi
vmovaps %ymm1, (%rdi)
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0xc79c, %rsi
lea addresses_WC_ht+0x141d5, %rdi
nop
nop
nop
inc %r9
mov $33, %rcx
rep movsl
cmp $19536, %rcx
lea addresses_WT_ht+0x1a766, %r9
inc %r11
mov $0x6162636465666768, %r8
movq %r8, (%r9)
nop
xor %r11, %r11
lea addresses_D_ht+0x67c2, %r9
nop
nop
nop
nop
and $885, %rax
mov (%r9), %esi
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x30a6, %rsi
nop
nop
nop
add %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
nop
nop
nop
xor $23000, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WT+0x17066, %rbp
clflush (%rbp)
nop
nop
nop
nop
dec %rcx
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
xor $10627, %rbp

// Store
lea addresses_normal+0x1f366, %r13
nop
nop
xor $3728, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
movups %xmm6, (%r13)
nop
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_US+0xe866, %rsi
nop
nop
and $21213, %rdx
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
dec %rsi

// Store
lea addresses_RW+0x3466, %r10
nop
nop
add $51790, %rsi
movl $0x51525354, (%r10)
nop
nop
nop
nop
xor $26917, %rbp

// Store
mov $0x3cc8ef0000000730, %rbp
nop
nop
nop
nop
and %rdx, %rdx
movb $0x51, (%rbp)
sub %r10, %r10

// Store
lea addresses_normal+0xee5e, %rcx
nop
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
nop
nop
sub %r15, %r15

// Faulty Load
lea addresses_PSE+0x1fb66, %rsi
nop
nop
add $14551, %rdx
mov (%rsi), %r13w
lea oracles, %rbp
and $0xff, %r13
shlq $12, %r13
mov (%rbp,%r13,1), %r13
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
