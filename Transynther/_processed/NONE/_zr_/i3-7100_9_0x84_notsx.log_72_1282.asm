.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x8e8a, %r8
nop
nop
nop
nop
xor $14964, %r12
mov (%r8), %r14d
nop
nop
nop
sub $48196, %r14
lea addresses_normal_ht+0x1d5aa, %rsi
lea addresses_D_ht+0x2e5c, %rdi
nop
nop
cmp %r14, %r14
mov $79, %rcx
rep movsq
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x1e8a, %rcx
nop
cmp %rbx, %rbx
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
inc %rsi
lea addresses_WC_ht+0x1e68a, %r14
nop
sub %rbx, %rbx
vmovups (%r14), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
nop
nop
add $63178, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rbp
push %rdi
push %rdx

// Store
lea addresses_RW+0x1648a, %r11
nop
nop
nop
nop
dec %rdx
movw $0x5152, (%r11)
nop
nop
nop
nop
xor %r10, %r10

// Store
mov $0x68a, %r9
nop
nop
nop
nop
nop
xor $25509, %rdx
movw $0x5152, (%r9)
cmp %r10, %r10

// Store
lea addresses_RW+0x1b86a, %rdi
nop
nop
nop
add $34713, %r9
movw $0x5152, (%rdi)
nop
nop
nop
and %r10, %r10

// Load
lea addresses_A+0x3e8a, %r11
nop
cmp %rbp, %rbp
mov (%r11), %r10w
add %r11, %r11

// Store
lea addresses_WC+0x184ca, %r9
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovups %ymm0, (%r9)
and $19333, %rdx

// Load
lea addresses_RW+0x19d99, %rbp
nop
nop
nop
cmp %r9, %r9
mov (%rbp), %rdi
nop
dec %rdx

// Store
lea addresses_A+0x1a28a, %rdx
nop
nop
nop
nop
nop
xor $49792, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%rdx)
nop
nop
nop
nop
nop
sub $22074, %rbp

// Faulty Load
lea addresses_A+0x3e8a, %rbp
nop
nop
nop
nop
xor $13168, %r11
mov (%rbp), %dx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 72}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
