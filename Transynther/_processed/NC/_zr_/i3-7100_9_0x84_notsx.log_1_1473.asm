.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x18e97, %r14
nop
nop
nop
xor %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
xor $44002, %rbp
lea addresses_WC_ht+0x43d7, %r11
nop
add %r9, %r9
vmovups (%r11), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r8
nop
nop
nop
nop
nop
inc %r11
lea addresses_WC_ht+0x14217, %rdi
xor $39304, %r14
movb (%rdi), %r8b
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_WT_ht+0x217, %rdi
nop
nop
xor $14461, %r14
movw $0x6162, (%rdi)
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x1ae7e, %rsi
lea addresses_D_ht+0x324f, %rdi
nop
cmp %r8, %r8
mov $69, %rcx
rep movsb
nop
dec %r8
lea addresses_D_ht+0x4c97, %rbp
nop
nop
inc %rsi
mov (%rbp), %r14d
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_WT_ht+0xa097, %rsi
xor $30627, %rdi
mov (%rsi), %r10w
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0xa697, %r14
add %rcx, %rcx
mov (%r14), %r9
nop
nop
and %r10, %r10
lea addresses_UC_ht+0x15097, %r8
clflush (%r8)
cmp $1274, %rbp
mov $0x6162636465666768, %r9
movq %r9, %xmm1
movups %xmm1, (%r8)
nop
nop
inc %r11
lea addresses_WT_ht+0x1aaae, %r14
nop
cmp $41622, %rsi
mov (%r14), %r8w
sub $33173, %rdi
lea addresses_normal_ht+0x1b2d7, %r9
nop
nop
add $54915, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r9)
nop
cmp $52258, %rsi
lea addresses_A_ht+0xffa8, %rcx
nop
nop
nop
mfence
movb (%rcx), %r9b
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x1ec17, %r11
nop
nop
xor $9032, %rcx
movb (%r11), %r10b
nop
and $48833, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %r9
push %rsi

// Store
lea addresses_WT+0xd976, %r14
xor $58002, %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r14)
dec %r10

// Store
lea addresses_WT+0x9d9, %r10
nop
xor %r15, %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovups %ymm2, (%r10)
nop
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_normal+0x1b897, %r11
clflush (%r11)
inc %r10
mov $0x5152535455565758, %r15
movq %r15, (%r11)
nop
cmp $57852, %r14

// Store
lea addresses_UC+0x18f17, %r9
nop
nop
nop
nop
inc %rsi
movl $0x51525354, (%r9)
nop
cmp $47387, %r9

// Store
lea addresses_normal+0x16f09, %r14
xor $914, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%r14)
nop
nop
nop
nop
add %r15, %r15

// Store
lea addresses_UC+0x6297, %r10
nop
nop
nop
nop
add %rsi, %rsi
movb $0x51, (%r10)
nop
nop
nop
inc %r10

// Store
lea addresses_US+0x19f97, %r13
nop
nop
sub $11266, %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovaps %ymm4, (%r13)
nop
nop
sub $17018, %r14

// Store
lea addresses_PSE+0x2497, %r14
nop
nop
nop
and %r10, %r10
movw $0x5152, (%r14)
cmp $50352, %r11

// Load
lea addresses_WT+0x18041, %r14
clflush (%r14)
nop
nop
nop
cmp %r9, %r9
movb (%r14), %r10b
nop
nop
nop
xor %r11, %r11

// Store
mov $0x7271910000000d97, %rsi
nop
nop
nop
nop
cmp $7317, %r14
mov $0x5152535455565758, %r11
movq %r11, %xmm0
movntdq %xmm0, (%rsi)
cmp $7391, %r9

// Store
lea addresses_RW+0xb1cf, %r14
nop
nop
nop
nop
xor $14822, %rsi
movl $0x51525354, (%r14)
nop
cmp $20828, %r15

// Store
lea addresses_normal+0x1d97, %r15
xor %r11, %r11
movb $0x51, (%r15)
nop
nop
nop
nop
nop
and %r13, %r13

// Faulty Load
mov $0x6792330000000897, %r11
nop
add %r13, %r13
movups (%r11), %xmm1
vpextrq $1, %xmm1, %r14
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rsi
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 2, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 1}
00
*/
