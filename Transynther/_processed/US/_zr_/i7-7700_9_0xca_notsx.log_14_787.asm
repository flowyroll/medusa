.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x11981, %rax
clflush (%rax)
nop
nop
nop
xor $7740, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rax)
nop
nop
nop
dec %r11
lea addresses_D_ht+0x137f1, %r14
nop
nop
nop
nop
nop
and $65392, %rdi
movb $0x61, (%r14)
xor $29955, %r8
lea addresses_WT_ht+0x1b00d, %r11
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov (%r11), %eax
sub $43851, %rdi
lea addresses_D_ht+0x10cf1, %r13
nop
cmp %r14, %r14
mov (%r13), %r8w
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0xb4f1, %rax
nop
add %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_D_ht+0x1b6d1, %rcx
nop
nop
nop
nop
nop
add %r8, %r8
mov $0x6162636465666768, %r11
movq %r11, %xmm2
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm2, (%rcx)
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0xc7b6, %rsi
lea addresses_UC_ht+0x1d2f1, %rdi
nop
cmp $271, %rax
mov $107, %rcx
rep movsl
nop
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0x6471, %rdi
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %r13
movq %r13, (%rdi)
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0xf1, %rcx
nop
nop
nop
cmp $59314, %rdi
mov (%rcx), %r8d
nop
nop
nop
sub $21098, %r8
lea addresses_normal_ht+0x11d31, %rcx
cmp %r8, %r8
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r13
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x13a29, %r8
nop
nop
nop
sub $50618, %r13
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
sub $37588, %rsi
lea addresses_WC_ht+0xa7b1, %rdi
sub %r8, %r8
movb $0x61, (%rdi)
nop
nop
nop
add %r8, %r8
lea addresses_D_ht+0x1b0b1, %rcx
nop
xor %r13, %r13
movl $0x61626364, (%rcx)
nop
nop
nop
nop
add %r11, %r11
lea addresses_UC_ht+0xebe1, %r11
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r11)
xor %r8, %r8
lea addresses_normal_ht+0x15d01, %rsi
lea addresses_UC_ht+0xfa49, %rdi
nop
nop
nop
dec %r14
mov $94, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $33062, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x92b1, %rbx
nop
xor $26265, %rdi
movl $0x51525354, (%rbx)
nop
nop
inc %r14

// Store
lea addresses_WC+0x185b9, %rdx
xor %r9, %r9
movb $0x51, (%rdx)
nop
nop
nop
nop
add $11817, %r9

// Load
lea addresses_UC+0x1d8f1, %rdi
nop
nop
nop
nop
nop
cmp %r9, %r9
mov (%rdi), %r8
dec %r10

// Store
lea addresses_normal+0x15949, %rdi
add $11095, %r10
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
sub $41000, %rbx

// REPMOV
lea addresses_PSE+0x16071, %rsi
lea addresses_normal+0x1fc15, %rdi
nop
nop
nop
cmp %r10, %r10
mov $84, %rcx
rep movsw
dec %rbx

// Faulty Load
lea addresses_US+0x40f1, %r9
xor $61860, %rdx
mov (%r9), %r8
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_PSE'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'00': 14}
00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
