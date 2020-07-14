.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x66c, %r9
nop
and $41277, %rsi
movups (%r9), %xmm0
vpextrq $0, %xmm0, %rbp
nop
xor $51586, %r14
lea addresses_UC_ht+0x2390, %r9
nop
nop
nop
nop
and $43916, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
and $0xffffffffffffffc0, %r9
vmovntdq %ymm6, (%r9)
xor $11861, %r11
lea addresses_A_ht+0x16fe8, %rsi
lea addresses_D_ht+0x16630, %rdi
nop
nop
dec %r15
mov $80, %rcx
rep movsq
nop
nop
nop
nop
inc %r15
lea addresses_WT_ht+0x13930, %rsi
lea addresses_D_ht+0x8520, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $33460, %r9
mov $59, %rcx
rep movsl
xor $20423, %r14
lea addresses_A_ht+0x1cd90, %r11
nop
add %rbp, %rbp
mov (%r11), %r15d
nop
nop
nop
cmp %r14, %r14
lea addresses_normal_ht+0xe760, %r15
clflush (%r15)
and %r14, %r14
movups (%r15), %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
nop
nop
sub $837, %r15
lea addresses_UC_ht+0x7310, %rbp
clflush (%rbp)
sub %r9, %r9
mov $0x6162636465666768, %r14
movq %r14, (%rbp)
nop
nop
inc %r9
lea addresses_normal_ht+0x2d30, %r14
nop
nop
nop
nop
dec %r15
mov (%r14), %r9d
nop
sub %r14, %r14
lea addresses_A_ht+0xbd90, %rsi
lea addresses_UC_ht+0x1be50, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
mov $68, %rcx
rep movsb
nop
and %rcx, %rcx
lea addresses_WC_ht+0x13f90, %rsi
lea addresses_UC_ht+0xcd10, %rdi
nop
nop
nop
nop
cmp $65214, %r9
mov $11, %rcx
rep movsq
nop
nop
nop
xor %rbp, %rbp
lea addresses_normal_ht+0xf020, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%rdi)
nop
and $51344, %r11
lea addresses_WT_ht+0x1d190, %r9
nop
nop
xor $19592, %rcx
mov (%r9), %di
nop
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x17190, %rsi
lea addresses_normal_ht+0x11190, %rdi
nop
nop
nop
nop
and $28334, %r9
mov $48, %rcx
rep movsb
dec %rcx
lea addresses_A_ht+0x159e0, %rsi
lea addresses_WT_ht+0x18190, %rdi
clflush (%rsi)
xor $14803, %r9
mov $123, %rcx
rep movsl
nop
nop
dec %r9
lea addresses_normal_ht+0x7cb8, %rsi
lea addresses_A_ht+0x1d330, %rdi
nop
add %r15, %r15
mov $12, %rcx
rep movsl
nop
nop
and $5904, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_US+0x151d0, %rsi
lea addresses_UC+0x6790, %rdi
nop
add %rbx, %rbx
mov $30, %rcx
rep movsw
nop
nop
nop
inc %rax

