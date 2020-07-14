.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1623, %rsi
lea addresses_UC_ht+0x1a3, %rdi
nop
nop
and $41407, %r12
mov $48, %rcx
rep movsw
nop
nop
nop
xor $26253, %r11
lea addresses_WC_ht+0x323d, %rbp
nop
nop
nop
nop
add %r12, %r12
movb (%rbp), %cl
nop
nop
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x1dd23, %rsi
lea addresses_A_ht+0xf9a3, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %rax
mov $112, %rcx
rep movsl
xor %rsi, %rsi
lea addresses_D_ht+0x35e4, %rsi
nop
sub $43873, %rcx
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %r11
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x35a3, %r11
nop
add $387, %r12
mov (%r11), %ax
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x1b5a3, %rbp
xor %rcx, %rcx
movw $0x6162, (%rbp)
nop
nop
nop
and $58088, %rcx
lea addresses_WT_ht+0xc413, %rsi
lea addresses_UC_ht+0x10dc3, %rdi
add $51543, %r13
mov $36, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r11
lea addresses_WT_ht+0x1c823, %rax
nop
nop
nop
nop
sub $11601, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%rax)
nop
nop
nop
dec %r11
lea addresses_WT_ht+0x1da3, %rsi
lea addresses_A_ht+0x3da3, %rdi
nop
cmp $15903, %r13
mov $110, %rcx
rep movsw
cmp $31677, %r11
lea addresses_WT_ht+0xa571, %rbp
nop
nop
nop
cmp %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%rbp)
xor $58451, %rsi
lea addresses_normal_ht+0xd0a3, %rcx
nop
nop
nop
nop
add %r11, %r11
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
movups %xmm6, (%rcx)
nop
inc %r11
lea addresses_D_ht+0x1a0a3, %rdi
nop
nop
nop
sub %rax, %rax
mov (%rdi), %r11
nop
nop
nop
inc %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdx

// Store
lea addresses_RW+0x11da3, %r11
nop
nop
nop
sub $48492, %r12
movl $0x51525354, (%r11)
nop
add %r9, %r9

// Load
lea addresses_US+0x3cab, %r13
nop
nop
nop
sub $50062, %r9
mov (%r13), %r11d
dec %r11

// Store
lea addresses_PSE+0x1d178, %rcx
nop
sub %rdx, %rdx
movl $0x51525354, (%rcx)
nop
nop
nop
cmp %r13, %r13

// Store
mov $0xe59, %rcx
nop
nop
and %r11, %r11
movw $0x5152, (%rcx)
nop
nop
nop
inc %r9

// Store
lea addresses_UC+0x1fad3, %r13
xor %r12, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm1
vmovups %ymm1, (%r13)
dec %rcx

// Load
lea addresses_D+0x10963, %rbp
nop
dec %rdx
mov (%rbp), %r12d
nop
nop
nop
nop
xor $43351, %rdx

// Store
lea addresses_US+0x12ea3, %rbp
nop
nop
nop
nop
and $31944, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movntdq %xmm7, (%rbp)

// Exception!!!
nop
nop
nop
nop
mov (0), %r11
nop
sub %r13, %r13

// Store
lea addresses_RW+0xa0e3, %rcx
nop
nop
nop
nop
and $27113, %r13
mov $0x5152535455565758, %r12
movq %r12, (%rcx)
nop
nop
nop
add %r13, %r13

// Faulty Load
lea addresses_A+0x1da3, %r12
nop
xor $47292, %r11
movb (%r12), %r13b
lea oracles, %r9
and $0xff, %r13
shlq $12, %r13
mov (%r9,%r13,1), %r13
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'54': 191}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
