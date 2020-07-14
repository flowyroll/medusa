.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x10eef, %rsi
lea addresses_WT_ht+0x3c3f, %rdi
sub $25426, %r14
mov $115, %rcx
rep movsw
nop
nop
nop
add %r8, %r8
lea addresses_A_ht+0xe0d5, %rsi
lea addresses_A_ht+0x856f, %rdi
inc %rbx
mov $110, %rcx
rep movsl
nop
nop
nop
nop
and $59439, %rbx
lea addresses_WC_ht+0x23f, %rbx
nop
nop
nop
sub %r11, %r11
movups (%rbx), %xmm6
vpextrq $0, %xmm6, %rdi
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x8a6f, %rsi
lea addresses_D_ht+0x2c3f, %rdi
nop
nop
nop
xor $35359, %r13
mov $111, %rcx
rep movsq
nop
nop
nop
nop
nop
add $5584, %r8
lea addresses_D_ht+0x1c7bf, %rsi
lea addresses_UC_ht+0x267b, %rdi
clflush (%rdi)
nop
inc %r14
mov $69, %rcx
rep movsb
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rdi
push %rdx
push %rsi

// Store
mov $0x5d01a3000000091e, %r15
nop
nop
nop
nop
nop
and $46459, %rdi
movw $0x5152, (%r15)
nop
nop
nop
nop
dec %rdx

// Load
lea addresses_WT+0xf91f, %r15
nop
nop
nop
add $42774, %r10
mov (%r15), %si
nop
nop
xor %rdx, %rdx

// Store
lea addresses_WT+0x1af3f, %rdi
nop
nop
nop
nop
and $45284, %r15
mov $0x5152535455565758, %r14
movq %r14, (%rdi)
nop
nop
nop
dec %rsi

// Faulty Load
lea addresses_PSE+0x1b63f, %r14
sub %r13, %r13
mov (%r14), %r15
lea oracles, %r14
and $0xff, %r15
shlq $12, %r15
mov (%r14,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM'}
{'33': 39}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
