.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xc4af, %rbp
nop
nop
nop
nop
nop
xor $23531, %r11
movw $0x6162, (%rbp)
nop
nop
nop
nop
add $14326, %rbp
lea addresses_WT_ht+0x1b9ef, %r10
nop
nop
nop
nop
nop
sub $19467, %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%r10)
and %r10, %r10
lea addresses_D_ht+0x94ef, %rsi
nop
nop
nop
nop
cmp $36226, %rax
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r10
nop
nop
nop
add $30041, %r8
lea addresses_normal_ht+0x1ccef, %r11
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
nop
nop
nop
nop
and $54747, %rax
lea addresses_WC_ht+0xaaef, %rsi
nop
nop
nop
dec %rbp
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r10
nop
add $33175, %rbp
lea addresses_A_ht+0x164ef, %rsi
lea addresses_normal_ht+0x1ad55, %rdi
nop
nop
nop
nop
nop
add %r13, %r13
mov $108, %rcx
rep movsl
nop
sub $28234, %r13
lea addresses_WC_ht+0x16627, %rsi
nop
nop
nop
nop
inc %rax
mov (%rsi), %rdi
nop
nop
nop
nop
xor %rax, %rax
lea addresses_D_ht+0xc0ef, %r8
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r8), %ax
nop
nop
nop
cmp $62198, %rcx
lea addresses_D_ht+0xe0af, %rsi
lea addresses_D_ht+0xda6f, %rdi
clflush (%rdi)
nop
nop
nop
sub %r11, %r11
mov $77, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r8
push %rdi
push %rdx

// Store
lea addresses_normal+0x13607, %r15
nop
nop
nop
dec %r12
movl $0x51525354, (%r15)
dec %rdi

// Store
mov $0x6216d800000004ef, %r10
nop
nop
and $61026, %r8
movb $0x51, (%r10)
nop
nop
nop
nop
sub $47911, %rdx

