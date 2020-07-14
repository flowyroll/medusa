.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x13963, %rsi
lea addresses_UC_ht+0xeb23, %rdi
nop
nop
and $49854, %rbx
mov $54, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x95c7, %r11
nop
add %r15, %r15
mov (%r11), %r9w
nop
inc %r15
lea addresses_normal_ht+0x9163, %rsi
lea addresses_UC_ht+0x7a0f, %rdi
nop
nop
nop
xor $454, %r14
mov $100, %rcx
rep movsq
nop
nop
and %r14, %r14
lea addresses_D_ht+0x1c563, %rsi
lea addresses_WT_ht+0x8663, %rdi
nop
nop
nop
nop
nop
xor %r9, %r9
mov $56, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $20821, %r9
lea addresses_UC_ht+0x8be3, %r11
add %rdi, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm1
and $0xffffffffffffffc0, %r11
vmovntdq %ymm1, (%r11)
add $2179, %rcx
lea addresses_normal_ht+0x2603, %r15
nop
nop
nop
and $40232, %rcx
mov (%r15), %r11
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0x13563, %rsi
lea addresses_normal_ht+0x9563, %rdi
nop
nop
nop
xor $11539, %r14
mov $17, %rcx
rep movsl
nop
dec %rdi
lea addresses_normal_ht+0x1dd63, %rbx
nop
cmp $33400, %r15
movb (%rbx), %r11b
nop
nop
nop
add $63534, %r9
lea addresses_UC_ht+0x4a2b, %rsi
lea addresses_A_ht+0x1611f, %rdi
nop
nop
nop
and %r9, %r9
mov $76, %rcx
rep movsl
nop
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0x10d01, %r14
nop
nop
nop
cmp $11811, %rbx
mov $0x6162636465666768, %r15
movq %r15, %xmm7
movups %xmm7, (%r14)
xor $22059, %rbx
lea addresses_D_ht+0xec1d, %rsi
lea addresses_A_ht+0x108c3, %rdi
nop
nop
and $58950, %r14
mov $125, %rcx
rep movsw
nop
nop
nop
and $46833, %r15
lea addresses_D_ht+0x1298f, %rsi
lea addresses_A_ht+0x15163, %rdi
nop
nop
xor $59685, %r14
mov $9, %rcx
rep movsl
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rcx

// Store
lea addresses_WT+0x3d63, %rcx
nop
nop
nop
nop
nop
add %r8, %r8
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovaps %ymm6, (%rcx)
nop
and %rbp, %rbp

// Store
lea addresses_UC+0x93b1, %rcx
nop
nop
nop
nop
nop
sub %r8, %r8
movw $0x5152, (%rcx)
nop
add %r15, %r15

// Load
lea addresses_normal+0x3963, %r14
clflush (%r14)
nop
dec %r9
mov (%r14), %rcx
nop
nop
sub $49012, %r15

// Store
lea addresses_A+0x1fa3, %r15
nop
add $53670, %r9
movw $0x5152, (%r15)
nop
nop
nop
nop
nop
cmp $639, %rbp

// Faulty Load
lea addresses_US+0x18163, %rcx
nop
nop
nop
sub $46774, %r8
mov (%rcx), %bp
lea oracles, %r9
and $0xff, %rbp
shlq $12, %rbp
mov (%r9,%rbp,1), %rbp
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'00': 15}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
