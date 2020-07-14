.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xe0b1, %rsi
lea addresses_UC_ht+0x6f51, %rdi
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $14, %rcx
rep movsq
nop
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0x31ed, %rsi
nop
nop
sub $24117, %r13
mov $0x6162636465666768, %r15
movq %r15, (%rsi)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x1e4f1, %rbp
nop
nop
add %r9, %r9
movups (%rbp), %xmm3
vpextrq $1, %xmm3, %r15
nop
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0x11751, %rsi
lea addresses_WT_ht+0x16a9, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $44, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %r9
lea addresses_UC_ht+0xcf51, %r9
cmp %r13, %r13
mov (%r9), %r15d
nop
xor $26718, %r15
lea addresses_UC_ht+0x172b1, %rdi
inc %r14
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x1534d, %r14
clflush (%r14)
nop
nop
nop
nop
sub $41125, %r15
mov (%r14), %rcx
nop
nop
nop
nop
xor $50362, %r14
lea addresses_WC_ht+0x12e8d, %rcx
nop
xor %r15, %r15
vmovups (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r13
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0xa98d, %rsi
lea addresses_A_ht+0x4aa9, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %r13
mov $75, %rcx
rep movsb
nop
nop
nop
nop
nop
mfence
lea addresses_D_ht+0xe332, %r9
nop
nop
nop
nop
nop
inc %r13
movl $0x61626364, (%r9)
dec %rbp
lea addresses_WT_ht+0x10725, %r14
nop
nop
nop
nop
and $14939, %r13
movb $0x61, (%r14)
and $63830, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x1df51, %r15
nop
nop
nop
sub $23189, %r14
movl $0x51525354, (%r15)
nop
nop
nop
nop
sub $982, %rbp

// Store
lea addresses_WC+0x1da39, %rcx
nop
nop
nop
nop
xor $11999, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
nop
nop
nop
nop
add $15742, %r15

// Store
lea addresses_normal+0x7c51, %r11
nop
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r11)
nop
dec %rbp

// Store
lea addresses_D+0x139c3, %rdi
nop
nop
nop
nop
nop
dec %r11
movb $0x51, (%rdi)
nop
nop
add $18889, %rdi

// REPMOV
lea addresses_A+0x1c4ba, %rsi
lea addresses_A+0xcc11, %rdi
nop
nop
nop
nop
and $11440, %r15
mov $21, %rcx
rep movsl
nop
sub $62075, %rdi

// REPMOV
lea addresses_WC+0x14fd1, %rsi
lea addresses_normal+0x7091, %rdi
nop
nop
nop
nop
add %r15, %r15
mov $122, %rcx
rep movsq
nop
nop
nop
cmp %r15, %r15

// Store
mov $0x5b7, %rsi
nop
nop
xor $63825, %r14
movw $0x5152, (%rsi)
nop
xor $33408, %rbp

// Store
lea addresses_A+0x1391, %rdx
nop
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, (%rdx)
nop
nop
add $51833, %rdi

// Store
lea addresses_A+0x165bb, %rsi
clflush (%rsi)
nop
nop
and %r14, %r14
movw $0x5152, (%rsi)
and %rdx, %rdx

// Load
lea addresses_RW+0x16f51, %r14
xor $36428, %rcx
movb (%r14), %r15b
nop
nop
nop
dec %rdx

// Faulty Load
lea addresses_WT+0x1df51, %r15
nop
and %rdx, %rdx
mov (%r15), %r11w
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
