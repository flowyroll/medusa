.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x17a69, %rsi
lea addresses_A_ht+0x1625, %rdi
nop
inc %r11
mov $110, %rcx
rep movsl
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x134b7, %rax
nop
inc %r15
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
and $0xffffffffffffffc0, %rax
movntdq %xmm2, (%rax)
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x13a25, %r11
nop
nop
add $42525, %rax
mov (%r11), %esi
and $56134, %r11
lea addresses_WC_ht+0x12e25, %rcx
nop
nop
and %rbp, %rbp
movw $0x6162, (%rcx)
nop
nop
xor $34631, %rbp
lea addresses_A_ht+0xde25, %r11
nop
cmp $3045, %rsi
movw $0x6162, (%r11)
nop
nop
nop
and $17844, %rax
lea addresses_UC_ht+0x1506b, %rsi
lea addresses_D_ht+0x11ff0, %rdi
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $111, %rcx
rep movsw
nop
add $7616, %rax
lea addresses_WT_ht+0x14656, %rsi
lea addresses_D_ht+0x18a56, %rdi
nop
nop
sub %r15, %r15
mov $108, %rcx
rep movsw
sub $8563, %rcx
lea addresses_D_ht+0x5925, %rdi
nop
nop
nop
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
add $62512, %rcx
lea addresses_D_ht+0x12625, %rsi
lea addresses_WT_ht+0x409d, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r10, %r10
mov $50, %rcx
rep movsw
nop
nop
nop
nop
cmp $35681, %rsi
lea addresses_WC_ht+0x1de25, %r11
nop
nop
nop
nop
and %rax, %rax
mov (%r11), %r10
nop
nop
and $45209, %r15
lea addresses_WC_ht+0x19225, %r10
add %rdi, %rdi
movups (%r10), %xmm6
vpextrq $0, %xmm6, %rcx
nop
add %r10, %r10
lea addresses_WC_ht+0x8835, %rsi
lea addresses_normal_ht+0x49a5, %rdi
nop
nop
nop
nop
nop
add $63240, %r10
mov $67, %rcx
rep movsb
nop
nop
and $23053, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rax
push %rbp

// Store
mov $0xac5, %rax
nop
sub $4702, %r8
mov $0x5152535455565758, %r11
movq %r11, (%rax)
nop
dec %r8

// Load
mov $0xe25, %r14
nop
nop
add $38520, %r8
mov (%r14), %r15d
nop
nop
nop
nop
nop
sub $57315, %r14

// Store
lea addresses_normal+0x13825, %r14
nop
nop
nop
nop
nop
sub $52226, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm7
movups %xmm7, (%r14)
nop
nop
nop
nop
and %rbp, %rbp

// Store
mov $0x13496800000003a5, %r11
nop
xor %r15, %r15
mov $0x5152535455565758, %r8
movq %r8, (%r11)
nop
nop
sub $13297, %r15

// Faulty Load
lea addresses_WC+0x4625, %r14
nop
nop
nop
nop
nop
add %rax, %rax
vmovaps (%r14), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r11
lea oracles, %rax
and $0xff, %r11
shlq $12, %r11
mov (%rax,%r11,1), %r11
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'48': 31, '44': 18, '49': 2856, '00': 17119, '46': 1802, '08': 3}
00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 46 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 46 00 00 49 00 00 00 00 46 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 46 00 00 00 00 00 00 00 00 49 00 00 49 00 49 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 49 00 00 00 00 00 00 46 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 49 00 00 49 00 00 00 00 49 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 49 00 00 46 00 00 00 00 00 49 00 00 49 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 46 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 46 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 46 00 00 00 00 49 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 46 00 00 00 00 00 00 00 00 49 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 46 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 49 00 00 46 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 46 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 49 00 00 00 49 00 00 46 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 46 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 46 00 00 00 00 00 00 00 49 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 49 00 00 00 00 49 00 00 00 00 00
*/
