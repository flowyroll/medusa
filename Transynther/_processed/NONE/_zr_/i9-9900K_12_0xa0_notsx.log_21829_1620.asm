.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x11f26, %rbx
dec %r11
mov $0x6162636465666768, %r14
movq %r14, (%rbx)
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x19466, %rsi
lea addresses_WT_ht+0x1bd66, %rdi
nop
nop
nop
nop
xor %r8, %r8
mov $36, %rcx
rep movsl
nop
nop
nop
inc %r8
lea addresses_normal_ht+0x2326, %rdi
nop
xor %r14, %r14
movb (%rdi), %cl
nop
and $38675, %r14
lea addresses_WT_ht+0xe616, %r8
clflush (%r8)
nop
nop
nop
inc %rbx
movups (%r8), %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0x7f26, %r8
nop
nop
nop
nop
xor %r11, %r11
and $0xffffffffffffffc0, %r8
movaps (%r8), %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x9be6, %rbx
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rbx)
nop
nop
nop
and $46078, %rcx
lea addresses_UC_ht+0x142be, %rsi
nop
nop
nop
nop
sub %rcx, %rcx
mov (%rsi), %rbx
nop
nop
nop
nop
nop
dec %r8
lea addresses_A_ht+0x826, %rsi
lea addresses_normal_ht+0x67b5, %rdi
nop
nop
nop
nop
cmp %r15, %r15
mov $34, %rcx
rep movsq
nop
nop
nop
nop
dec %r11
lea addresses_UC_ht+0x8de0, %r11
clflush (%r11)
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r14
movq %r14, (%r11)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0xb88a, %rsi
lea addresses_A_ht+0x19196, %rdi
nop
sub $37859, %rbx
mov $103, %rcx
rep movsq
nop
cmp $8930, %r8
lea addresses_WT_ht+0x1dea6, %r11
sub %r8, %r8
and $0xffffffffffffffc0, %r11
movaps (%r11), %xmm4
vpextrq $0, %xmm4, %r14
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0x1eb26, %r15
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
and $0xffffffffffffffc0, %r15
vmovntdq %ymm6, (%r15)
nop
nop
nop
sub $6092, %rdi
lea addresses_A_ht+0x390c, %r14
nop
nop
nop
nop
nop
and %rsi, %rsi
movb (%r14), %r15b
nop
nop
nop
inc %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0xff26, %r10
nop
xor $61598, %rbp
movb $0x51, (%r10)
nop
nop
nop
nop
cmp $35690, %r9

// REPMOV
lea addresses_RW+0x1bbe4, %rsi
lea addresses_normal+0x29a6, %rdi
add $39246, %r9
mov $108, %rcx
rep movsq
nop
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_A+0x12f26, %r10
add $58946, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r10)
nop
nop
add %r10, %r10

// Store
lea addresses_WC+0x19f26, %rdi
nop
nop
nop
nop
add $3299, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
cmp %r9, %r9

// Store
lea addresses_WC+0x18e08, %rsi
nop
nop
nop
nop
nop
sub $13110, %rbp
movw $0x5152, (%rsi)
nop
inc %r10

// Faulty Load
lea addresses_A+0x12f26, %rsi
nop
nop
nop
nop
and %rbp, %rbp
movups (%rsi), %xmm5
vpextrq $1, %xmm5, %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_RW', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
