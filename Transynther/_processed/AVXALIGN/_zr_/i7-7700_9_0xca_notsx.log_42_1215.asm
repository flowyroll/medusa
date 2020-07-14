.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x9d5a, %r15
nop
nop
nop
nop
nop
sub %r12, %r12
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_A_ht+0x19cda, %r15
nop
nop
nop
nop
inc %r11
movb $0x61, (%r15)
nop
nop
nop
cmp %r11, %r11
lea addresses_normal_ht+0xf07a, %r9
nop
nop
nop
dec %r11
vmovups (%r9), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x1a, %rsi
lea addresses_normal_ht+0xc3da, %rdi
nop
nop
nop
cmp %r14, %r14
mov $30, %rcx
rep movsq
cmp %r12, %r12
lea addresses_WT_ht+0x18e9a, %r12
and $59996, %r14
movl $0x61626364, (%r12)
nop
nop
nop
nop
and %r15, %r15
lea addresses_D_ht+0x9cda, %r12
nop
nop
nop
sub $52344, %r15
vmovups (%r12), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r14
nop
nop
nop
nop
nop
add %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rax
push %rdi
push %rsi

// Load
mov $0xcc82100000002da, %rdi
nop
nop
nop
nop
nop
xor %r15, %r15
mov (%rdi), %r12w
nop
add %r15, %r15

// Load
lea addresses_UC+0x50da, %r9
nop
nop
nop
nop
nop
sub $65403, %r15
movb (%r9), %r10b
dec %r10

// Store
lea addresses_US+0xfefa, %r12
nop
nop
and %rsi, %rsi
movw $0x5152, (%r12)
xor %rsi, %rsi

// Store
mov $0x7ea13e00000000da, %r9
nop
nop
nop
nop
add $21874, %rax
movw $0x5152, (%r9)
nop
nop
cmp $40088, %rdi

// Store
lea addresses_US+0x13ada, %rsi
nop
nop
inc %rdi
movl $0x51525354, (%rsi)
nop
nop
nop
xor $30465, %rax

// Faulty Load
mov $0x7ea13e00000000da, %r12
nop
nop
nop
nop
nop
add $24493, %rsi
movaps (%r12), %xmm7
vpextrq $1, %xmm7, %r10
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 42}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
