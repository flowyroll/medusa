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
lea addresses_D_ht+0x3d7, %r13
nop
nop
nop
sub $48282, %rdi
mov (%r13), %r15d
nop
and $14262, %rbp
lea addresses_A_ht+0xeac5, %r15
nop
nop
nop
nop
inc %rcx
mov (%r15), %r12w
nop
add %rdi, %rdi
lea addresses_A_ht+0x19f80, %r15
inc %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
and $0xffffffffffffffc0, %r15
vmovntdq %ymm3, (%r15)
nop
sub $23953, %rdi
lea addresses_WT_ht+0x167d7, %rsi
lea addresses_WC_ht+0xa7fe, %rdi
clflush (%rsi)
nop
nop
cmp %r12, %r12
mov $40, %rcx
rep movsw
nop
nop
inc %rdi
lea addresses_D_ht+0x23d7, %rsi
lea addresses_D_ht+0x1d087, %rdi
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $23, %rcx
rep movsq
nop
nop
nop
nop
add $11596, %r13
lea addresses_A_ht+0x10137, %rsi
lea addresses_UC_ht+0x11a17, %rdi
clflush (%rsi)
dec %r14
mov $85, %rcx
rep movsl
nop
nop
nop
nop
nop
and $13023, %r13
lea addresses_WC_ht+0x16d7, %rsi
lea addresses_D_ht+0xe775, %rdi
nop
nop
sub %r13, %r13
mov $98, %rcx
rep movsb
nop
cmp $19233, %r12
lea addresses_normal_ht+0xf70d, %r12
add $32065, %r15
mov (%r12), %r13d
nop
nop
xor $42567, %r12
lea addresses_WC_ht+0x25c7, %rdi
nop
nop
cmp $26316, %r13
mov (%rdi), %r12d
nop
nop
nop
nop
cmp $14340, %r14
lea addresses_A_ht+0x1d857, %rsi
lea addresses_WC_ht+0x11d37, %rdi
nop
nop
nop
nop
nop
add $17499, %r13
mov $66, %rcx
rep movsq
cmp %r12, %r12
lea addresses_normal_ht+0x193d7, %rsi
lea addresses_D_ht+0xbb7, %rdi
xor %r14, %r14
mov $0, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x16557, %rsi
lea addresses_A_ht+0x193e7, %rdi
xor %r14, %r14
mov $2, %rcx
rep movsb
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x1aa37, %rsi
lea addresses_normal_ht+0x13bd7, %rdi
clflush (%rdi)
and %r12, %r12
mov $112, %rcx
rep movsb
nop
and %rbp, %rbp
lea addresses_D_ht+0xed7, %rcx
nop
nop
nop
nop
and $39975, %r14
mov (%rcx), %di
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x6257, %r12
clflush (%r12)
nop
nop
nop
nop
nop
add $30811, %r13
movb $0x61, (%r12)
nop
nop
dec %r12
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
push %r9
push %rbp
push %rsi

// Load
mov $0x7d7, %r9
nop
add $48012, %r11
movb (%r9), %r8b
nop
nop
nop
nop
nop
add $62824, %rbp

// Store
lea addresses_UC+0x97d7, %rsi
xor $39419, %rbp
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
xor $22258, %r11

// Store
lea addresses_UC+0x10dd7, %r9
nop
add %r12, %r12
movb $0x51, (%r9)
nop
nop
nop
nop
cmp $24992, %r8

// Load
lea addresses_D+0x197d7, %r9
clflush (%r9)
nop
nop
nop
and %rbp, %rbp
movb (%r9), %r11b
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_WC+0x146d7, %r15
nop
nop
nop
nop
dec %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovntdq %ymm0, (%r15)
nop
nop
nop
nop
nop
inc %r11

// Store
lea addresses_UC+0x14e, %r12
clflush (%r12)
nop
nop
nop
nop
inc %r9
movb $0x51, (%r12)
nop
sub $56889, %rbp

// Store
mov $0xfd7, %r15
nop
xor %r9, %r9
mov $0x5152535455565758, %r11
movq %r11, (%r15)
nop
nop
nop
sub $5855, %rsi

// Faulty Load
lea addresses_UC+0x97d7, %r9
sub $51602, %r8
movaps (%r9), %xmm4
vpextrq $0, %xmm4, %r12
lea oracles, %r11
and $0xff, %r12
shlq $12, %r12
mov (%r11,%r12,1), %r12
pop %rsi
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_UC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'00': 328, '54': 21500, 'd0': 1}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
