.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x8d72, %rsi
lea addresses_UC_ht+0x15942, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $16, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $21967, %r11
lea addresses_WC_ht+0xc71c, %rsi
lea addresses_A_ht+0xe71c, %rdi
clflush (%rsi)
nop
nop
sub %rdx, %rdx
mov $28, %rcx
rep movsb
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_WT_ht+0x1c2b9, %rdi
nop
nop
nop
inc %r15
vmovups (%rdi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x1c12c, %rdi
nop
nop
nop
xor %rbx, %rbx
movw $0x6162, (%rdi)
nop
nop
add $1221, %rcx
lea addresses_WC_ht+0xb81c, %rsi
nop
nop
nop
nop
xor %r15, %r15
movl $0x61626364, (%rsi)
xor %r11, %r11
lea addresses_UC_ht+0xba7c, %r15
nop
nop
nop
add %rdx, %rdx
mov (%r15), %r11d
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0xc7f8, %rcx
nop
nop
and %rsi, %rsi
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %r11
nop
nop
nop
nop
nop
add $11486, %rdi
lea addresses_WT_ht+0x1cd1c, %rsi
lea addresses_A_ht+0x1a61c, %rdi
nop
nop
nop
nop
dec %rbx
mov $110, %rcx
rep movsw
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0xf264, %r15
nop
nop
nop
nop
add $14032, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r15)
nop
nop
and $11478, %r15
lea addresses_WC_ht+0xd51c, %rdi
cmp %rdx, %rdx
mov (%rdi), %rcx
nop
inc %rdx
lea addresses_UC_ht+0x1261c, %rsi
clflush (%rsi)
nop
nop
nop
nop
cmp $59896, %r15
movl $0x61626364, (%rsi)
nop
cmp $36862, %rbx
lea addresses_D_ht+0x1a21c, %rsi
lea addresses_normal_ht+0x10408, %rdi
clflush (%rdi)
nop
and $50327, %r15
mov $107, %rcx
rep movsq
nop
nop
dec %rbx
lea addresses_D_ht+0x17182, %r15
nop
inc %r11
movb (%r15), %cl
nop
nop
nop
nop
nop
dec %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rax
push %rbp

// Store
lea addresses_RW+0x411c, %rax
nop
nop
nop
nop
nop
add %r15, %r15
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
add %r12, %r12

// Load
lea addresses_WT+0x1bd1c, %r11
nop
nop
and %rbp, %rbp
mov (%r11), %r12w
nop
nop
add $63518, %rbp

// Store
lea addresses_RW+0x3e58, %r12
nop
nop
xor %r10, %r10
movw $0x5152, (%r12)
nop
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_D+0xa98c, %r12
nop
nop
nop
nop
and %rbp, %rbp
movl $0x51525354, (%r12)
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_UC+0x120d, %rbp
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %rax
movq %rax, (%rbp)
nop
nop
nop
nop
nop
add $53879, %rax

// Store
lea addresses_US+0xcb1c, %r15
nop
and %rbp, %rbp
movl $0x51525354, (%r15)
xor $63154, %r15

// Load
lea addresses_WT+0x171c, %r15
nop
nop
nop
nop
nop
xor %r9, %r9
movb (%r15), %r10b
nop
nop
nop
nop
inc %r12

// Load
mov $0x26696d0000000b1c, %r10
nop
nop
nop
sub $18258, %r9
movups (%r10), %xmm1
vpextrq $0, %xmm1, %r15
nop
nop
nop
cmp %rbp, %rbp

// Faulty Load
lea addresses_WT+0x1bd1c, %r11
nop
nop
nop
nop
add $41637, %r10
mov (%r11), %rax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': True, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
