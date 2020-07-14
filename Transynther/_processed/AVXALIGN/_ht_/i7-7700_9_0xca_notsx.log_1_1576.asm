.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x158c2, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
cmp $51257, %r12
mov (%rbx), %r15w
nop
add $54690, %r11
lea addresses_WT_ht+0xe9c2, %rdi
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
movups %xmm3, (%rdi)
nop
nop
sub %rbx, %rbx
lea addresses_WC_ht+0xc5c2, %rsi
lea addresses_normal_ht+0xdb72, %rdi
nop
cmp $12290, %r15
mov $38, %rcx
rep movsb
nop
add %r11, %r11
lea addresses_WT_ht+0x39c2, %r15
clflush (%r15)
nop
and %rbx, %rbx
movw $0x6162, (%r15)
nop
nop
cmp $52231, %rbx
lea addresses_WC_ht+0x9d98, %rsi
lea addresses_WT_ht+0x153e2, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r11, %r11
mov $81, %rcx
rep movsw
nop
nop
nop
nop
sub $6280, %r11
pop %rsi
pop %rdx
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
push %r11
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x1198e, %r11
clflush (%r11)
nop
nop
nop
cmp %r10, %r10
movl $0x51525354, (%r11)
add %r13, %r13

// Load
lea addresses_PSE+0x1c2, %r13
nop
nop
nop
xor $33759, %r14
mov (%r13), %r10
inc %r14

// Store
lea addresses_D+0x139c2, %rax
nop
nop
nop
nop
dec %r8
movw $0x5152, (%rax)
nop
cmp $42301, %r10

// REPMOV
lea addresses_A+0x189c2, %rsi
mov $0x4fe99800000001c2, %rdi
nop
and $42060, %r13
mov $48, %rcx
rep movsw
nop
nop
nop
cmp %rdx, %rdx

// REPMOV
lea addresses_WT+0xbe42, %rsi
lea addresses_A+0xb802, %rdi
nop
cmp %rdx, %rdx
mov $42, %rcx
rep movsq
nop
nop
add %r13, %r13

// Load
lea addresses_D+0x185c2, %r8
nop
nop
add $31858, %rsi
mov (%r8), %ax
nop
nop
nop
nop
xor %rdi, %rdi

// REPMOV
lea addresses_PSE+0x158b2, %rsi
lea addresses_PSE+0x13a46, %rdi
nop
nop
nop
nop
inc %r8
mov $64, %rcx
rep movsb
nop
nop
nop
nop
dec %r8

// Store
lea addresses_PSE+0x61c2, %rcx
and %r8, %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
xor $55522, %rax

// Load
lea addresses_normal+0x6542, %rax
sub %r13, %r13
mov (%rax), %rdi
nop
nop
and %r13, %r13

// Store
mov $0x9c2, %r10
nop
nop
nop
nop
and $47466, %rdx
movl $0x51525354, (%r10)
nop
nop
and %rsi, %rsi

// Store
lea addresses_D+0x189c2, %r14
nop
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, (%r14)
add $39196, %rcx

// Store
lea addresses_UC+0xf032, %r8
nop
nop
nop
inc %r11
movw $0x5152, (%r8)
nop
nop
nop
nop
cmp %rcx, %rcx

// REPMOV
lea addresses_A+0x1c2, %rsi
lea addresses_US+0x17aa2, %rdi
clflush (%rdi)
nop
and %rdx, %rdx
mov $89, %rcx
rep movsw
nop
nop
nop
nop
sub $10394, %rdx

// Load
lea addresses_WC+0x12f3b, %r11
nop
nop
nop
nop
nop
and $20026, %rdi
mov (%r11), %ecx
inc %rax

// Store
lea addresses_D+0x16556, %r13
nop
and $50468, %r10
mov $0x5152535455565758, %r8
movq %r8, %xmm0
and $0xffffffffffffffc0, %r13
movntdq %xmm0, (%r13)
sub %rdx, %rdx

// Faulty Load
mov $0x4fe99800000001c2, %r8
clflush (%r8)
nop
and %rax, %rax
movb (%r8), %r10b
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_US'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'47': 1}
47
*/
