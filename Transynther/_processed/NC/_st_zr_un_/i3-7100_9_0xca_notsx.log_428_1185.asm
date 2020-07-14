.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xd7f0, %rsi
lea addresses_A_ht+0xd518, %rdi
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $105, %rcx
rep movsb
nop
nop
inc %r8
lea addresses_normal_ht+0x1dccd, %rcx
nop
sub $44258, %rbp
movw $0x6162, (%rcx)
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x51d0, %rsi
lea addresses_WC_ht+0x2650, %rdi
add %r9, %r9
mov $43, %rcx
rep movsl
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x171d0, %r9
clflush (%r9)
nop
nop
nop
nop
cmp %rdx, %rdx
movb $0x61, (%r9)
sub $57988, %rdi
lea addresses_D_ht+0x18498, %rsi
lea addresses_UC_ht+0xd940, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $115, %rcx
rep movsl
nop
nop
xor $47448, %rcx
lea addresses_WT_ht+0x58d0, %rsi
lea addresses_UC_ht+0xdbd0, %rdi
xor %r14, %r14
mov $118, %rcx
rep movsq
nop
nop
and $56480, %r14
lea addresses_normal_ht+0xe780, %rsi
lea addresses_WC_ht+0xfed0, %rdi
nop
mfence
mov $71, %rcx
rep movsw
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x91c0, %rsi
lea addresses_normal_ht+0x100f0, %rdi
nop
nop
inc %rdx
mov $55, %rcx
rep movsb
and %rsi, %rsi
lea addresses_WT_ht+0x11ed0, %rsi
nop
inc %rcx
movb $0x61, (%rsi)
inc %r9
lea addresses_UC_ht+0x1adf8, %rsi
lea addresses_A_ht+0x5608, %rdi
nop
nop
nop
xor $12103, %rbp
mov $42, %rcx
rep movsb
nop
nop
nop
nop
dec %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r9
push %rdi
push %rsi

// Store
mov $0x3516ab0000000290, %rsi
xor %r10, %r10
movw $0x5152, (%rsi)
nop
nop
cmp %r13, %r13

// Store
lea addresses_UC+0xf390, %r9
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %r15
movq %r15, (%r9)
nop
nop
nop
nop
inc %r13

// Store
lea addresses_WC+0x179d0, %r13
nop
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %rdi
movq %rdi, (%r13)
nop
nop
nop
sub %r9, %r9

// Faulty Load
mov $0x7fde6700000009d0, %r15
nop
and $13427, %rdi
movb (%r15), %r9b
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rsi
pop %rdi
pop %r9
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC', 'size': 8, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'58': 355, '00': 70, 'a0': 3}
00 58 58 58 58 58 00 58 00 58 00 00 00 58 a0 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 00 58 58 00 00 58 58 00 58 58 58 00 00 58 58 58 58 00 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 a0 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 00 00 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 a0 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58
*/
