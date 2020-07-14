.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1ae82, %r11
nop
nop
nop
nop
xor $48129, %r8
mov $0x6162636465666768, %r9
movq %r9, %xmm0
vmovups %ymm0, (%r11)
nop
nop
sub $18897, %rcx
lea addresses_UC_ht+0x2d4a, %rsi
lea addresses_WT_ht+0x1cbf2, %rdi
nop
nop
nop
inc %r9
mov $46, %rcx
rep movsq
inc %rsi
lea addresses_WT_ht+0x12fc6, %rsi
nop
nop
nop
nop
and %rdi, %rdi
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
add $46866, %r9
lea addresses_WC_ht+0x274a, %rsi
lea addresses_UC_ht+0x1714a, %rdi
nop
xor $46722, %r8
mov $67, %rcx
rep movsb
nop
nop
nop
nop
nop
and $30292, %r11
lea addresses_UC_ht+0x1054a, %rsi
lea addresses_WC_ht+0xad4a, %rdi
nop
nop
nop
nop
cmp %r11, %r11
mov $86, %rcx
rep movsw
nop
add %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WC+0x30a6, %rsi
lea addresses_PSE+0x10632, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $18, %rcx
rep movsl
nop
nop
nop
add $1428, %rsi

// Store
lea addresses_WT+0x18b4a, %rcx
nop
nop
nop
nop
nop
cmp $49787, %rbx
movl $0x51525354, (%rcx)
nop
sub %r14, %r14

// REPMOV
mov $0x94a, %rsi
lea addresses_PSE+0x854a, %rdi
xor $15407, %rdx
mov $29, %rcx
rep movsq
nop
nop
nop
dec %rbx

// Store
mov $0x972ba000000014a, %r15
nop
nop
nop
nop
xor $52933, %rbp
movw $0x5152, (%r15)
nop
nop
sub %rbx, %rbx

// Faulty Load
mov $0x972ba000000014a, %r14
nop
nop
sub $5621, %rdx
mov (%r14), %rcx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'60': 1, '28': 110, '00': 4084, '38': 1, '52': 1461}
52 00 52 00 00 52 00 00 00 00 00 00 00 52 52 00 00 52 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 52 00 00 00 52 00 00 52 00 00 00 00 52 00 00 00 00 00 00 00 00 00 52 52 52 52 00 00 52 00 00 00 00 52 52 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 52 00 00 00 00 00 00 52 00 00 00 00 00 52 52 00 00 00 52 00 00 52 00 52 00 00 52 00 00 00 00 52 00 00 00 52 52 00 00 00 00 00 00 52 52 00 00 52 00 52 00 00 00 52 00 00 52 00 00 00 00 52 52 52 00 00 00 00 00 00 52 00 00 00 00 00 00 52 52 00 52 00 52 00 00 00 00 00 00 00 28 52 52 00 00 00 00 00 00 28 00 00 52 52 52 00 00 52 00 00 52 00 00 00 52 00 52 00 00 00 00 00 00 00 52 00 00 00 52 00 52 00 00 00 00 52 00 00 00 00 00 52 00 00 52 00 52 00 00 52 00 00 00 00 00 28 00 00 52 00 00 52 00 00 52 00 00 00 52 28 52 52 00 00 00 00 00 28 00 00 00 00 00 00 00 00 00 00 52 52 00 00 00 52 52 00 00 00 00 00 52 52 00 00 52 00 00 52 00 52 00 00 00 00 52 00 00 52 00 52 28 00 00 00 00 00 00 00 28 52 00 00 00 00 28 00 52 00 52 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 52 52 00 00 00 00 00 52 00 00 00 52 52 00 52 00 00 52 00 00 52 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 52 00 52 00 00 00 52 00 00 00 52 52 52 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 28 00 00 52 00 00 00 00 52 52 00 52 00 00 52 00 00 52 00 00 00 52 52 00 00 00 00 00 00 00 52 00 00 00 00 00 00 52 00 00 00 00 28 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 52 00 00 00 00 52 00 52 52 00 00 52 52 00 00 52 00 00 52 00 00 52 00 00 00 00 52 28 52 00 00 00 52 00 52 00 00 52 00 52 00 00 52 00 00 00 00 52 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 52 00 52 00 52 52 52 00 52 00 00 00 00 00 52 00 00 00 52 00 00 00 00 00 52 28 00 52 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 52 00 52 52 52 52 52 00 52 00 52 52 00 52 00 52 00 00 00 00 52 52 00 00 00 00 00 00 52 00 00 52 00 00 28 00 00 00 00 00 00 00 52 00 00 00 00 00 00 28 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 52 00 00 00 00 00 00 52 00 00 52 00 00 00 00 00 52 00 00 52 00 52 52 00 52 00 00 00 00 00 00 52 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 52 00 00 00 00 00 00 00 00 00 52 00 00 52 00 52 52 00 00 00 52 52 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 52 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 52 00 00 52 00 52 00 00 28 52 00 52 00 00 52 00 00 00 00 00 00 00 00 00 52 52 00 00 00 00 52 00 52 00 00 52 00 00 52 00 52 52 52 00 00 00 00 00 52 00 52 52 00 00 00 52 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 52 00 52 00 00 00 52 00 00 00 52 52 00 00 52 52 52 52 00 00 00 00 00 00 00 52 00 52 52 00 52 00 00 00 00 00 52 00 00 00 52 00 00 52 00 00 52 52 52 00 52 52 00 52 00 52 52 00 00 28 00 00 00 00 00 00 00 00 00 00 00 00 28 52 00 00 00 52 00 00 00 52 52 52 00 00 52 00 52 00 00 00 52 00 00 00 00 00 00 00 28 00 00 00 52 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 52 52 00 00 28 00 52 00 00 00 52 00 52 52 00 00 52 00 00 52 00 00 00 52 00 00 00 52 00 00 00 52 00 00 28 00 00 00 00 00 00 00 00 52
*/