// Load
lea addresses_US+0x10cf0, %rcx
nop
nop
sub %r9, %r9
vmovntdqa (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
nop
nop
nop
nop
nop
sub $2348, %rbx

// Store
lea addresses_D+0xf670, %rsi
nop
nop
nop
add %rax, %rax
movl $0x51525354, (%rsi)
and $41175, %rdi

// Store
mov $0x10f73d0000000990, %r11
nop
add $35734, %rax
mov $0x5152535455565758, %r9
movq %r9, (%r11)
nop
xor %r11, %r11

// Faulty Load
lea addresses_US+0x6990, %rcx
nop
nop
nop
sub $59066, %r11
movups (%rcx), %xmm5
vpextrq $1, %xmm5, %rbx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'68': 2, 'ff': 1, '22': 2, '2a': 13, '44': 218, '00': 12445, '40': 1, '45': 9145, '08': 2}
00 00 45 00 00 00 45 00 45 45 45 00 45 00 00 00 45 45 00 45 45 45 00 00 00 45 45 00 00 45 45 45 45 45 00 45 00 00 00 00 45 45 45 45 45 00 00 00 00 45 00 00 45 00 00 45 00 00 00 00 00 00 00 45 00 00 45 45 45 00 45 45 00 45 00 45 00 00 00 00 45 45 00 00 00 45 00 45 00 45 00 00 00 00 45 00 00 45 45 00 00 00 00 00 00 00 45 00 00 45 45 00 45 00 45 45 00 00 00 00 00 00 45 00 00 45 00 45 45 00 45 45 45 45 45 45 00 45 00 00 00 00 00 00 45 45 45 00 00 00 00 00 00 45 00 45 45 45 45 00 00 45 00 00 00 00 00 00 44 45 00 00 45 45 45 45 45 45 00 45 45 45 45 00 45 00 00 00 45 00 45 00 45 45 45 45 00 45 00 00 00 45 00 45 45 00 2a 00 00 45 00 00 00 45 45 00 45 00 45 45 00 00 00 00 45 00 00 45 00 45 45 45 00 00 00 45 45 00 45 00 00 45 00 45 45 45 45 00 44 00 45 00 45 45 00 45 45 00 45 00 45 45 45 00 45 00 00 00 45 00 45 45 45 45 00 45 00 45 00 00 00 00 00 45 44 45 45 44 00 00 00 45 45 45 00 45 00 45 00 45 00 45 00 00 45 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 45 45 00 00 45 45 45 00 00 00 45 00 00 45 45 00 00 45 45 45 00 45 00 45 45 00 00 45 44 45 45 00 00 45 45 45 00 45 00 45 45 00 00 45 00 45 00 45 45 45 45 00 45 00 00 00 00 00 45 45 00 45 00 00 00 00 45 45 00 00 45 00 00 45 00 45 45 45 45 00 45 45 00 45 00 00 00 45 00 45 45 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 45 45 00 45 00 00 00 45 45 00 00 00 45 00 45 00 00 45 00 00 45 45 45 00 44 45 45 00 00 00 45 45 00 00 45 00 45 00 45 45 00 45 00 45 00 00 00 45 45 00 00 45 00 00 00 00 45 45 00 00 00 00 45 00 00 00 45 00 00 45 45 45 45 00 00 45 00 00 45 00 45 45 45 45 45 00 00 45 45 00 00 00 45 45 45 45 00 45 45 00 00 45 45 45 00 00 00 00 00 45 00 45 00 45 45 00 45 45 45 45 00 00 45 00 00 00 00 00 45 45 00 00 45 00 00 45 00 45 00 00 00 00 00 00 45 00 45 45 00 45 45 45 45 00 00 45 00 45 45 00 45 00 00 00 45 44 00 00 45 45 00 00 00 00 45 00 00 00 45 00 00 00 00 45 45 45 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 00 45 00 00 00 45 45 00 45 00 00 00 00 00 45 45 45 00 00 00 45 00 45 00 00 00 00 45 00 00 00 00 45 45 00 45 00 45 00 00 45 45 45 00 00 00 00 00 00 00 00 45 00 45 45 00 00 00 00 00 00 00 45 00 45 00 45 45 45 45 00 00 00 00 45 00 00 00 00 45 45 45 45 00 00 00 45 45 00 00 45 00 00 45 45 00 00 00 45 00 45 00 45 00 45 45 00 00 45 45 00 00 45 45 45 00 00 45 45 45 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 45 00 45 45 00 45 45 45 00 00 00 00 44 00 00 00 45 00 45 45 45 00 00 45 00 45 00 45 00 00 00 00 00 00 00 45 00 45 45 00 00 00 00 00 00 45 45 00 45 00 00 45 00 45 00 00 45 45 00 45 00 00 45 00 45 45 45 00 00 44 00 00 00 00 45 45 00 00 00 00 45 00 45 00 00 00 45 45 00 00 00 00 45 00 45 00 00 45 45 00 45 00 00 00 45 00 00 45 45 00 00 00 00 45 00 45 45 45 45 45 00 45 00 45 00 45 45 00 45 45 00 00 45 00 00 00 00 45 45 00 00 00 00 00 45 45 00 45 45 45 00 00 45 00 45 45 00 00 00 45 00 45 00 45 45 45 45 00 45 45 00 00 00 00 00 00 00 08 00 00 45 45 45 00 00 00 00 45 00 45 00 45 00 00 45 45 00 45 00 45 00 44
*/
