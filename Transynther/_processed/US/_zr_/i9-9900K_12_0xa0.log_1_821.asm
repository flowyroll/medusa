.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x13e68, %rsi
lea addresses_WT_ht+0xc758, %rdi
nop
nop
xor %r11, %r11
mov $112, %rcx
rep movsq
nop
nop
nop
nop
nop
add $3670, %r12
lea addresses_D_ht+0xdc38, %rsi
lea addresses_WC_ht+0x1cd58, %rdi
nop
nop
sub $43034, %rax
mov $12, %rcx
rep movsw
nop
nop
nop
nop
lfence
lea addresses_normal_ht+0xd905, %rsi
lea addresses_WT_ht+0x1d438, %rdi
nop
nop
nop
nop
nop
sub $62196, %r15
mov $89, %rcx
rep movsq
nop
dec %rsi
lea addresses_WT_ht+0x1ccc8, %rsi
lea addresses_WT_ht+0x1ed18, %rdi
nop
nop
nop
nop
xor %rbp, %rbp
mov $36, %rcx
rep movsb
nop
nop
nop
nop
and $61720, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x19158, %rsi
lea addresses_US+0x1a6a1, %rdi
nop
inc %r11
mov $74, %rcx
rep movsl
nop
cmp %rcx, %rcx

// Store
lea addresses_US+0x1c158, %r11
sub $19410, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r11)
nop
nop
nop
nop
add $31595, %rcx

// Store
lea addresses_RW+0x13ee8, %rsi
nop
nop
nop
nop
nop
dec %r14
movw $0x5152, (%rsi)
nop
nop
sub %r11, %r11

// REPMOV
lea addresses_UC+0x11778, %rsi
lea addresses_WC+0x34c0, %rdi
nop
nop
nop
nop
nop
xor $46176, %rbx
mov $17, %rcx
rep movsb
nop
nop
nop
xor $61218, %r14

// Store
lea addresses_UC+0x1985c, %rdi
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_WT+0x19fd0, %rbx
nop
nop
add $55115, %rcx
movl $0x51525354, (%rbx)
nop
sub $22546, %rdi

// Faulty Load
lea addresses_US+0x1c158, %rbp
cmp $49435, %rsi
mov (%rbp), %cx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_WT', 'AVXalign': True, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'00': 1}
00
*/
