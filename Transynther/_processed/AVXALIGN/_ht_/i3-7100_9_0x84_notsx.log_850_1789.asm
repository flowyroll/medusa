.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xf638, %rax
nop
nop
nop
and $53775, %r8
mov $0x6162636465666768, %r9
movq %r9, %xmm0
and $0xffffffffffffffc0, %rax
vmovaps %ymm0, (%rax)
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0xbe38, %r15
nop
inc %rsi
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
sub $13409, %rsi
lea addresses_normal_ht+0x586f, %r9
nop
nop
nop
nop
sub $2430, %rcx
movb (%r9), %r15b
nop
nop
nop
nop
dec %r15
lea addresses_D_ht+0x1e7b0, %rcx
nop
nop
sub $54288, %r15
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_A_ht+0x1b438, %rax
nop
nop
nop
nop
add %rcx, %rcx
movw $0x6162, (%rax)
nop
nop
nop
nop
nop
sub $25511, %r14
lea addresses_D_ht+0x8ac8, %r14
nop
dec %r9
mov (%r14), %rsi
nop
nop
nop
nop
nop
dec %r9
lea addresses_UC_ht+0x17768, %r14
nop
nop
nop
nop
sub %rsi, %rsi
movb $0x61, (%r14)
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x5f78, %r15
nop
nop
nop
cmp %r14, %r14
movups (%r15), %xmm6
vpextrq $0, %xmm6, %r8
inc %r15
lea addresses_D_ht+0x171fc, %rcx
nop
nop
nop
nop
xor $47409, %r15
movw $0x6162, (%rcx)
nop
xor %r15, %r15
lea addresses_A_ht+0x194e2, %rsi
lea addresses_WT_ht+0x102f8, %rdi
nop
nop
nop
nop
sub $53418, %r8
mov $29, %rcx
rep movsl
xor $37346, %rax
lea addresses_WT_ht+0x2a38, %rax
clflush (%rax)
nop
nop
sub $1592, %r8
mov $0x6162636465666768, %r15
movq %r15, %xmm3
movups %xmm3, (%rax)
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x4608, %rdi
nop
nop
nop
nop
add $18823, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
and $0xffffffffffffffc0, %rdi
movaps %xmm0, (%rdi)
nop
nop
and %r15, %r15
lea addresses_A_ht+0x7cd9, %rsi
nop
inc %r14
movups (%rsi), %xmm6
vpextrq $1, %xmm6, %r15
nop
add %r15, %r15
lea addresses_D_ht+0x8638, %r15
nop
nop
nop
and $51189, %rdi
movb $0x61, (%r15)
nop
nop
nop
nop
sub $31638, %r15
lea addresses_A_ht+0x1a30a, %rsi
xor $46199, %r8
mov (%rsi), %r9
nop
nop
nop
cmp $47617, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rcx

// Store
mov $0x5eb5fe0000000e38, %r9
nop
nop
nop
and $33632, %r8
mov $0x5152535455565758, %rcx
movq %rcx, (%r9)

// Exception!!!
nop
mov (0), %r13
cmp %r11, %r11

// Faulty Load
mov $0x8153d0000000638, %r11
clflush (%r11)
nop
nop
nop
nop
add $47993, %r8
vmovntdqa (%r11), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'46': 85, '45': 765}
45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 46 45 45 45 46 46 46 45 46 46 45 45 45 46 46 45 45 45 46 45 46 46 45 46 45 46 45 45 46 46 46 46 46 46 46 45 46 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 46 45 45 45 46 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 46 45 46 45 46 45 46 46 45 45 46 45 45 45 45 45 45 45 46 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 46 46 45 46 46 46 45 46 45 46 45 46 46 45 46 45 46 46 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 46 45 45 45 45 46 45 46 45 46 45 45 46 46 46 45 46 45 46 45 45 45 46 45 45 46 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 46 46 45 46 45 45 46 45 46 46 46 45 45 46 45 45 45 45 46 46 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45
*/
