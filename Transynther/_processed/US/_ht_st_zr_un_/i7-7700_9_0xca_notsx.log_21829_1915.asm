.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rbp
push %rbx
lea addresses_A_ht+0x6dcf, %rbp
nop
nop
nop
nop
and %rbx, %rbx
movb $0x61, (%rbp)
nop
inc %r15
pop %rbx
pop %rbp
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x17f61, %r12
nop
nop
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %r9
movq %r9, (%r12)
nop
sub %r13, %r13

// REPMOV
lea addresses_UC+0xe473, %rsi
lea addresses_WC+0x1ca3, %rdi
nop
add %r13, %r13
mov $99, %rcx
rep movsb
nop
sub $42366, %rbx

// Store
lea addresses_D+0x14c33, %rsi
nop
nop
and $34165, %r13
movw $0x5152, (%rsi)
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_D+0x15963, %r13
nop
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r13)
cmp %rcx, %rcx

// Store
lea addresses_UC+0x3833, %r13
nop
and %rcx, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r13)
sub $35000, %rbx

// Load
lea addresses_UC+0x18c33, %r13
nop
add $7557, %rbx
mov (%r13), %si
nop
and %rbx, %rbx

// Load
lea addresses_RW+0xbbb9, %rdi
nop
nop
nop
nop
nop
sub %r13, %r13
mov (%rdi), %cx
nop
nop
xor %rdi, %rdi

// Store
lea addresses_WT+0x1c733, %r13
nop
nop
nop
nop
xor $6005, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, (%r13)
nop
nop
nop
nop
xor $20885, %r13

// Load
lea addresses_RW+0x1a5b3, %rdx
nop
nop
nop
nop
nop
inc %r9
mov (%rdx), %r12
nop
and $10745, %rbx

// Store
lea addresses_UC+0x1d633, %rcx
nop
nop
inc %rdi
movb $0x51, (%rcx)
nop
sub $41171, %r13

// Store
lea addresses_RW+0x113a7, %rbx
nop
nop
nop
sub $3569, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movups %xmm2, (%rbx)
nop
nop
dec %rcx

// Load
lea addresses_UC+0x129b3, %r9
nop
nop
nop
nop
dec %rdi
vmovntdqa (%r9), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
cmp $30402, %r9

