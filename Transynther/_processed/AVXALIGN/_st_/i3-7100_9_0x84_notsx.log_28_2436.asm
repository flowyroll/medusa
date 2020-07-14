.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x276c, %r14
nop
nop
nop
cmp %rsi, %rsi
mov (%r14), %r8w
nop
nop
nop
and %rbp, %rbp
lea addresses_normal_ht+0x1c294, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%rcx)
cmp %r12, %r12
lea addresses_WC_ht+0xb134, %r8
nop
dec %rbx
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
add $50713, %r12
lea addresses_WC_ht+0x1a134, %rsi
lea addresses_WC_ht+0x10534, %rdi
cmp %rbp, %rbp
mov $0, %rcx
rep movsb
nop
xor $65366, %rdi
lea addresses_D_ht+0x12434, %rsi
cmp %rbx, %rbx
mov (%rsi), %rdi
xor $38075, %rbp
lea addresses_D_ht+0x11218, %rsi
lea addresses_WC_ht+0x1d934, %rdi
nop
nop
nop
nop
and %rbx, %rbx
mov $83, %rcx
rep movsb
nop
nop
nop
add $4836, %rbp
lea addresses_D_ht+0x10288, %rsi
nop
nop
and %rbx, %rbx
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbp
cmp $63919, %rbx
lea addresses_normal_ht+0x1d274, %rsi
lea addresses_normal_ht+0x9ed4, %rdi
xor $64881, %r14
mov $0, %rcx
rep movsw
nop
nop
add $8075, %rdi
lea addresses_D_ht+0x108f4, %rdi
nop
nop
xor %r14, %r14
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x8d2c, %rsi
lea addresses_normal_ht+0x25b0, %rdi
clflush (%rsi)
nop
add $16395, %rbx
mov $47, %rcx
rep movsb
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x18c24, %rsi
lea addresses_UC_ht+0x165b4, %rdi
nop
nop
nop
nop
nop
add $29662, %r8
mov $0, %rcx
rep movsb
xor $35235, %r14
lea addresses_UC_ht+0x1cf34, %r8
clflush (%r8)
nop
nop
nop
nop
nop
sub $37506, %r14
movw $0x6162, (%r8)
nop
nop
nop
add $41651, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0xd834, %rsi
mov $0x6028de0000000471, %rdi
nop
nop
nop
and %rax, %rax
mov $41, %rcx
rep movsq
nop
nop
nop
xor $38728, %rbp

// Faulty Load
lea addresses_D+0x15d34, %rdi
nop
nop
nop
nop
nop
cmp $45875, %r8
mov (%rdi), %ecx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_NC', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'36': 28}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
