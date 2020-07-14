.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x13c2c, %rdi
nop
nop
nop
nop
and $42987, %r9
movw $0x6162, (%rdi)
nop
and $50999, %r14
lea addresses_normal_ht+0xe91e, %rbp
nop
nop
nop
nop
inc %rbx
mov $0x6162636465666768, %r13
movq %r13, %xmm5
movups %xmm5, (%rbp)
nop
and $22609, %r13
lea addresses_UC_ht+0xdf96, %r14
nop
nop
nop
nop
xor $12462, %rdx
vmovups (%r14), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
nop
nop
xor %r13, %r13
lea addresses_A_ht+0x9e8e, %rsi
lea addresses_WT_ht+0x1be81, %rdi
clflush (%rsi)
nop
nop
xor $20617, %rdx
mov $30, %rcx
rep movsb
sub $5777, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rbx
push %rdi
push %rdx

// Store
lea addresses_UC+0x118da, %r9
nop
nop
nop
nop
nop
sub $32498, %rdi
mov $0x5152535455565758, %r14
movq %r14, (%r9)
nop
nop
nop
nop
nop
xor $44876, %rdi

// Store
lea addresses_WT+0x15976, %rbx
nop
nop
nop
nop
and %rdx, %rdx
movl $0x51525354, (%rbx)
xor %rdi, %rdi

// Store
lea addresses_normal+0x436, %r14
nop
nop
and $60200, %r12
movb $0x51, (%r14)
nop
nop
nop
inc %rdx

// Load
lea addresses_WC+0x14b6, %r13
nop
cmp %rbx, %rbx
mov (%r13), %di
nop
nop
add %rbx, %rbx

// Load
lea addresses_normal+0x5b60, %rdx
xor $43849, %r12
mov (%rdx), %edi
nop
nop
nop
sub %r13, %r13

// Store
mov $0x676, %rdi
xor $16005, %rdx
mov $0x5152535455565758, %r12
movq %r12, (%rdi)
nop
nop
dec %r12

// Store
lea addresses_PSE+0x7976, %r12
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r12)
nop
nop
nop
nop
xor $31073, %rbx

// Faulty Load
mov $0x1c43d00000000176, %rbx
nop
and $23012, %r12
movups (%rbx), %xmm3
vpextrq $1, %xmm3, %r13
lea oracles, %r9
and $0xff, %r13
shlq $12, %r13
mov (%r9,%r13,1), %r13
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'00': 3999, '45': 11740, '47': 6090}
00 45 45 47 47 47 45 47 47 45 47 47 45 00 45 47 47 45 45 45 47 45 00 45 47 45 47 47 45 47 00 45 47 47 45 00 45 47 45 47 45 00 45 45 47 45 47 47 47 00 45 47 45 00 45 45 45 45 47 47 47 45 47 47 45 45 00 45 45 45 45 00 45 45 47 45 00 45 47 00 45 47 45 47 00 45 45 45 00 45 45 47 47 00 45 47 47 00 45 45 45 47 47 00 45 45 00 45 45 45 45 47 00 45 47 47 45 45 45 45 45 00 45 45 47 47 00 45 45 00 45 47 00 45 47 45 47 45 47 45 00 45 45 45 47 47 47 47 45 47 45 47 47 00 45 45 47 45 45 00 45 45 45 00 45 45 00 45 47 00 45 45 00 45 45 47 45 47 00 45 00 45 47 45 45 45 47 00 45 45 45 45 45 00 45 45 47 45 47 47 47 47 00 45 47 00 45 00 45 47 45 00 45 45 00 45 47 45 45 45 45 00 45 45 47 45 45 00 45 45 45 47 47 45 47 47 45 45 47 00 45 47 00 45 45 45 00 45 47 45 47 45 45 47 47 00 45 47 45 47 47 00 45 45 00 45 47 45 45 45 47 47 45 00 45 45 45 47 45 45 00 45 47 45 00 45 45 45 45 47 00 45 45 45 47 45 47 45 47 00 45 00 45 47 47 47 45 00 45 45 45 47 45 45 00 45 00 45 00 45 47 45 47 47 47 00 45 45 47 00 45 45 45 00 45 00 45 45 47 45 00 45 00 45 47 45 00 45 45 00 45 47 45 45 45 47 47 00 45 45 00 45 00 45 00 45 45 47 45 47 45 45 47 00 45 45 47 45 00 45 45 45 47 47 45 45 00 45 45 45 45 45 00 45 00 45 45 45 45 45 47 47 47 00 45 45 45 47 45 47 45 45 45 45 00 45 45 45 00 45 45 45 45 47 45 45 45 47 47 47 00 45 45 47 00 45 47 47 45 00 45 47 00 45 47 45 45 47 47 47 45 00 45 47 45 45 00 45 45 00 45 47 47 45 00 45 47 47 47 47 47 45 00 45 45 45 45 45 47 00 45 45 00 45 00 45 47 45 47 45 45 47 00 45 45 45 45 47 45 45 00 45 00 45 47 45 45 45 00 45 45 45 00 45 45 45 45 00 45 45 45 47 47 47 47 45 45 45 47 45 47 45 00 45 47 45 45 45 47 47 00 45 45 45 45 45 45 00 45 47 45 00 45 00 45 47 45 45 45 45 00 45 00 45 45 00 45 47 47 47 45 00 45 47 47 47 47 45 00 45 45 47 47 45 45 45 47 47 47 47 45 45 45 45 45 45 00 45 00 45 45 00 45 47 47 45 00 45 47 47 45 47 00 45 47 45 00 45 45 45 45 47 00 45 00 45 45 47 47 45 47 45 45 45 00 45 00 45 47 00 45 45 45 45 47 45 00 45 45 47 47 45 47 47 45 47 45 45 47 47 47 47 45 47 47 45 45 47 00 45 45 45 45 45 45 45 45 45 00 45 47 45 45 45 00 45 45 45 47 45 45 00 47 45 45 00 45 45 00 45 47 00 45 47 47 00 45 45 00 45 00 45 47 47 00 45 45 45 00 45 47 00 45 47 47 47 45 45 45 47 45 00 45 45 45 45 47 45 00 45 45 45 47 00 45 45 45 00 45 45 00 45 45 45 47 45 45 47 00 45 45 47 45 00 45 45 45 47 45 00 45 00 45 47 47 45 00 45 45 47 45 00 45 47 47 00 45 00 45 47 47 45 00 45 47 45 00 45 00 45 47 47 47 47 00 45 00 45 47 45 47 47 47 00 45 47 45 45 45 47 47 45 45 47 47 45 45 45 47 47 00 45 45 47 47 47 00 45 45 45 00 45 45 47 00 45 45 45 45 45 47 00 45 45 45 45 00 45 47 45 47 47 45 00 45 47 47 00 45 00 45 45 00 45 45 45 47 45 00 45 45 47 45 45 47 47 00 45 00 45 00 00 45 47 47 00 45 45 45 45 47 47 00 45 45 45 00 45 47 45 00 45 00 45 45 45 45 45 00 45 45 00 45 00 45 00 45 00 45 47 00 45 00 45 47 45 45 45 45 45 00 45 00 45 00 45 45 45 00 45 45 45 00 45 47 00 45 45 00 45 45 47 47 45 00 45 00 45 47 00 45 00 45 45 45 45 00 45 47 00 45 47 47 47 45 45 00 45 45 45 00 45 45 45 00 45 47 47 47 45
*/
