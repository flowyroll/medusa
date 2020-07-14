.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x17b12, %rsi
lea addresses_A_ht+0x15312, %rdi
clflush (%rsi)
nop
nop
nop
xor %r15, %r15
mov $111, %rcx
rep movsq
nop
inc %r9
lea addresses_A_ht+0xe692, %rsi
lea addresses_normal_ht+0x16712, %rdi
nop
nop
nop
and %r13, %r13
mov $125, %rcx
rep movsw
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x1ac33, %rsi
nop
nop
dec %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rsi)
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x16f12, %rcx
nop
nop
nop
nop
nop
sub $40605, %r12
mov (%rcx), %rsi
add %rdi, %rdi
lea addresses_WT_ht+0x1d752, %r13
clflush (%r13)
nop
cmp %rsi, %rsi
movb (%r13), %r12b
inc %r12
lea addresses_normal_ht+0x16712, %rsi
lea addresses_WC_ht+0x1beac, %rdi
and $51933, %rbx
mov $87, %rcx
rep movsl
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x16712, %rsi
nop
add $36065, %rbx
mov $0x6162636465666768, %r13
movq %r13, (%rsi)
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x11352, %r12
nop
nop
sub %rcx, %rcx
mov (%r12), %r9d
nop
cmp $53478, %rcx
lea addresses_WC_ht+0x1e6b0, %r9
clflush (%r9)
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%r9)
nop
nop
nop
nop
and %r12, %r12
lea addresses_A_ht+0x14b52, %r15
dec %r12
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
sub $42301, %rsi
lea addresses_WC_ht+0x1e502, %rsi
lea addresses_A_ht+0x9d52, %rdi
cmp %r12, %r12
mov $106, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $58512, %r15
lea addresses_A_ht+0x113b6, %rbx
nop
nop
add %r12, %r12
movb $0x61, (%rbx)
nop
nop
dec %r13
lea addresses_WC_ht+0x1a5b2, %rsi
lea addresses_WT_ht+0x12f12, %rdi
xor $55317, %r13
mov $53, %rcx
rep movsb
nop
nop
nop
nop
nop
add $30182, %rdi
lea addresses_D_ht+0x1712, %rsi
lea addresses_D_ht+0x9b12, %rdi
nop
nop
nop
nop
sub %r13, %r13
mov $15, %rcx
rep movsb
nop
nop
nop
nop
add $20063, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rbp
push %rbx
push %rcx

// Store
mov $0x2452bc0000000712, %r8
nop
nop
nop
nop
nop
add $55995, %rbp
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
add $3386, %rbx

// Store
lea addresses_normal+0x141a2, %rbx
nop
nop
nop
nop
nop
inc %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movups %xmm0, (%rbx)
nop
nop
nop
nop
cmp %rbx, %rbx

// Faulty Load
mov $0x2452bc0000000712, %r8
nop
add $31941, %rcx
movb (%r8), %r12b
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'00': 18, '4e': 1, '52': 590}
00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 4e 00 52
*/
