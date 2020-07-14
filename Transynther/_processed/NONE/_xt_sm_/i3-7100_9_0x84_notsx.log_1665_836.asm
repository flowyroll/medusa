.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x19a3a, %r12
nop
nop
nop
and $57837, %r8
vmovups (%r12), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
and $50459, %rbp
lea addresses_normal_ht+0x1edc, %r13
inc %rcx
movl $0x61626364, (%r13)
nop
sub $23171, %rbp
lea addresses_UC_ht+0xb41a, %r13
nop
nop
nop
nop
nop
cmp $1037, %r8
movb (%r13), %cl
nop
nop
nop
nop
dec %rbp
lea addresses_D_ht+0x4b96, %r12
clflush (%r12)
nop
nop
nop
nop
xor $45984, %r8
mov (%r12), %r13w
nop
add %rcx, %rcx
lea addresses_WC_ht+0x6e9a, %rsi
lea addresses_WC_ht+0x14786, %rdi
nop
nop
nop
nop
sub %rbp, %rbp
mov $98, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $3195, %r13
lea addresses_UC_ht+0x1107a, %r13
clflush (%r13)
nop
nop
nop
cmp $2506, %r8
mov (%r13), %r11w
nop
add %rsi, %rsi
lea addresses_D_ht+0x5f5a, %rsi
lea addresses_D_ht+0x1d062, %rdi
nop
cmp $8959, %r8
mov $88, %rcx
rep movsw
nop
nop
xor %r11, %r11
lea addresses_D_ht+0x1086a, %r8
sub $48562, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r8)
nop
nop
nop
nop
nop
add $21654, %r12
lea addresses_D_ht+0x1da5a, %rsi
lea addresses_UC_ht+0x12e1a, %rdi
nop
nop
nop
cmp $38228, %r12
mov $23, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r13
lea addresses_WT_ht+0x16aed, %r11
clflush (%r11)
nop
nop
nop
nop
add $57578, %rdi
movl $0x61626364, (%r11)
cmp $3317, %rbp
lea addresses_WC_ht+0x431a, %rsi
lea addresses_normal_ht+0x15282, %rdi
nop
nop
nop
nop
nop
and $33115, %rbp
mov $62, %rcx
rep movsb
nop
nop
xor $15807, %r13
lea addresses_normal_ht+0x1725a, %rsi
lea addresses_UC_ht+0x13d5a, %rdi
nop
nop
nop
nop
xor $34453, %r13
mov $21, %rcx
rep movsl
nop
nop
nop
nop
sub %r8, %r8
lea addresses_UC_ht+0x1793c, %r13
nop
cmp %r12, %r12
movl $0x61626364, (%r13)
add $62066, %rsi
lea addresses_UC_ht+0x4f5a, %r8
add $22040, %r12
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
nop
nop
nop
sub $65523, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rax
push %rbp
push %rdi
push %rdx

// Store
lea addresses_D+0xb65a, %r12
nop
nop
nop
nop
nop
dec %rbp
movl $0x51525354, (%r12)
nop
nop
nop
and %rdx, %rdx

// Store
mov $0x45a, %rax
nop
nop
nop
nop
cmp $22195, %r10
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rax)
nop
nop
nop
and $29648, %r12

// Store
lea addresses_D+0xf85a, %rax
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rax)
sub $64899, %r14

// Load
lea addresses_US+0x1d53a, %r12
nop
nop
nop
xor %r14, %r14
mov (%r12), %eax
nop
nop
dec %rdi

// Store
lea addresses_A+0x90cc, %rbp
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movups %xmm7, (%rbp)
nop
nop
nop
nop
add $61154, %r12

// Store
lea addresses_A+0x85a, %rbp
nop
nop
nop
nop
sub %rdi, %rdi
movl $0x51525354, (%rbp)
nop
dec %rax

// Store
lea addresses_US+0x515a, %r12
xor $44897, %r10
movw $0x5152, (%r12)
nop
nop
nop
xor $56346, %rax

// Store
lea addresses_normal+0xc05a, %rax
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_normal+0x6a3a, %r10
xor %rbp, %rbp
movb $0x51, (%r10)
nop
nop
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_WC+0x1425a, %rdx
sub %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movups %xmm4, (%rdx)
add $38143, %rax

// Faulty Load
lea addresses_A+0x85a, %rax
nop
nop
nop
sub $63646, %r12
mov (%rax), %rdx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'54': 1665}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
