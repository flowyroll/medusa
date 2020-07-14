.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1c91b, %rsi
lea addresses_A_ht+0xa31b, %rdi
add $65198, %r13
mov $115, %rcx
rep movsw
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x1b35b, %r8
nop
nop
nop
cmp $63952, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
and $0xffffffffffffffc0, %r8
vmovntdq %ymm6, (%r8)
nop
nop
sub $44501, %rbx
lea addresses_normal_ht+0xad1b, %rsi
lea addresses_D_ht+0xcf1b, %rdi
clflush (%rsi)
nop
nop
nop
inc %r11
mov $56, %rcx
rep movsw
dec %r13
lea addresses_WC_ht+0x1eac9, %r8
nop
nop
and %r13, %r13
vmovups (%r8), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbx
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x1355b, %rsi
nop
nop
nop
nop
nop
xor %rbx, %rbx
movl $0x61626364, (%rsi)
nop
nop
nop
cmp $43854, %rbx
lea addresses_WT_ht+0x531b, %rsi
lea addresses_WT_ht+0x15b1b, %rdi
nop
nop
nop
nop
dec %rbp
mov $62, %rcx
rep movsq
nop
nop
nop
add %r8, %r8
lea addresses_WT_ht+0x1ab1b, %rsi
lea addresses_WT_ht+0x1e31b, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $112, %rcx
rep movsl
nop
nop
nop
and $58409, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rdi

// Load
lea addresses_RW+0xe59b, %r12
nop
and $27028, %rdi
mov (%r12), %r10w
nop
nop
dec %rdi

// Store
mov $0xc3424000000008b, %r13
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r13)
nop
nop
dec %r14

// Store
mov $0x21159f000000035b, %r10
nop
nop
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%r10)
nop
nop
add %r14, %r14

// Store
lea addresses_normal+0x1b884, %r15
nop
cmp %r13, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
inc %r10

// Store
mov $0x580fc000000031b, %r14
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm7
vmovups %ymm7, (%r14)
nop
nop
nop
add $4428, %r15

// Faulty Load
lea addresses_A+0x1931b, %rcx
xor $61272, %r13
mov (%rcx), %r15w
lea oracles, %r10
and $0xff, %r15
shlq $12, %r15
mov (%r10,%r15,1), %r15
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'58': 91}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
