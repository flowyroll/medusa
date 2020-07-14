.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x89b3, %r14
nop
nop
nop
nop
sub $37153, %rcx
movups (%r14), %xmm6
vpextrq $0, %xmm6, %r15
nop
nop
nop
nop
nop
xor $13594, %r8
lea addresses_D_ht+0x1b273, %r13
nop
dec %rcx
mov (%r13), %dx
nop
nop
inc %r14
lea addresses_A_ht+0x1b833, %rdx
add $31695, %rax
movl $0x61626364, (%rdx)
nop
nop
nop
and %r15, %r15
lea addresses_WT_ht+0x2ff3, %rsi
lea addresses_normal_ht+0x19563, %rdi
clflush (%rdi)
dec %r15
mov $35, %rcx
rep movsl
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x16573, %rsi
nop
nop
nop
nop
nop
sub $64222, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
nop
nop
and %r15, %r15
lea addresses_UC_ht+0xc153, %rsi
lea addresses_WT_ht+0x89ff, %rdi
nop
nop
nop
nop
dec %r8
mov $3, %rcx
rep movsw
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x18ab3, %rdi
nop
nop
nop
nop
dec %r14
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm6
vpextrq $0, %xmm6, %r15
nop
nop
nop
add $304, %r15
lea addresses_D_ht+0xe583, %r13
nop
nop
nop
nop
xor %rdi, %rdi
mov (%r13), %r8w
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0xb4f3, %rcx
add %r13, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
nop
nop
xor $60313, %rcx
lea addresses_normal_ht+0x180b3, %rsi
nop
xor $29950, %r13
movb (%rsi), %dl
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x17afb, %rsi
lea addresses_WC_ht+0xb4b3, %rdi
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $18, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x5ab3, %rax
nop
and $11402, %r13
mov (%rax), %r8d
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rbx

// Faulty Load
lea addresses_US+0x1eab3, %r14
nop
nop
nop
dec %r12
mov (%r14), %ebx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rbx
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 66}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
