.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x9aed, %rbx
clflush (%rbx)
nop
nop
add %r8, %r8
movb (%rbx), %r12b
nop
nop
nop
xor $65324, %r10
lea addresses_WT_ht+0x7499, %r11
nop
nop
and $3082, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm5
vmovups %ymm5, (%r11)
nop
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x4b6d, %r8
nop
cmp %r12, %r12
mov $0x6162636465666768, %rbx
movq %rbx, (%r8)
cmp %rdi, %rdi
lea addresses_normal_ht+0x1d6ed, %r11
nop
nop
cmp $23955, %rsi
mov (%r11), %bx
nop
add $13236, %r10
lea addresses_WT_ht+0x94ed, %rsi
lea addresses_A_ht+0xf0e5, %rdi
nop
dec %rbx
mov $52, %rcx
rep movsb
xor $51666, %rsi
lea addresses_A_ht+0x1a33d, %rsi
lea addresses_normal_ht+0xfc3d, %rdi
nop
inc %rbx
mov $35, %rcx
rep movsw
nop
nop
nop
nop
xor $17120, %rbx
lea addresses_WC_ht+0x76bb, %rsi
lea addresses_UC_ht+0x1aced, %rdi
cmp %r12, %r12
mov $69, %rcx
rep movsw
nop
sub %r10, %r10
lea addresses_WT_ht+0x1a0ed, %rsi
lea addresses_WC_ht+0x29ed, %rdi
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $102, %rcx
rep movsl
nop
sub $59900, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x15295, %r13
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%r13)
nop
nop
add $8156, %r13

// Load
lea addresses_PSE+0x45ed, %r9
nop
nop
nop
nop
nop
cmp $47427, %rbx
mov (%r9), %ax
xor %r13, %r13

// Store
lea addresses_WC+0x140ed, %r11
nop
nop
nop
nop
nop
sub $17458, %r8
movb $0x51, (%r11)
nop
add $50646, %rbx

// Store
lea addresses_PSE+0x193ed, %r11
nop
xor %r13, %r13
mov $0x5152535455565758, %r14
movq %r14, (%r11)
nop
nop
dec %r8

// REPMOV
lea addresses_normal+0x1743, %rsi
lea addresses_A+0x1f4ed, %rdi
clflush (%rdi)
nop
dec %r11
mov $99, %rcx
rep movsb
nop
nop
add $7427, %r13

// Load
lea addresses_WT+0x1b4a5, %rdi
nop
nop
nop
nop
add $11461, %r13
mov (%rdi), %r9
nop
inc %r11

// REPMOV
lea addresses_WC+0x13b39, %rsi
lea addresses_UC+0x26eb, %rdi
clflush (%rdi)
nop
nop
nop
and %r8, %r8
mov $59, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %r9, %r9

// Faulty Load
lea addresses_US+0x104ed, %r13
nop
cmp $27406, %rax
mov (%r13), %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_normal', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 0, 'same': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'34': 2389, '00': 19440}
00 00 00 00 00 34 34 00 00 34 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 34 00 00 00 34 00 00 00 00 34 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 34 00 00 00 34 00 00 00 00 00 00 00 00 00 00 34 00 00 34 00 00 00 34 00 00 00 34 00 00 34 00 00 00 00 00 34 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 34 00 00 00 00 34 00 00 00 34 00 00 34 00 00 00 00 00 00 34 00 00 00 00 00 00 34 00 00 00 00 00 34 00 34 00 00 34 00 00 34 00 00 00 00 00 00 00 34 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 34 00 00 34 00 00 00 00 00 00 00 34 00 00 00 00 00 34 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 34 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 34 00 00 34 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 34 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 34 00 00 34 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 34 00 00 00 34 00 34 00 00 00 00 34 00 00 00 00 00 00 00 34 00 00 00 34 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 34 00 00 00 34 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 34 00 00 00 00 00 00 00 00 00 34 00 34 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 34 00 00 00 00 00 00 34 00 00 34 00 34 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 34 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 34 00 00 00 34 00 00 00 00 00 34 00 00 00 00 34 00 00 00 34 00 00 34 00 00 00 34 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 34 00 00 00 34
*/
