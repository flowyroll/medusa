.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xf20, %rsi
lea addresses_D_ht+0x3fc0, %rdi
clflush (%rdi)
nop
nop
add $17409, %r13
mov $19, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_normal_ht+0x1a270, %r13
nop
nop
nop
nop
nop
and $11690, %r14
mov (%r13), %r10w
nop
cmp $57363, %rsi
lea addresses_D_ht+0x71c0, %r14
and %rsi, %rsi
mov (%r14), %rdi
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x178f4, %rcx
nop
nop
nop
nop
nop
add $54712, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
nop
and $38671, %rcx
lea addresses_WC_ht+0xd277, %rsi
lea addresses_D_ht+0x102c0, %rdi
nop
nop
nop
nop
xor $9398, %rbx
mov $5, %rcx
rep movsw
nop
nop
nop
nop
add $27240, %rdi
lea addresses_A_ht+0x9a80, %r10
nop
cmp %rdi, %rdi
mov (%r10), %rcx
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x79c0, %rsi
lea addresses_WT_ht+0x186f0, %rdi
nop
cmp %r8, %r8
mov $56, %rcx
rep movsq
nop
xor %r13, %r13
lea addresses_normal_ht+0x6fe8, %rdi
nop
cmp %r8, %r8
mov (%rdi), %rsi
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_A_ht+0x67c0, %rdi
nop
nop
nop
nop
xor $44881, %r10
vmovups (%rdi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r14
add $65255, %r10
lea addresses_normal_ht+0x18cc0, %rsi
lea addresses_normal_ht+0xd7c0, %rdi
nop
nop
add $57028, %r10
mov $49, %rcx
rep movsw
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0xd7c0, %r13
nop
inc %rdi
vmovups (%r13), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
add $53650, %r13
lea addresses_UC_ht+0x109c0, %rsi
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm2
and $0xffffffffffffffc0, %rsi
vmovaps %ymm2, (%rsi)
nop
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rax
push %rbx
push %rsi

// Load
lea addresses_A+0x3b40, %r10
nop
nop
nop
nop
cmp %r12, %r12
mov (%r10), %ebx
nop
nop
nop
nop
and %r10, %r10

// Faulty Load
lea addresses_US+0x1fc0, %r13
nop
nop
add $13244, %r9
mov (%r13), %bx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'00': 7}
00 00 00 00 00 00 00
*/