// Faulty Load
mov $0x6216d800000004ef, %r10
nop
nop
nop
nop
xor %r15, %r15
movb (%r10), %r12b
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rdx
pop %rdi
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM'}
{'00': 414, '51': 11916, '6d': 9499}
51 6d 51 6d 51 51 6d 6d 6d 6d 51 51 51 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 51 51 6d 6d 51 51 51 6d 6d 51 51 6d 6d 6d 51 6d 6d 51 51 51 6d 6d 51 51 6d 51 51 51 6d 6d 51 51 6d 51 51 6d 6d 6d 6d 6d 51 51 6d 6d 51 51 51 00 51 6d 51 51 51 51 6d 6d 51 6d 51 6d 51 6d 51 51 6d 51 6d 51 51 6d 51 51 6d 51 51 6d 51 51 51 6d 51 51 51 6d 51 51 51 51 00 6d 51 6d 6d 51 51 6d 6d 6d 51 51 51 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 51 6d 51 6d 51 6d 51 51 51 6d 6d 6d 6d 51 51 6d 51 6d 51 6d 00 51 6d 51 6d 51 51 51 6d 6d 51 6d 6d 51 51 6d 51 51 6d 51 51 51 51 51 51 6d 6d 51 51 6d 51 51 51 51 51 6d 51 51 6d 6d 51 51 6d 51 51 6d 6d 6d 6d 51 51 6d 6d 51 6d 51 51 51 51 51 6d 51 6d 51 51 51 51 6d 51 6d 6d 51 51 51 51 51 6d 51 51 51 51 6d 6d 51 00 51 51 6d 51 51 6d 6d 51 6d 51 51 6d 6d 51 6d 51 51 51 51 51 51 6d 6d 6d 51 51 6d 51 51 51 51 6d 6d 51 6d 51 51 6d 51 6d 51 6d 6d 51 6d 6d 51 6d 6d 6d 51 6d 51 51 51 6d 51 51 51 6d 6d 51 51 6d 51 51 00 51 51 51 51 6d 6d 51 51 51 6d 6d 51 6d 51 51 6d 6d 51 51 51 51 6d 6d 51 51 6d 51 6d 6d 6d 51 00 6d 6d 6d 51 6d 51 51 6d 51 51 51 6d 6d 51 51 6d 6d 6d 51 51 6d 51 6d 51 51 51 6d 6d 6d 6d 6d 00 6d 6d 6d 51 51 6d 00 6d 51 6d 51 6d 51 00 51 51 6d 51 6d 6d 6d 51 6d 6d 51 51 51 6d 6d 51 6d 00 6d 51 51 51 6d 6d 6d 6d 51 6d 51 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 51 6d 6d 51 51 6d 51 6d 51 6d 51 6d 6d 51 51 6d 51 6d 00 51 51 51 6d 6d 51 6d 6d 6d 6d 6d 6d 51 51 6d 51 51 51 51 51 51 6d 51 51 51 51 00 51 6d 6d 6d 51 51 6d 6d 51 51 6d 6d 51 51 6d 6d 51 6d 51 6d 51 51 51 51 6d 51 51 51 6d 6d 6d 51 6d 51 6d 51 6d 51 51 6d 6d 51 6d 51 6d 6d 51 51 51 51 51 51 51 6d 51 51 51 6d 6d 6d 51 6d 51 51 51 6d 00 51 51 51 6d 6d 51 6d 6d 51 51 51 51 51 51 51 6d 6d 51 6d 6d 51 00 51 00 51 6d 6d 51 51 51 00 6d 51 6d 6d 51 6d 51 51 6d 6d 6d 6d 51 6d 51 51 6d 51 6d 6d 6d 6d 51 51 6d 51 51 51 6d 6d 51 6d 51 51 51 51 6d 51 51 51 6d 51 51 51 51 51 51 6d 51 6d 6d 6d 6d 6d 51 51 6d 51 51 6d 6d 51 6d 6d 6d 51 51 6d 51 51 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 51 51 6d 6d 6d 6d 51 51 6d 51 6d 6d 51 51 6d 6d 51 51 6d 51 6d 6d 6d 6d 6d 51 6d 6d 51 51 6d 6d 6d 6d 6d 6d 6d 6d 51 51 51 6d 51 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 51 51 6d 6d 51 51 6d 6d 51 6d 6d 51 6d 51 51 6d 6d 51 6d 6d 6d 51 51 6d 00 6d 51 51 6d 6d 51 51 51 6d 6d 00 51 51 51 51 6d 6d 51 6d 51 6d 51 6d 51 6d 00 51 00 51 6d 51 6d 51 6d 51 6d 6d 51 51 51 51 6d 51 51 6d 51 51 6d 6d 00 51 51 51 6d 51 51 51 51 51 51 51 51 51 6d 6d 51 00 6d 6d 51 51 6d 51 6d 51 51 51 6d 6d 6d 51 00 6d 6d 51 51 51 6d 6d 51 51 51 51 6d 51 6d 6d 51 6d 51 51 51 51 51 51 51 51 51 51 51 6d 6d 6d 6d 6d 51 51 51 6d 51 51 51 6d 51 51 6d 51 51 6d 51 51 6d 51 51 51 51 51 6d 51 6d 51 51 6d 6d 6d 51 6d 51 6d 51 6d 51 51 51 51 51 6d 51 6d 6d 6d 6d 51 51 6d 51 51 51 6d 51 51 51 6d 51 6d 51 6d 6d 51 6d 51 51 51 6d 6d 6d 6d 51 51 51 51 6d 6d 6d 6d 6d 51 51 6d 6d 51 51 6d 6d 6d 51 6d 6d 51 51 51 6d 51 6d 51 51 51 6d 6d 51 6d 51 51 00 51 51 51 6d 6d 6d 51 6d 51 51 6d 6d 00 51 6d 51 51 51 6d 51 51 6d 6d 51 6d 6d 51 51 6d 6d 51 51 51 6d 6d 51 51 51 51 51 51
*/
