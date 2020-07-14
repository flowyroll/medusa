.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x8e34, %r12
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r12)
nop
xor $58376, %r14
lea addresses_A_ht+0xc5b9, %rsi
lea addresses_D_ht+0x8a34, %rdi
nop
nop
nop
nop
inc %r14
mov $26, %rcx
rep movsw
nop
inc %r12
lea addresses_A_ht+0x18234, %rsi
lea addresses_normal_ht+0x16c34, %rdi
clflush (%rsi)
dec %r14
mov $50, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $9565, %r12
lea addresses_normal_ht+0x17234, %rsi
lea addresses_normal_ht+0x9a34, %rdi
nop
nop
nop
nop
and %rdx, %rdx
mov $64, %rcx
rep movsw
nop
nop
inc %r14
lea addresses_D_ht+0x15490, %rsi
lea addresses_normal_ht+0x16f0c, %rdi
cmp %r14, %r14
mov $60, %rcx
rep movsw
and $12957, %rdi
lea addresses_D_ht+0x14124, %r14
nop
nop
nop
xor %r12, %r12
movb (%r14), %cl
nop
nop
and $21257, %rdi
lea addresses_WC_ht+0x10e6c, %rsi
lea addresses_normal_ht+0x1a2b4, %rdi
nop
nop
xor $45204, %rbp
mov $77, %rcx
rep movsq
nop
nop
nop
add $56067, %rbp
lea addresses_A_ht+0x654d, %rsi
lea addresses_D_ht+0xb1b4, %rdi
nop
inc %rbp
mov $127, %rcx
rep movsq
cmp %rdi, %rdi
lea addresses_normal_ht+0x11634, %rsi
lea addresses_normal_ht+0x175b4, %rdi
and $19755, %r14
mov $43, %rcx
rep movsb
nop
and %r12, %r12
lea addresses_WC_ht+0x12e34, %rsi
lea addresses_UC_ht+0xe274, %rdi
add $30947, %r14
mov $78, %rcx
rep movsq
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0xf3e4, %rdx
nop
nop
sub $43215, %r12
mov (%rdx), %rdi
nop
nop
nop
nop
dec %r12
lea addresses_normal_ht+0x17d34, %r14
nop
nop
sub $56159, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
sub %rbp, %rbp
lea addresses_UC_ht+0x7d90, %rsi
lea addresses_UC_ht+0x6fd, %rdi
add $55150, %r14
mov $110, %rcx
rep movsl
dec %rsi
lea addresses_WT_ht+0x17cf4, %rsi
lea addresses_WC_ht+0x1a734, %rdi
nop
nop
nop
lfence
mov $20, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_WC_ht+0x15b34, %rsi
lea addresses_UC_ht+0x1cc94, %rdi
clflush (%rdi)
dec %r14
mov $3, %rcx
rep movsl
nop
nop
nop
nop
dec %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %r9
push %rsi

// Store
lea addresses_normal+0xc234, %rsi
nop
nop
nop
add $38101, %r9
movw $0x5152, (%rsi)
nop
nop
dec %r9

// Store
lea addresses_A+0x897a, %rsi
nop
nop
nop
nop
sub $55270, %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
nop
nop
cmp $21897, %r10

// Load
lea addresses_WC+0x20a4, %r11
nop
sub $44260, %r13
mov (%r11), %r8d
nop
nop
xor %r10, %r10

// Store
mov $0x4b648b0000000d2c, %r10
nop
nop
nop
nop
add $64836, %r14
movb $0x51, (%r10)
nop
nop
nop
nop
add %r13, %r13

// Store
mov $0xb1c, %r14
clflush (%r14)
nop
nop
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
nop
nop
sub %r10, %r10

// Store
mov $0x22bda00000004d4, %rsi
nop
nop
nop
nop
and %r9, %r9
movw $0x5152, (%rsi)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rsi
nop
nop
nop
and $50687, %r8

// Store
lea addresses_normal+0xbe94, %rsi
nop
nop
nop
nop
xor %r11, %r11
movb $0x51, (%rsi)
nop
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_PSE+0x11e42, %r10
nop
nop
nop
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
nop
and $48276, %r14

// Store
lea addresses_D+0x1dc34, %r14
nop
nop
nop
inc %r10
movl $0x51525354, (%r14)
nop
nop
xor %r13, %r13

// Store
lea addresses_US+0x19e2c, %r8
nop
cmp $8227, %rsi
movl $0x51525354, (%r8)
nop
nop
and $2105, %r14

// Faulty Load
lea addresses_normal+0xc234, %r13
nop
sub %r9, %r9
movb (%r13), %r8b
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rsi
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 8, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
