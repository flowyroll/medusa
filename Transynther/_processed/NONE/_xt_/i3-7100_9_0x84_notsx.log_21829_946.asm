.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x9580, %rsi
lea addresses_WC_ht+0x71ea, %rdi
clflush (%rsi)
nop
add $14715, %rax
mov $68, %rcx
rep movsb
nop
nop
nop
nop
sub %r10, %r10
lea addresses_D_ht+0x1469e, %r10
nop
nop
nop
nop
nop
xor %r14, %r14
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
sub $31570, %r10
lea addresses_normal_ht+0x154f0, %rsi
lea addresses_normal_ht+0x15f70, %rdi
nop
inc %r9
mov $7, %rcx
rep movsq
nop
nop
nop
add $12235, %r9
lea addresses_UC_ht+0x12cf0, %rsi
lea addresses_UC_ht+0x1904c, %rdi
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $126, %rcx
rep movsb
nop
nop
and $34809, %r9
lea addresses_D_ht+0x5942, %rsi
lea addresses_normal_ht+0x164f0, %rdi
nop
add $59585, %rax
mov $45, %rcx
rep movsw
nop
nop
add $25498, %rsi
lea addresses_normal_ht+0x16798, %rax
nop
nop
nop
nop
nop
cmp %r9, %r9
movw $0x6162, (%rax)
nop
nop
nop
cmp $12898, %rax
lea addresses_A_ht+0x3cf0, %rax
add %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm5
movups %xmm5, (%rax)
cmp %rax, %rax
lea addresses_A_ht+0xdf0, %r12
nop
nop
nop
and $15885, %r10
movb (%r12), %al
nop
inc %rsi
lea addresses_A_ht+0x4f0, %rax
nop
nop
add %r14, %r14
mov $0x6162636465666768, %r10
movq %r10, (%rax)
nop
and $29702, %r12
lea addresses_D_ht+0x5c20, %r14
sub $31319, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm1
movups %xmm1, (%r14)
nop
add %rcx, %rcx
lea addresses_A_ht+0x11e1e, %rcx
clflush (%rcx)
nop
and %r9, %r9
movb $0x61, (%rcx)
nop
nop
dec %rdi
lea addresses_D_ht+0x1bcf0, %r14
and $6777, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
nop
nop
nop
sub $11899, %r12
lea addresses_UC_ht+0x7cf0, %rsi
lea addresses_UC_ht+0x179b0, %rdi
nop
nop
add %r10, %r10
mov $41, %rcx
rep movsl
xor $62747, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x74b0, %r10
nop
nop
nop
nop
nop
cmp $27053, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
movups %xmm3, (%r10)
nop
inc %r13

// Store
lea addresses_WC+0x19470, %r10
nop
nop
nop
nop
inc %r9
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
movaps %xmm6, (%r10)
nop
nop
nop
and %r13, %r13

// Load
lea addresses_D+0x195f0, %r8
and %r11, %r11
mov (%r8), %r13d
nop
cmp %rbp, %rbp

// Store
lea addresses_WC+0x92f0, %r10
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r13
movq %r13, %xmm2
vmovups %ymm2, (%r10)
nop
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_UC+0x13258, %r11
dec %r8
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
xor %r11, %r11

// REPMOV
mov $0xcf0, %rsi
mov $0xc10, %rdi
nop
nop
nop
inc %r9
mov $12, %rcx
rep movsl
sub %r13, %r13

// Store
lea addresses_US+0x1fef0, %rbp
nop
nop
add %r10, %r10
movl $0x51525354, (%rbp)
nop
nop
nop
dec %rbp

// Store
lea addresses_WC+0x128f0, %rbp
nop
nop
add $20623, %rcx
movb $0x51, (%rbp)
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_UC+0x9040, %rdi
nop
nop
nop
sub %rbp, %rbp
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
and $44270, %rbp

// Faulty Load
lea addresses_RW+0x134f0, %rbp
nop
nop
nop
nop
and %rcx, %rcx
movb (%rbp), %r10b
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_P', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
