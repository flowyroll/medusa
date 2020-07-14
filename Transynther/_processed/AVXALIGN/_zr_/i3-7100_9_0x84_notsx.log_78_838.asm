.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x11e3, %rsi
lea addresses_A_ht+0x8a63, %rdi
nop
nop
nop
nop
nop
inc %r12
mov $112, %rcx
rep movsl
nop
nop
nop
nop
inc %rbp
lea addresses_UC_ht+0xce63, %rsi
nop
nop
and %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm6, (%rsi)
nop
sub %r14, %r14
lea addresses_D_ht+0x5373, %rbp
nop
nop
nop
nop
inc %r12
mov (%rbp), %di
nop
add $46497, %r14
lea addresses_A_ht+0xdda3, %r14
nop
nop
nop
nop
cmp %rbp, %rbp
movups (%r14), %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
nop
nop
and $13562, %rsi
lea addresses_D_ht+0x2063, %rcx
nop
nop
nop
nop
nop
add %r15, %r15
mov $0x6162636465666768, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x83cf, %r14
clflush (%r14)
nop
add %rsi, %rsi
movb (%r14), %r15b
add $53844, %r14
lea addresses_UC_ht+0x10153, %r14
nop
nop
nop
nop
dec %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r14)
nop
nop
nop
sub $44683, %r12
lea addresses_D_ht+0x19445, %rsi
nop
nop
nop
nop
and %rbp, %rbp
mov (%rsi), %r15d
nop
nop
nop
nop
nop
dec %r15
lea addresses_normal_ht+0x1a63, %rsi
lea addresses_normal_ht+0x10a63, %rdi
xor %r13, %r13
mov $84, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_WT_ht+0x2427, %rsi
lea addresses_D_ht+0x10323, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
dec %r13
mov $50, %rcx
rep movsb
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x2c63, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
mov (%rdi), %esi
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_normal_ht+0x10263, %r15
nop
cmp $54274, %rcx
movb $0x61, (%r15)
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi

// Store
lea addresses_WT+0x10063, %r15
clflush (%r15)
nop
nop
nop
nop
xor $43420, %r8
mov $0x5152535455565758, %rcx
movq %rcx, (%r15)
nop
nop
nop
nop
and %r15, %r15

// Faulty Load
lea addresses_US+0xa263, %r15
nop
nop
nop
nop
and $37502, %r12
mov (%r15), %r11
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 78}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
