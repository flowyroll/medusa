.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x190c5, %r14
and $3658, %rbx
movl $0x61626364, (%r14)
nop
nop
xor $59835, %r13
lea addresses_normal_ht+0xc045, %rbp
nop
inc %r14
vmovups (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r12
nop
nop
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x4fa5, %rcx
nop
nop
nop
nop
nop
dec %rbp
movw $0x6162, (%rcx)
nop
nop
nop
nop
cmp $36522, %rbx
lea addresses_normal_ht+0x1ba71, %r14
nop
nop
nop
add %rax, %rax
movl $0x61626364, (%r14)
nop
and %rcx, %rcx
lea addresses_A_ht+0xf4a8, %rcx
and $57920, %r12
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rax
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_UC_ht+0x16cc5, %rsi
lea addresses_WT_ht+0x10285, %rdi
nop
nop
and $59258, %r14
mov $115, %rcx
rep movsb
nop
nop
nop
nop
sub $14750, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_A+0x48c5, %rbx
sub $10521, %r14
movb (%rbx), %dl
sub $38442, %rbp

// Store
lea addresses_WC+0xc0c5, %rbx
nop
nop
nop
nop
nop
inc %r8
mov $0x5152535455565758, %r14
movq %r14, (%rbx)
nop
nop
nop
nop
dec %rdx

// Store
lea addresses_D+0x1b8f5, %rbx
nop
nop
nop
xor $11463, %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm2
and $0xffffffffffffffc0, %rbx
movntdq %xmm2, (%rbx)
nop
nop
inc %r8

// Store
lea addresses_A+0x516, %r14
and %r8, %r8
movl $0x51525354, (%r14)
inc %rcx

// Store
lea addresses_A+0x16655, %rbp
nop
nop
nop
cmp $5902, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovups %ymm2, (%rbp)
nop
sub %r8, %r8

// Store
lea addresses_WC+0x1cc0f, %rcx
nop
add %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movups %xmm1, (%rcx)
sub %rbx, %rbx

// Store
lea addresses_normal+0x13d85, %rcx
dec %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_normal+0x68c5, %rbp
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, (%rbp)
nop
xor %rcx, %rcx

// Store
lea addresses_WT+0x1a245, %r14
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%r14)
nop
nop
sub %r8, %r8

// Store
lea addresses_A+0x1b1c5, %r14
and %rdx, %rdx
movl $0x51525354, (%r14)
nop
nop
add %rbx, %rbx

// REPMOV
lea addresses_US+0x1cc5, %rsi
mov $0x4bdca100000004c5, %rdi
nop
nop
nop
sub %r8, %r8
mov $36, %rcx
rep movsq
nop
nop
nop
sub $8444, %rdi

// Store
lea addresses_RW+0xb7f5, %r11
nop
nop
nop
nop
nop
sub %rsi, %rsi
movw $0x5152, (%r11)
nop
nop
add %r14, %r14

// Faulty Load
lea addresses_WC+0xc0c5, %rdx
and $34435, %r11
vmovaps (%rdx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r14
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': True, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_US'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_NC'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'00': 5560, '45': 721, '44': 1703}
00 00 00 45 00 00 00 00 00 44 00 00 00 44 00 00 00 00 44 00 00 44 44 00 44 00 44 00 00 44 44 45 44 00 45 00 00 00 00 44 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 45 00 00 00 45 44 00 00 45 00 00 00 00 45 00 00 00 45 00 44 44 00 45 00 00 00 00 00 44 00 00 00 44 45 00 45 00 00 00 44 44 44 00 00 00 00 44 45 00 00 44 44 00 45 00 00 00 44 00 00 00 00 00 00 00 45 00 44 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 45 00 44 00 00 00 00 00 44 00 44 44 00 00 00 00 00 00 44 00 45 00 00 00 00 00 00 00 44 00 00 45 00 00 00 00 00 00 00 44 44 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 45 44 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 44 44 00 00 00 00 00 00 00 00 44 00 00 00 00 45 44 00 45 44 44 44 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 45 44 44 00 00 00 00 00 45 00 00 00 44 00 00 00 00 44 00 44 45 00 45 00 00 44 44 00 00 00 00 44 44 44 00 00 44 44 00 00 00 00 44 00 00 44 45 00 00 00 00 00 44 45 00 00 00 00 44 00 00 00 00 00 00 00 45 00 44 00 00 00 00 00 00 00 45 00 00 44 00 00 44 00 00 00 00 45 00 00 44 44 00 00 00 00 44 00 00 00 00 00 00 00 44 44 00 44 44 00 00 00 00 44 00 00 00 44 44 00 45 00 44 00 00 00 00 00 44 00 00 44 00 00 00 00 44 00 00 45 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 45 00 44 44 00 00 00 00 00 44 00 00 00 44 00 00 45 00 00 45 00 00 00 00 44 00 00 00 00 00 00 45 00 00 00 00 00 44 00 45 00 00 00 44 00 00 44 00 44 00 00 00 44 44 44 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 44 44 00 00 00 00 44 00 00 00 44 00 44 00 44 00 00 45 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 44 44 00 00 00 44 00 00 00 44 44 00 00 00 44 00 00 00 00 00 45 00 44 00 00 44 45 44 44 00 45 00 45 00 44 00 00 44 00 00 00 44 44 45 00 00 00 00 44 00 44 44 00 45 44 44 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 45 00 00 45 44 00 00 00 00 44 00 00 44 00 00 45 00 45 44 00 00 00 44 00 44 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 45 00 00 00 00 44 00 00 00 00 44 44 00 45 00 00 00 44 45 00 00 00 45 44 44 00 00 00 00 00 44 45 44 00 00 00 45 00 44 00 00 45 00 44 44 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 44 00 00 00 00 00 45 00 44 00 00 00 00 45 00 45 00 44 45 00 45 00 44 44 00 00 00 00 00 00 00 44 00 00 00 00 00 45 00 00 00 44 44 00 00 00 00 00 00 00 44 00 00 44 00 44 00 00 00 00 00 00 00 44 00 00 00 44 44 44 00 00 45 44 44 00 00 00 00 00 00 00 00 44 44 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 44 00 00 00 00 45 00 00 00 44 00 00 44 00 00 00 45 00 00 45 00 44 44 00 00 44 00 44 44 44 00 00 00 00 45 44 44 00 00 44 00 00 00 00 44 00 45 00 00 44 44 00 44 44 44 44 00 44 00 00 44 00 00 00 00 44 00 00 00 44 44 00 00 00 45 44 00 00 00 45 00 00 44 00 44 00 00 44 00 45 44 00 00 00 00 45 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 44 44 44 44 00 00 00 00 00 00 00 00 45 00 00 00 44 00 00 00
*/
