.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x124fd, %rsi
clflush (%rsi)
nop
nop
xor $53518, %rax
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm7
vpextrq $1, %xmm7, %rbx
nop
nop
nop
xor %rbp, %rbp
lea addresses_WC_ht+0xc75d, %r10
and $15610, %rax
mov $0x6162636465666768, %rbx
movq %rbx, (%r10)
nop
nop
nop
dec %rbx
lea addresses_A_ht+0xc2fd, %rsi
lea addresses_D_ht+0xfb7d, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %r13, %r13
mov $71, %rcx
rep movsl
nop
nop
cmp $21234, %rbx
lea addresses_WT_ht+0x1335d, %rbx
nop
nop
nop
xor $14578, %rsi
movw $0x6162, (%rbx)
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0x15801, %r13
nop
nop
nop
nop
nop
and $53759, %rax
mov (%r13), %bx
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0xe35d, %rdi
nop
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rdi)
sub %r13, %r13
lea addresses_A_ht+0x17ffd, %rsi
lea addresses_UC_ht+0xbd5d, %rdi
add %rax, %rax
mov $14, %rcx
rep movsb
nop
add %rdi, %rdi
lea addresses_normal_ht+0x1235d, %rdi
sub %rbx, %rbx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
inc %rax
lea addresses_D_ht+0x371d, %rdi
nop
nop
nop
nop
cmp %r10, %r10
movb (%rdi), %cl
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_UC_ht+0xa355, %r13
nop
nop
xor %rcx, %rcx
vmovups (%r13), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rax
nop
nop
nop
nop
add $65246, %rbp
lea addresses_WT_ht+0x1a03d, %rsi
lea addresses_WC_ht+0x8f4d, %rdi
nop
nop
add %rbp, %rbp
mov $28, %rcx
rep movsb
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x175d, %rsi
lea addresses_A+0x3b5d, %rdi
dec %r14
mov $3, %rcx
rep movsl
cmp $43141, %r14

// Store
lea addresses_D+0x75d, %rax
add $11736, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movups %xmm0, (%rax)
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_WC+0x1a375, %rax
nop
sub %rbx, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movntdq %xmm6, (%rax)
xor $11508, %r14

// Store
lea addresses_US+0x1e45d, %rbx
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm1
movups %xmm1, (%rbx)
nop
xor %rsi, %rsi

// Store
lea addresses_US+0x676b, %rcx
nop
nop
nop
xor $18527, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovntdq %ymm4, (%rcx)
nop
nop
sub $17059, %rcx

// Store
lea addresses_UC+0x7b5d, %r14
nop
nop
nop
add $63962, %rcx
movl $0x51525354, (%r14)

// Exception!!!
mov (0), %rsi
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_US+0x41dd, %rcx
nop
nop
nop
add %rsi, %rsi
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
sub $16258, %rsi

// Store
lea addresses_WC+0xc9dd, %rdi
nop
dec %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovaps %ymm0, (%rdi)
nop
nop
nop
sub $14277, %rbp

// Faulty Load
lea addresses_A+0x3b5d, %rcx
nop
nop
nop
nop
dec %rdi
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbp
lea oracles, %r14
and $0xff, %rbp
shlq $12, %rbp
mov (%r14,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'00': 1}
00
*/
