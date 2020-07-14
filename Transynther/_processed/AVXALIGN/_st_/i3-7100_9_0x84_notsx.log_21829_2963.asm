.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xf06e, %rsi
lea addresses_UC_ht+0x1360e, %rdi
nop
and $25762, %r13
mov $80, %rcx
rep movsw
nop
nop
nop
sub %rbx, %rbx
lea addresses_A_ht+0xf0ce, %rsi
lea addresses_A_ht+0x1b476, %rdi
xor $30548, %r8
mov $85, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0xc6ce, %rsi
clflush (%rsi)
nop
nop
nop
dec %r11
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
add %r13, %r13
lea addresses_normal_ht+0xcce, %rsi
lea addresses_A_ht+0x1921e, %rdi
clflush (%rdi)
xor %r10, %r10
mov $37, %rcx
rep movsb
and $29401, %r13
lea addresses_D_ht+0x1e24e, %rsi
lea addresses_WT_ht+0x190ce, %rdi
inc %rbx
mov $109, %rcx
rep movsb
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x4ce6, %rsi
lea addresses_WT_ht+0x165ce, %rdi
clflush (%rdi)
nop
nop
nop
add %r11, %r11
mov $114, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_D_ht+0x140ce, %rdi
nop
nop
nop
nop
sub %r11, %r11
movups (%rdi), %xmm1
vpextrq $0, %xmm1, %r13
sub $24890, %r8
lea addresses_WT_ht+0x16fce, %rsi
lea addresses_normal_ht+0x1b4ce, %rdi
nop
nop
nop
nop
nop
xor $4963, %r11
mov $26, %rcx
rep movsb
nop
nop
dec %rcx
lea addresses_WC_ht+0xcbce, %rbx
dec %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%rbx)
and $34073, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0xc8ce, %r12
nop
nop
and %r8, %r8
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r12)
nop
and $31773, %r12

// Store
lea addresses_D+0x56ce, %rdi
nop
sub $8128, %r8
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
cmp %r11, %r11

// REPMOV
lea addresses_UC+0x19a4, %rsi
lea addresses_D+0x8b44, %rdi
nop
nop
dec %r15
mov $2, %rcx
rep movsq
nop
nop
nop
nop
nop
add $31646, %r11

// REPMOV
lea addresses_WT+0x1dd9e, %rsi
lea addresses_D+0xc8ce, %rdi
xor $65483, %r9
mov $7, %rcx
rep movsb
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_WC+0x9cce, %r15
clflush (%r15)
nop
nop
nop
nop
xor $2907, %rcx
movw $0x5152, (%r15)
nop
nop
nop
nop
nop
and %r8, %r8

// Store
lea addresses_A+0x86ce, %r15
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovntdq %ymm0, (%r15)
nop
dec %r12

// Faulty Load
lea addresses_D+0xc8ce, %r8
nop
nop
add %r11, %r11
movb (%r8), %cl
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
