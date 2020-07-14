.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xc9c0, %rsi
sub %r8, %r8
mov (%rsi), %r9d
and $34876, %r8
lea addresses_normal_ht+0xd5c0, %rsi
lea addresses_WC_ht+0x140c0, %rdi
clflush (%rdi)
nop
nop
nop
dec %rbx
mov $5, %rcx
rep movsq
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x7640, %rsi
lea addresses_UC_ht+0x15564, %rdi
nop
nop
nop
nop
cmp %r8, %r8
mov $55, %rcx
rep movsb
add %rdi, %rdi
lea addresses_WT_ht+0x1e640, %rsi
nop
cmp $19547, %rax
movw $0x6162, (%rsi)
nop
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x43c0, %rbx
nop
nop
cmp $36873, %r8
and $0xffffffffffffffc0, %rbx
vmovntdqa (%rbx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x49c0, %rax
nop
xor %rsi, %rsi
movups (%rax), %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
and %rbx, %rbx
lea addresses_D_ht+0x63c0, %rsi
lea addresses_UC_ht+0x16bc0, %rdi
nop
nop
nop
and $28312, %r14
mov $59, %rcx
rep movsq
nop
and %rbx, %rbx
lea addresses_normal_ht+0x1dfc0, %r14
nop
nop
nop
nop
nop
sub $5215, %r9
and $0xffffffffffffffc0, %r14
vmovaps (%r14), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
and %rax, %rax
lea addresses_normal_ht+0x1c36c, %r9
nop
nop
nop
dec %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
and $38853, %rax
lea addresses_WC_ht+0xa700, %rcx
cmp $19026, %rdi
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
dec %r14
lea addresses_D_ht+0x8c40, %rax
nop
nop
nop
nop
nop
xor $50347, %rdi
mov (%rax), %r14
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0xf0e0, %rsi
lea addresses_A_ht+0x1f00, %rdi
clflush (%rdi)
nop
add %rax, %rax
mov $7, %rcx
rep movsl
nop
nop
nop
nop
cmp $26446, %rsi
lea addresses_WT_ht+0x4bc0, %rdi
xor $8285, %r9
mov (%rdi), %eax
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0xf1c0, %rsi
lea addresses_normal_ht+0xa360, %rdi
nop
nop
nop
nop
xor %r8, %r8
mov $22, %rcx
rep movsl
nop
add %rbx, %rbx
lea addresses_WT_ht+0x10554, %r9
nop
nop
nop
nop
nop
xor $7580, %r8
movups (%r9), %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
and $62912, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r15
push %rbp
push %rbx

// Store
mov $0xd9cc40000000658, %r15
nop
and $60373, %rbx
movb $0x51, (%r15)
nop
nop
nop
nop
cmp $42149, %r10

// Load
lea addresses_WC+0x1e5c4, %r10
cmp $28591, %r14
mov (%r10), %ebp
nop
nop
nop
nop
add $17050, %r12

// Store
mov $0xcc0, %r15
and %r11, %r11
movb $0x51, (%r15)
cmp $64319, %rbp

// Store
lea addresses_WT+0x1fc50, %rbp
nop
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm3
movups %xmm3, (%rbp)
nop
nop
nop
nop
nop
cmp $22782, %r14

// Store
lea addresses_PSE+0x18f1e, %rbx
sub $50753, %rbp
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_WC+0x1c6c0, %r15
nop
dec %r10
movl $0x51525354, (%r15)
nop
nop
nop
add $26084, %r11

// Faulty Load
lea addresses_WT+0x1bbc0, %r11
nop
nop
nop
nop
nop
xor $7105, %r12
mov (%r11), %rbp
lea oracles, %r11
and $0xff, %rbp
shlq $12, %rbp
mov (%r11,%rbp,1), %rbp
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'39': 14}
39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
