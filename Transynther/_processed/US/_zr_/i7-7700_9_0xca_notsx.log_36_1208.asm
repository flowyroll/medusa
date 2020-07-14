.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x16aa6, %rbx
nop
nop
nop
nop
nop
and $2929, %rdx
mov $0x6162636465666768, %r9
movq %r9, %xmm2
movups %xmm2, (%rbx)
nop
nop
nop
nop
nop
lfence
lea addresses_normal_ht+0x17570, %rax
nop
nop
nop
inc %r10
movb (%rax), %dl
nop
nop
nop
nop
nop
add $9008, %rdx
lea addresses_D_ht+0x7ed6, %rsi
lea addresses_normal_ht+0x13686, %rdi
dec %r9
mov $101, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0xad86, %r12
nop
nop
nop
nop
nop
add %rcx, %rcx
movups (%r12), %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
cmp $19313, %r9
lea addresses_UC_ht+0x254e, %rdx
xor %r12, %r12
movb (%rdx), %r10b
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_WC_ht+0x52ee, %rdx
nop
nop
nop
nop
nop
and %r10, %r10
movw $0x6162, (%rdx)
nop
nop
nop
nop
nop
dec %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rdx

// Load
lea addresses_RW+0x1f806, %rbx
nop
nop
nop
inc %r14
movaps (%rbx), %xmm6
vpextrq $0, %xmm6, %r9
nop
nop
nop
nop
xor $1168, %rbx

// Store
lea addresses_US+0xa5de, %r11
nop
nop
nop
nop
cmp $49049, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovups %ymm3, (%r11)

// Exception!!!
mov (0), %r9
cmp $31490, %rbp

// Store
lea addresses_A+0x1b86, %rbp
nop
cmp %r9, %r9
mov $0x5152535455565758, %r11
movq %r11, (%rbp)
nop
sub %rbp, %rbp

// Load
lea addresses_WT+0xdb86, %rdx
nop
sub %r11, %r11
vmovups (%rdx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r9
nop
add %rbp, %rbp

// Load
lea addresses_A+0x4322, %r15
nop
nop
nop
nop
and $53603, %r11
vmovups (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r9
nop
cmp $41226, %r9

// Faulty Load
lea addresses_US+0x2386, %r14
nop
nop
nop
sub $7469, %rbx
mov (%r14), %r11
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'00': 36}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
