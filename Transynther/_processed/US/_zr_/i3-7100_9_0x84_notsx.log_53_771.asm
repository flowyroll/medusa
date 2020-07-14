.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xebe7, %rcx
dec %r13
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%rcx)
nop
add %r14, %r14
lea addresses_A_ht+0x11197, %rdx
nop
nop
inc %r8
mov $0x6162636465666768, %r10
movq %r10, %xmm0
vmovups %ymm0, (%rdx)
nop
nop
nop
xor $2025, %r8
lea addresses_A_ht+0x90e7, %r13
nop
and $4811, %r11
movb (%r13), %r14b
nop
nop
nop
and %rdx, %rdx
lea addresses_WT_ht+0x3ee7, %rsi
lea addresses_UC_ht+0x953f, %rdi
xor %r10, %r10
mov $76, %rcx
rep movsq
nop
dec %r11
lea addresses_UC_ht+0x1aec3, %rsi
lea addresses_UC_ht+0x1a787, %rdi
nop
nop
cmp $58131, %r13
mov $53, %rcx
rep movsl
nop
nop
nop
sub $39497, %r11
lea addresses_A_ht+0x13267, %rsi
lea addresses_WT_ht+0x186e7, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $109, %rcx
rep movsl
nop
add $1064, %r14
lea addresses_WT_ht+0x6513, %r10
sub $22572, %rcx
mov (%r10), %r13w
nop
nop
cmp $39699, %rdi
lea addresses_A_ht+0x11f27, %rdx
mfence
movb (%rdx), %r13b
nop
nop
nop
nop
nop
sub $61260, %rdi
lea addresses_D_ht+0xcf9f, %rsi
nop
nop
nop
and $57947, %r8
movl $0x61626364, (%rsi)
nop
xor $52124, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rax
push %rbp
push %rbx

// Faulty Load
lea addresses_US+0x19ae7, %rbp
nop
cmp %r15, %r15
mov (%rbp), %r13d
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 53}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
