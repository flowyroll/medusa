.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1e0b, %r10
and $36897, %rbp
mov (%r10), %r9d
nop
nop
nop
nop
nop
cmp $50789, %r9
lea addresses_D_ht+0x1d59b, %rcx
nop
nop
and %rbx, %rbx
movb $0x61, (%rcx)
cmp $21024, %r11
lea addresses_WC_ht+0x1a3fb, %r10
nop
nop
nop
nop
nop
cmp $44837, %rbp
mov $0x6162636465666768, %rbx
movq %rbx, (%r10)
nop
nop
xor $13144, %rcx
lea addresses_WT_ht+0x1691b, %rcx
nop
nop
nop
and $2575, %r15
mov (%rcx), %ebp
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_D_ht+0x14ffb, %rbx
nop
cmp $34644, %r11
movw $0x6162, (%rbx)
nop
nop
and $36010, %r15
lea addresses_WC_ht+0x1267b, %rsi
lea addresses_A_ht+0x169fb, %rdi
nop
nop
nop
nop
and $16474, %r15
mov $17, %rcx
rep movsw
nop
sub %r15, %r15
lea addresses_A_ht+0x1c7fb, %rsi
nop
nop
nop
nop
nop
inc %rcx
movw $0x6162, (%rsi)
nop
nop
nop
nop
add $26542, %r9
lea addresses_normal_ht+0x8f73, %rsi
lea addresses_UC_ht+0x1243f, %rdi
add $35476, %r11
mov $125, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $37288, %rsi
lea addresses_A_ht+0x1615b, %rsi
lea addresses_UC_ht+0xd7b, %rdi
clflush (%rsi)
nop
xor $55733, %r15
mov $0, %rcx
rep movsw
nop
nop
and $16023, %r15
lea addresses_UC_ht+0x1a063, %rsi
lea addresses_WC_ht+0x1b065, %rdi
nop
nop
nop
add %r15, %r15
mov $4, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $17321, %rcx
lea addresses_D_ht+0x1ed85, %r15
nop
nop
xor $30973, %rbp
movb (%r15), %r11b
nop
nop
nop
cmp $45359, %r9
lea addresses_WT_ht+0xf25b, %rsi
lea addresses_A_ht+0x7dfb, %rdi
nop
nop
nop
nop
nop
add $60445, %r15
mov $5, %rcx
rep movsw
xor %rbx, %rbx
lea addresses_WT_ht+0x1db0b, %r15
clflush (%r15)
add %rcx, %rcx
mov (%r15), %r11w
nop
nop
inc %rcx
lea addresses_WC_ht+0x18ffb, %rbx
nop
nop
add $10171, %r10
mov $0x6162636465666768, %r11
movq %r11, (%rbx)
nop
add $11402, %rsi
lea addresses_WT_ht+0x1b07b, %r9
nop
nop
nop
nop
and $61416, %r10
mov $0x6162636465666768, %rbx
movq %rbx, (%r9)
nop
nop
nop
nop
nop
and $41386, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_normal+0x155fb, %rdx
nop
nop
nop
nop
xor %rcx, %rcx
movl $0x51525354, (%rdx)
nop
nop
xor $9530, %rsi

// Faulty Load
lea addresses_normal+0x155fb, %rsi
nop
nop
nop
xor %r12, %r12
mov (%rsi), %r8w
lea oracles, %rax
and $0xff, %r8
shlq $12, %r8
mov (%rax,%r8,1), %r8
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': True, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
