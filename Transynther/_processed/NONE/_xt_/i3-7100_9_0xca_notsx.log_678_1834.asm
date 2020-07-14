.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x5c9a, %rdx
nop
nop
nop
nop
add $54188, %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm7
movups %xmm7, (%rdx)
xor %r12, %r12
lea addresses_WC_ht+0x15579, %r8
nop
and $28705, %r12
mov (%r8), %r14d
nop
nop
and $19908, %rbp
lea addresses_WC_ht+0x8354, %rdx
nop
nop
nop
nop
nop
cmp $35883, %r13
movups (%rdx), %xmm5
vpextrq $0, %xmm5, %r8
nop
sub $3846, %r13
lea addresses_WC_ht+0x13442, %r8
nop
nop
dec %rdx
movb $0x61, (%r8)
nop
nop
nop
nop
nop
inc %rbp
lea addresses_normal_ht+0x18eec, %rsi
lea addresses_normal_ht+0x462, %rdi
inc %r12
mov $22, %rcx
rep movsw
nop
nop
nop
nop
nop
add $62391, %rsi
lea addresses_WC_ht+0x1e932, %rdi
nop
nop
nop
cmp $4625, %r12
movw $0x6162, (%rdi)
dec %r8
lea addresses_D_ht+0x11132, %r8
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
and $0xffffffffffffffc0, %r8
movntdq %xmm5, (%r8)
nop
nop
nop
add $12017, %rbp
lea addresses_WC_ht+0x532, %rcx
nop
nop
and %r14, %r14
mov (%rcx), %r13d
xor %r13, %r13
lea addresses_normal_ht+0xd732, %rsi
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %r13
movq %r13, %xmm7
vmovups %ymm7, (%rsi)
nop
sub $42997, %r13
lea addresses_UC_ht+0x14972, %rdx
inc %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%rdx)
xor %rsi, %rsi
lea addresses_D_ht+0x12732, %rsi
lea addresses_WT_ht+0x12e30, %rdi
nop
nop
nop
nop
cmp $33556, %r13
mov $35, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x14d32, %rsi
lea addresses_UC_ht+0x777a, %rdi
cmp %rdx, %rdx
mov $41, %rcx
rep movsq
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_normal_ht+0x21f2, %r12
nop
nop
nop
nop
cmp %rdx, %rdx
movups (%r12), %xmm4
vpextrq $0, %xmm4, %r8
nop
nop
cmp $55453, %r12
lea addresses_normal_ht+0x8132, %rsi
lea addresses_UC_ht+0x1d722, %rdi
nop
add %rdx, %rdx
mov $97, %rcx
rep movsl
and $15331, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx

// Load
mov $0x3e5be80000000894, %rbx
nop
nop
nop
nop
nop
inc %rax
movb (%rbx), %r12b
nop
xor $37938, %rbx

// Faulty Load
lea addresses_WT+0xb132, %rbx
and $57118, %rdx
movups (%rbx), %xmm0
vpextrq $0, %xmm0, %rax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'39': 678}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
