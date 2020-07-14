.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xd41e, %r10
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov (%r10), %r11
nop
nop
nop
add %rax, %rax
lea addresses_normal_ht+0x1d6de, %r13
nop
and %r12, %r12
movups (%r13), %xmm3
vpextrq $1, %xmm3, %rax
inc %r11
lea addresses_D_ht+0x1501e, %rsi
lea addresses_WT_ht+0x1c58a, %rdi
nop
nop
sub %r12, %r12
mov $9, %rcx
rep movsq
nop
sub %rdi, %rdi
lea addresses_WT_ht+0xb21e, %rsi
lea addresses_normal_ht+0x7cae, %rdi
nop
nop
nop
nop
xor $37413, %r11
mov $116, %rcx
rep movsb
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0xc0fe, %rdi
nop
nop
nop
sub %r11, %r11
movb $0x61, (%rdi)
nop
nop
add %r10, %r10
lea addresses_WC_ht+0x1561e, %r12
nop
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r12)
nop
nop
nop
xor $22698, %rdi
lea addresses_UC_ht+0x1024e, %r11
nop
nop
nop
nop
and %rax, %rax
mov (%r11), %rsi
nop
nop
nop
nop
nop
xor $14375, %rcx
lea addresses_WC_ht+0x19bc6, %rsi
lea addresses_WT_ht+0xe81e, %rdi
nop
cmp %rax, %rax
mov $17, %rcx
rep movsl
xor $8439, %r10
lea addresses_UC_ht+0x13f1e, %r13
nop
nop
nop
nop
and $49676, %rdi
movl $0x61626364, (%r13)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x1d892, %rsi
lea addresses_A_ht+0x17ba7, %rdi
clflush (%rsi)
nop
nop
nop
and %r12, %r12
mov $6, %rcx
rep movsq
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x1d61e, %rsi
lea addresses_D_ht+0x1d41e, %rdi
nop
nop
sub %r10, %r10
mov $53, %rcx
rep movsl
nop
inc %r12
lea addresses_UC_ht+0xd39e, %r10
nop
nop
nop
nop
nop
xor $23164, %r11
movl $0x61626364, (%r10)
nop
add %r10, %r10
lea addresses_normal_ht+0x919e, %rsi
lea addresses_A_ht+0x1643e, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $49, %rcx
rep movsw
add %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_UC+0x29be, %rsi
lea addresses_WT+0x45fe, %rdi
nop
nop
sub %rbp, %rbp
mov $52, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_WC+0x1ea5e, %rbp
xor $1810, %rcx
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
add $10493, %rbp

// Faulty Load
mov $0x81e, %rcx
nop
nop
nop
inc %r15
movb (%rcx), %bl
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'00': 9705}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
