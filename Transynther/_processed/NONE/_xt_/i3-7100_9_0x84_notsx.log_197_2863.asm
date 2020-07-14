.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x3c50, %rsi
lea addresses_normal_ht+0x11d49, %rdi
nop
nop
nop
inc %r9
mov $12, %rcx
rep movsw
xor $21137, %r11
lea addresses_WC_ht+0x18af8, %r13
nop
nop
nop
dec %r11
movb $0x61, (%r13)
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x3878, %rsi
lea addresses_WC_ht+0x5ef8, %rdi
nop
add %r10, %r10
mov $57, %rcx
rep movsl
nop
nop
nop
dec %r10
lea addresses_A_ht+0x15af8, %rcx
nop
nop
nop
xor $44585, %r9
mov (%rcx), %r13
nop
xor $18885, %r13
lea addresses_D_ht+0x197dc, %r13
nop
nop
nop
nop
inc %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r13)
nop
nop
nop
nop
nop
add $18919, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rbp
push %rbx
push %rcx
push %rdi

// Store
lea addresses_A+0x1b6f8, %r13
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%r13)
nop
nop
nop
dec %r12

// Store
lea addresses_normal+0x9498, %rcx
nop
and %r12, %r12
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rcx)
and $14760, %r13

// Store
mov $0x7e8d7b0000000078, %r12
nop
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%r12)
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_WT+0x12f8, %r12
nop
and %rcx, %rcx
movl $0x51525354, (%r12)
nop
nop
nop
add %rcx, %rcx

// Load
mov $0xd50, %rbx
nop
nop
nop
nop
nop
inc %r11
mov (%rbx), %bp
nop
nop
nop
inc %rbx

// Store
lea addresses_RW+0xa2a, %rbx
nop
xor %rbp, %rbp
mov $0x5152535455565758, %r13
movq %r13, (%rbx)
nop
nop
nop
inc %rcx

// Load
lea addresses_US+0x98b8, %rdi
nop
nop
nop
nop
nop
xor $60480, %rbx
movb (%rdi), %r13b
nop
nop
add %r12, %r12

// Faulty Load
lea addresses_normal+0x3ef8, %r11
nop
add $12223, %rdi
mov (%r11), %r13
lea oracles, %rbp
and $0xff, %r13
shlq $12, %r13
mov (%rbp,%r13,1), %r13
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'34': 197}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
