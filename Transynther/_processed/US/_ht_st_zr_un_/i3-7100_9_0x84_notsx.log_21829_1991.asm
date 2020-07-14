.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x16524, %rax
nop
xor %r11, %r11
movb $0x61, (%rax)
nop
nop
nop
inc %rbx
lea addresses_WT_ht+0x1ac34, %r13
clflush (%r13)
nop
nop
nop
nop
nop
xor $9734, %rbx
movups (%r13), %xmm1
vpextrq $0, %xmm1, %rdx
nop
xor $59213, %rbx
lea addresses_WC_ht+0xd2d4, %rsi
lea addresses_normal_ht+0xf274, %rdi
nop
nop
add %rdx, %rdx
mov $46, %rcx
rep movsw
nop
nop
nop
dec %rdx
lea addresses_UC_ht+0xfcd4, %rsi
lea addresses_WT_ht+0x1c8d4, %rdi
nop
nop
nop
nop
inc %rax
mov $60, %rcx
rep movsb
nop
and %rax, %rax
lea addresses_normal_ht+0x16854, %r11
nop
inc %rdx
mov $0x6162636465666768, %r13
movq %r13, %xmm3
vmovups %ymm3, (%r11)
nop
nop
add %r11, %r11
lea addresses_normal_ht+0xcfdc, %rax
nop
nop
nop
nop
xor $26196, %rdx
mov (%rax), %r8
nop
nop
dec %rbx
lea addresses_WC_ht+0x1d166, %rax
and $28917, %r13
movups (%rax), %xmm5
vpextrq $0, %xmm5, %r11
nop
nop
nop
nop
nop
xor $23907, %rsi
lea addresses_WT_ht+0x7e10, %r11
xor $8428, %rdx
mov (%r11), %ecx
cmp %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x16cd4, %rsi
lea addresses_D+0x54c4, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $15177, %rbx
mov $16, %rcx
rep movsw
nop
nop
xor $7313, %rbx

// Faulty Load
lea addresses_US+0x154d4, %rsi
add $10940, %r13
movb (%rsi), %r14b
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'28': 4, 'd8': 21, '1a': 17979, '37': 30, '45': 2, '6d': 1, '50': 1, 'd0': 7, '60': 7, 'b0': 10, '48': 4, '90': 11, '00': 3752}
48 50 00 1a 1a 1a 1a 00 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 00 1a 00 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 00 1a 1a 00 1a 1a 00 1a 00 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 00 1a 1a 1a 1a 1a 00 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 00 1a 00 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 00 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 00 1a 1a 00 1a 1a 00 1a 1a 00 1a 1a 1a 1a 00 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 00 1a 1a 1a 1a 00 00 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 00 1a 00 1a 1a 00 1a 1a 00 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 00 1a 1a 1a 1a 00 1a 1a 00 1a 00 1a 1a 00 1a 1a 00 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 00 1a 1a 00 1a 00 1a 1a 00 1a 1a 1a 1a 00 1a 1a 00 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 00 1a 1a 1a 1a 1a 00 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 00 1a 00 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 00 1a 1a 00 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 00 1a 1a 1a 00 1a 00 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 00 00 1a 1a 1a 1a 00 1a 00 1a 1a 1a 1a 1a 00 1a 00 1a 1a 1a 1a 1a 00 1a 1a 00 1a 1a 00 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 00 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 00 1a 1a 00 1a 00 1a 1a 00 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 00 1a 00 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 00 1a 00 1a 1a 00 1a 1a 1a 1a 1a 00 1a 00 1a 1a 00 1a 1a 00 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 00 1a 1a 1a 00 1a 1a 00 1a 1a 00 1a 00 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 00 1a 1a 00 1a 00 00 1a 00
*/
