.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x160c5, %rsi
lea addresses_D_ht+0x13e45, %rdi
nop
nop
xor %r9, %r9
mov $40, %rcx
rep movsb
sub $53892, %rax
lea addresses_WT_ht+0x3c5, %r12
nop
nop
sub %r15, %r15
mov (%r12), %edi
add %r12, %r12
lea addresses_D_ht+0x150c5, %r15
nop
nop
xor $58988, %r9
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x15a39, %r9
nop
nop
nop
add %r15, %r15
mov (%r9), %esi
nop
xor %r9, %r9
lea addresses_normal_ht+0x116f2, %rcx
nop
nop
nop
xor $48884, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm3
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm3, (%rcx)
nop
nop
nop
nop
add $14293, %rax
lea addresses_UC_ht+0x15125, %r15
nop
nop
nop
nop
nop
and %rdi, %rdi
vmovups (%r15), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r12
and %r15, %r15
lea addresses_normal_ht+0x89a5, %rsi
lea addresses_WC_ht+0x1bbc, %rdi
nop
nop
nop
and $28276, %r11
mov $122, %rcx
rep movsq
nop
xor %r9, %r9
lea addresses_A_ht+0x12d1d, %rdi
nop
nop
nop
inc %r12
mov $0x6162636465666768, %rax
movq %rax, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
nop
add $51870, %r12
lea addresses_A_ht+0x161c5, %r9
nop
nop
nop
xor $52894, %rcx
mov (%r9), %r11d
nop
inc %r15
lea addresses_WC_ht+0x56fd, %rsi
lea addresses_D_ht+0x14ef5, %rdi
nop
nop
nop
cmp %r9, %r9
mov $5, %rcx
rep movsq
nop
nop
nop
xor %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x115e5, %rbx
nop
nop
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movups %xmm5, (%rbx)
nop
nop
nop
nop
and $19614, %r14

// REPMOV
lea addresses_WC+0x14fc5, %rsi
mov $0x306df70000000cc5, %rdi
nop
nop
nop
nop
and $55, %r12
mov $0, %rcx
rep movsb
cmp $44335, %r14

// Faulty Load
lea addresses_A+0xd7c5, %r8
nop
nop
nop
nop
xor $4212, %r15
mov (%r8), %r14d
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_WC', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_NC', 'congruent': 7, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
