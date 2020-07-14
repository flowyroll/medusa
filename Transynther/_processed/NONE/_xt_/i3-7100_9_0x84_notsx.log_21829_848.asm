.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xcaa5, %rbx
nop
nop
xor $51717, %r8
mov (%rbx), %r9w
nop
add %rsi, %rsi
lea addresses_WT_ht+0x1ebc9, %r9
nop
nop
nop
nop
add %r13, %r13
and $0xffffffffffffffc0, %r9
movntdqa (%r9), %xmm0
vpextrq $0, %xmm0, %rdi
nop
sub %r8, %r8
lea addresses_D_ht+0xb5a5, %r8
nop
cmp %rax, %rax
mov (%r8), %esi
nop
nop
nop
add $51413, %rbx
lea addresses_D_ht+0x15b25, %r9
nop
nop
nop
nop
nop
xor %r8, %r8
mov (%r9), %eax
nop
cmp %rax, %rax
lea addresses_WC_ht+0x14ec5, %r13
nop
dec %r9
movl $0x61626364, (%r13)
nop
nop
nop
and $57104, %r13
lea addresses_A_ht+0xa135, %rdi
nop
nop
dec %r9
mov (%rdi), %r8w
nop
nop
nop
inc %rax
lea addresses_normal_ht+0x1ba5, %rsi
lea addresses_UC_ht+0x1b1a5, %rdi
nop
and %r13, %r13
mov $32, %rcx
rep movsl
nop
inc %rsi
lea addresses_D_ht+0x97a5, %r8
nop
nop
nop
add %r13, %r13
and $0xffffffffffffffc0, %r8
vmovntdqa (%r8), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r9
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x1985, %rsi
lea addresses_A_ht+0xe365, %rdi
clflush (%rsi)
nop
nop
nop
xor %rax, %rax
mov $74, %rcx
rep movsl
nop
sub %r13, %r13
lea addresses_WC_ht+0xc835, %rax
nop
and $46498, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%rax)
dec %rsi
lea addresses_WC_ht+0x15a25, %rsi
lea addresses_UC_ht+0x2575, %rdi
nop
nop
sub $41710, %rbx
mov $51, %rcx
rep movsl
nop
nop
nop
nop
nop
and $65066, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rax
push %rdx
push %rsi

// Store
lea addresses_A+0x15ad, %r11
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, (%r11)
xor %r12, %r12

// Store
lea addresses_A+0x14be1, %rax
nop
nop
nop
nop
and $18384, %r10
mov $0x5152535455565758, %r11
movq %r11, (%rax)
nop
nop
nop
add %r10, %r10

// Store
lea addresses_PSE+0x1b65, %rsi
nop
nop
nop
cmp $51993, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
nop
nop
and $48004, %r10

// Load
lea addresses_US+0x12055, %rax
nop
dec %r15
mov (%rax), %dx
nop
nop
nop
nop
cmp $6895, %r11

// Load
lea addresses_UC+0xf92d, %r15
nop
nop
nop
nop
sub $19324, %rsi
movb (%r15), %r10b
dec %r11

// Store
lea addresses_RW+0xcb95, %r11
nop
nop
nop
nop
nop
xor $40356, %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm6
movups %xmm6, (%r11)
nop
nop
nop
dec %r15

// Store
mov $0x1f5, %r12
nop
nop
dec %r10
movl $0x51525354, (%r12)
nop
nop
nop
nop
sub $43522, %rdx

// Load
lea addresses_RW+0x7fa5, %r10
nop
nop
nop
cmp %rsi, %rsi
mov (%r10), %r12
nop
nop
dec %r12

// Store
lea addresses_WT+0x1eb45, %r10
nop
nop
nop
nop
sub $51334, %r15
movb $0x51, (%r10)
xor %rsi, %rsi

// Store
lea addresses_UC+0x1f315, %rsi
add $28674, %r11
movl $0x51525354, (%rsi)
add $42705, %rsi

// Load
lea addresses_UC+0x1c4a5, %rsi
nop
nop
nop
and $46028, %rax
movb (%rsi), %r12b
nop
xor $17568, %r12

// Store
mov $0x6df41d0000000b45, %rdx
add $46177, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%rdx)
nop
and %r15, %r15

// Store
lea addresses_PSE+0x1c205, %rdx
add %r11, %r11
movw $0x5152, (%rdx)
nop
nop
inc %r10

// Faulty Load
lea addresses_RW+0x7fa5, %r11
nop
nop
nop
nop
nop
sub %r15, %r15
mov (%r11), %dx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rax
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
