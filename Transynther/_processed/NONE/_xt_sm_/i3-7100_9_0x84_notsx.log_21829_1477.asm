.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x12c82, %rsi
lea addresses_normal_ht+0xb482, %rdi
nop
nop
nop
nop
xor $64315, %r12
mov $11, %rcx
rep movsq
nop
sub $48226, %rcx
lea addresses_WC_ht+0x11782, %rsi
lea addresses_UC_ht+0xc062, %rdi
sub %r12, %r12
mov $18, %rcx
rep movsq
nop
sub $38311, %r15
lea addresses_WC_ht+0x1705b, %rsi
lea addresses_normal_ht+0x4082, %rdi
nop
nop
nop
nop
mfence
mov $69, %rcx
rep movsw
nop
add %rsi, %rsi
lea addresses_WT_ht+0xa482, %r11
nop
nop
nop
nop
sub %rdi, %rdi
movl $0x61626364, (%r11)
nop
xor %rdi, %rdi
lea addresses_D_ht+0xb002, %r15
nop
nop
nop
xor %r14, %r14
mov (%r15), %r12d
cmp $63584, %r11
lea addresses_WC_ht+0x1a902, %rsi
lea addresses_normal_ht+0x13402, %rdi
nop
nop
nop
nop
nop
dec %r12
mov $43, %rcx
rep movsq
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x1be26, %r11
nop
nop
nop
inc %rsi
vmovups (%r11), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r15
nop
nop
nop
nop
cmp $25507, %r12
lea addresses_WC_ht+0xf382, %r12
xor %rdi, %rdi
mov (%r12), %r15
nop
nop
nop
add $17214, %r11
lea addresses_normal_ht+0xc82, %rsi
lea addresses_normal_ht+0x8082, %rdi
nop
nop
nop
nop
nop
cmp $56048, %rbx
mov $53, %rcx
rep movsb
nop
nop
nop
nop
nop
and $9728, %rcx
lea addresses_normal_ht+0x9d32, %rsi
lea addresses_WC_ht+0x19482, %rdi
nop
dec %r14
mov $88, %rcx
rep movsb
nop
add %rsi, %rsi
lea addresses_WC_ht+0x12482, %rcx
add %rdi, %rdi
mov (%rcx), %esi
nop
nop
nop
nop
nop
xor %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0xaa8b, %rbx
nop
inc %r14
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
dec %r14

// Store
lea addresses_D+0x6482, %r9
nop
dec %rbx
movw $0x5152, (%r9)
nop
nop
nop
nop
add $5841, %r9

// Store
lea addresses_D+0x6482, %rbx
nop
inc %r10
movl $0x51525354, (%rbx)
nop
nop
nop
and %r9, %r9

// REPMOV
lea addresses_D+0x38ef, %rsi
lea addresses_PSE+0x2782, %rdi
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $34, %rcx
rep movsq
nop
nop
nop
and %r13, %r13

// REPMOV
lea addresses_normal+0x17482, %rsi
lea addresses_WT+0x10a82, %rdi
nop
dec %r12
mov $62, %rcx
rep movsw
sub %r12, %r12

// Store
lea addresses_WT+0x3d82, %rcx
and $12686, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
nop
nop
inc %rdi

// Faulty Load
lea addresses_D+0x6482, %r14
nop
nop
nop
nop
nop
and %r10, %r10
movb (%r14), %r9b
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
