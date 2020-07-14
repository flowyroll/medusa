.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1aa43, %rsi
lea addresses_A_ht+0xfed3, %rdi
nop
nop
sub $14359, %r15
mov $5, %rcx
rep movsb
nop
nop
nop
nop
cmp $24663, %r11
lea addresses_WC_ht+0x6543, %r10
nop
nop
nop
cmp %rax, %rax
mov (%r10), %r11
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_A_ht+0xf485, %r11
nop
nop
nop
nop
xor $36942, %rcx
mov (%r11), %r15w
and $8122, %r11
lea addresses_WT_ht+0x2127, %r15
xor %rdi, %rdi
mov (%r15), %r10
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_normal_ht+0xeab3, %rcx
nop
nop
nop
dec %rdi
movw $0x6162, (%rcx)
nop
inc %rsi
lea addresses_normal_ht+0x9243, %rax
clflush (%rax)
nop
nop
and %rcx, %rcx
movw $0x6162, (%rax)
nop
nop
nop
and %r15, %r15
lea addresses_A_ht+0x2063, %rsi
lea addresses_WT_ht+0x177f3, %rdi
clflush (%rsi)
clflush (%rdi)
inc %r12
mov $108, %rcx
rep movsl
nop
nop
nop
and %r11, %r11
lea addresses_UC_ht+0x1018b, %r10
nop
nop
cmp %rsi, %rsi
movb $0x61, (%r10)
nop
nop
nop
add $44408, %rax
lea addresses_WC_ht+0x18a43, %r11
nop
sub %rax, %rax
mov (%r11), %rsi
inc %r10
lea addresses_WT_ht+0x19dcb, %rsi
lea addresses_D_ht+0xb1b5, %rdi
nop
nop
nop
nop
nop
sub $5258, %r15
mov $52, %rcx
rep movsq
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x13d03, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
add %r14, %r14
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
and %rsi, %rsi

// REPMOV
lea addresses_PSE+0x9443, %rsi
lea addresses_UC+0x1d65b, %rdi
nop
nop
nop
nop
nop
dec %r13
mov $79, %rcx
rep movsw
dec %r11

// Store
lea addresses_WT+0x19490, %rdi
cmp %rcx, %rcx
mov $0x5152535455565758, %r13
movq %r13, (%rdi)
nop
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_PSE+0xec43, %rdi
clflush (%rdi)
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, (%rdi)
nop
nop
nop
nop
dec %r13

// Store
lea addresses_A+0xc243, %r11
nop
dec %r14
mov $0x5152535455565758, %r10
movq %r10, %xmm2
movups %xmm2, (%r11)
nop
nop
add %r14, %r14

// Faulty Load
lea addresses_US+0xa243, %rsi
nop
nop
xor $11656, %rdi
mov (%rsi), %cx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_PSE'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': True, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'58': 1}
58
*/