// Faulty Load
lea addresses_US+0x16033, %rcx
nop
nop
nop
and %rsi, %rsi
movups (%rcx), %xmm1
vpextrq $0, %xmm1, %rdx
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC'}, 'dst': {'congruent': 4, 'same': True, 'type': 'addresses_WC'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'67': 1, '00': 11950, '60': 3295, '32': 2, '37': 1880, 'e0': 3539, '28': 1162}
00 60 e0 e0 37 28 00 00 00 37 00 00 37 37 60 00 e0 00 60 00 28 00 00 00 37 60 00 00 00 00 00 e0 60 00 00 00 00 37 00 00 00 e0 e0 00 00 00 00 00 00 00 60 28 00 60 37 00 00 37 00 28 00 37 e0 37 00 00 00 60 e0 00 28 60 28 37 00 00 e0 37 00 00 00 00 60 00 60 28 60 60 00 e0 00 00 00 00 e0 e0 60 00 00 28 00 60 37 60 60 00 00 00 00 37 00 e0 00 00 00 00 00 00 37 00 00 e0 00 60 00 e0 00 00 00 00 00 28 00 37 00 00 00 00 00 00 00 00 e0 00 60 00 00 37 60 e0 e0 e0 00 60 37 60 00 e0 00 00 00 60 60 37 00 60 e0 e0 00 e0 e0 e0 00 28 e0 00 00 00 00 37 00 00 00 00 00 37 00 28 37 60 e0 37 00 28 e0 e0 00 60 00 60 00 00 00 00 60 00 00 e0 00 60 00 60 e0 28 00 60 60 00 00 e0 37 e0 00 00 00 00 00 00 e0 60 00 00 e0 00 37 00 00 e0 60 00 00 e0 00 60 60 00 00 00 60 60 00 00 00 e0 00 00 60 00 e0 00 e0 00 37 00 00 60 60 00 e0 00 00 60 60 00 60 00 00 28 00 00 00 00 00 00 00 e0 00 00 00 28 37 00 e0 37 e0 e0 00 e0 28 e0 00 00 00 60 00 00 00 e0 60 60 00 00 00 00 37 00 00 00 00 00 00 60 00 60 00 e0 00 00 60 00 e0 28 00 00 e0 00 60 00 00 00 e0 60 00 00 00 e0 00 00 60 00 00 60 60 00 37 00 60 60 28 00 00 e0 e0 e0 00 60 60 00 00 60 37 e0 00 00 00 28 e0 e0 00 60 00 e0 28 00 e0 60 37 60 00 60 00 00 00 00 00 37 00 00 00 00 00 60 00 00 e0 60 00 00 00 e0 00 00 60 28 00 00 e0 00 00 60 00 60 00 37 60 e0 00 28 00 00 60 00 60 00 37 28 00 60 00 00 e0 37 e0 00 28 60 00 00 60 28 60 60 00 60 00 e0 00 28 37 00 00 60 e0 00 00 00 00 60 e0 00 00 00 00 37 00 e0 00 60 00 00 60 60 00 60 60 00 37 28 e0 00 00 00 37 e0 00 60 e0 37 60 e0 28 e0 00 60 00 37 00 37 00 00 00 00 00 00 37 00 00 37 00 00 00 e0 00 e0 00 28 60 00 00 00 37 00 60 00 00 60 e0 28 00 60 00 00 e0 60 37 00 00 e0 60 00 00 00 00 00 e0 37 60 00 60 e0 00 00 00 00 00 60 e0 37 e0 00 37 00 e0 00 e0 e0 28 37 00 00 e0 e0 e0 e0 00 37 00 00 28 00 00 00 e0 00 60 00 e0 00 e0 00 60 e0 e0 28 00 60 28 60 e0 00 60 00 60 00 00 e0 e0 00 00 00 37 60 60 00 e0 60 60 00 00 00 00 00 60 e0 00 60 00 00 00 00 37 00 00 e0 e0 00 00 00 60 00 00 00 00 e0 00 37 00 00 37 00 00 00 e0 00 00 00 00 00 e0 00 28 60 00 00 00 e0 e0 00 00 00 00 00 e0 60 00 00 e0 00 e0 37 28 37 00 37 00 00 e0 60 e0 00 e0 00 00 e0 00 60 60 00 37 60 00 00 00 60 e0 00 00 e0 00 e0 00 28 e0 60 e0 60 00 28 28 00 00 00 00 00 00 e0 00 e0 37 00 00 28 60 e0 60 00 60 00 00 00 28 00 e0 00 00 00 37 00 00 00 28 37 00 00 00 00 00 e0 00 00 00 00 00 00 60 e0 60 00 e0 28 00 60 00 00 28 00 e0 28 60 00 60 37 00 00 37 00 e0 00 00 e0 60 00 37 28 e0 00 00 60 00 e0 00 00 00 00 e0 60 00 00 00 00 e0 00 e0 00 00 00 00 60 00 00 00 00 37 00 60 28 37 00 00 60 00 60 e0 00 37 60 00 60 00 00 60 00 00 37 00 37 00 60 00 60 60 28 e0 00 00 60 28 60 00 37 60 00 60 e0 00 e0 00 37 60 00 00 60 00 00 60 37 60 e0 60 e0 00 e0 37 37 60 60 37 00 00 37 00 e0 37 00 00 37 e0 37 00 00 00 37 00 00 e0 00 e0 e0 e0 37 00 00 e0 00 00 e0 00 00 00 00 e0 e0 00 28 e0 e0 e0 37 e0 00 60 00 00 00 e0 00 37 e0 00 00 e0 37 00 60 00 00 00 00 00 e0 e0 00 00 00 00 00 00 00 00 00 e0 00 00 00 60 00 e0 e0 28 00 60 00 60 00 28 60 60 00 00 00 37 60 60 e0 e0 00 00 00 00 60
*/
