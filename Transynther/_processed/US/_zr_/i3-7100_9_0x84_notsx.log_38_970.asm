.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xc801, %r10
nop
dec %rbp
movb (%r10), %al
nop
nop
nop
add $60770, %r8
lea addresses_WT_ht+0xdcdc, %rsi
lea addresses_UC_ht+0x4861, %rdi
nop
nop
sub %rbx, %rbx
mov $3, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $37833, %rcx
lea addresses_A_ht+0x19461, %r8
nop
nop
nop
and $54359, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
and %r8, %r8
lea addresses_WT_ht+0x155e1, %rsi
nop
cmp %r8, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rsi)
nop
xor %r8, %r8
lea addresses_WT_ht+0x1b461, %rsi
lea addresses_WT_ht+0x16cb1, %rdi
nop
nop
xor %r8, %r8
mov $67, %rcx
rep movsl
nop
sub %r10, %r10
lea addresses_D_ht+0x12d01, %r8
nop
and $65210, %rsi
mov (%r8), %di
nop
nop
nop
nop
nop
xor $10960, %r10
lea addresses_D_ht+0x11e71, %rsi
lea addresses_UC_ht+0x1b7d1, %rdi
inc %r8
mov $12, %rcx
rep movsl
lfence
lea addresses_UC_ht+0x8dd2, %rcx
cmp $11906, %rbp
mov (%rcx), %rdi
nop
and %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rax
push %rcx

// Store
lea addresses_WC+0x1de61, %r15
nop
nop
nop
nop
nop
and %r10, %r10
movw $0x5152, (%r15)
nop
nop
nop
nop
cmp $4359, %r10

// Faulty Load
lea addresses_US+0x18861, %rax
nop
nop
nop
nop
and %r14, %r14
mov (%rax), %r15
lea oracles, %r10
and $0xff, %r15
shlq $12, %r15
mov (%r10,%r15,1), %r15
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 38}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
