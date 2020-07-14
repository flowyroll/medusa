.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x127f2, %rsi
lea addresses_D_ht+0x187a2, %rdi
clflush (%rsi)
nop
nop
nop
nop
and $15276, %r9
mov $110, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_UC_ht+0xb9b2, %r13
nop
nop
add %rsi, %rsi
movb (%r13), %cl
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x13852, %rsi
lea addresses_D_ht+0x4e74, %rdi
nop
nop
nop
nop
nop
xor $43732, %r15
mov $66, %rcx
rep movsl
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x1a252, %rsi
lea addresses_WC_ht+0x16712, %rdi
add $826, %r11
mov $38, %rcx
rep movsb
nop
cmp %r11, %r11
lea addresses_WC_ht+0x12fd2, %rbp
nop
nop
nop
cmp $37174, %r11
movw $0x6162, (%rbp)
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0xa39a, %rbp
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm2
and $0xffffffffffffffc0, %rbp
movntdq %xmm2, (%rbp)
xor %rsi, %rsi
lea addresses_UC_ht+0x13db4, %rsi
lea addresses_UC_ht+0xdd33, %rdi
nop
nop
nop
nop
add %r11, %r11
mov $78, %rcx
rep movsq
nop
cmp %r15, %r15
lea addresses_WT_ht+0xd2a, %rsi
lea addresses_A_ht+0xc8aa, %rdi
clflush (%rsi)
nop
nop
nop
add $33072, %r15
mov $99, %rcx
rep movsb
nop
nop
nop
inc %r13
lea addresses_normal_ht+0x1240e, %rsi
lea addresses_WC_ht+0x575, %rdi
nop
add $61762, %r11
mov $21, %rcx
rep movsw
nop
nop
nop
xor %r13, %r13
lea addresses_WC_ht+0x49d2, %rsi
lea addresses_D_ht+0x6012, %rdi
inc %r11
mov $72, %rcx
rep movsw
nop
nop
nop
dec %rbp
lea addresses_UC_ht+0x1235e, %rcx
clflush (%rcx)
nop
nop
nop
xor %r11, %r11
movl $0x61626364, (%rcx)
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x9b12, %r9
nop
nop
nop
nop
and $63853, %rbp
mov $0x6162636465666768, %r15
movq %r15, %xmm4
movups %xmm4, (%r9)
nop
nop
nop
nop
xor $27564, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r9
push %rbx
push %rsi

// Store
lea addresses_WT+0x61d2, %r12
nop
nop
nop
nop
nop
xor %r9, %r9
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_WC+0xe5d2, %r9
nop
nop
nop
nop
dec %rbx
movl $0x51525354, (%r9)
nop
nop
and %rsi, %rsi

// Load
lea addresses_PSE+0x1e9d2, %r9
nop
nop
cmp $45618, %rbx
mov (%r9), %r11w
nop
nop
nop
nop
sub %r9, %r9

// Store
lea addresses_US+0xbc02, %rsi
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm3
movaps %xmm3, (%rsi)
nop
nop
nop
nop
nop
add $1964, %r15

// Load
mov $0x3834f00000000fd2, %rsi
nop
nop
nop
nop
sub $6353, %r13
vmovups (%rsi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbx
nop
nop
nop
add $57204, %r12

// Store
lea addresses_WT+0xd6fa, %r15
nop
add %r9, %r9
movw $0x5152, (%r15)
nop
nop
inc %r12

// Store
lea addresses_D+0x1cc52, %r9
nop
nop
nop
nop
and %r15, %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm6
movups %xmm6, (%r9)
nop
nop
nop
nop
cmp %r11, %r11

// Load
lea addresses_WC+0x1c3d2, %r13
clflush (%r13)
nop
add %r11, %r11
movb (%r13), %r15b
cmp %r13, %r13

// Store
lea addresses_WC+0xcdf4, %r11
nop
nop
nop
and %r12, %r12
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
sub $43092, %r15

// Faulty Load
lea addresses_normal+0xd5d2, %r11
nop
dec %r12
mov (%r11), %r13w
lea oracles, %r12
and $0xff, %r13
shlq $12, %r13
mov (%r12,%r13,1), %r13
pop %rsi
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 2, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'34': 41}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
