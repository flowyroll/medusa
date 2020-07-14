.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x12fa2, %rsi
nop
nop
cmp %r10, %r10
mov $0x6162636465666768, %r12
movq %r12, %xmm7
movups %xmm7, (%rsi)
nop
xor $32010, %r14
lea addresses_WC_ht+0x8ca2, %rsi
lea addresses_D_ht+0x16322, %rdi
nop
nop
cmp $30322, %r15
mov $50, %rcx
rep movsq
nop
nop
sub %r15, %r15
lea addresses_WT_ht+0x1ccd2, %rcx
nop
nop
nop
nop
nop
xor %rdi, %rdi
movw $0x6162, (%rcx)
add $30194, %rcx
lea addresses_A_ht+0x68a2, %rsi
nop
nop
and %r10, %r10
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
xor $25595, %r12
lea addresses_normal_ht+0x10be1, %r15
nop
and $17472, %r10
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_WC_ht+0x1a422, %rdi
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm4
movups %xmm4, (%rdi)
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0xae32, %rsi
lea addresses_A_ht+0x1335c, %rdi
cmp $51888, %r9
mov $49, %rcx
rep movsw
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x3fea, %rsi
lea addresses_A_ht+0x57a2, %rdi
nop
nop
xor %r10, %r10
mov $22, %rcx
rep movsw
nop
and $27462, %rdi
lea addresses_WC_ht+0x17fa2, %rdi
clflush (%rdi)
nop
nop
add %r15, %r15
movups (%rdi), %xmm4
vpextrq $1, %xmm4, %r12
nop
nop
nop
nop
sub $24487, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_US+0x5822, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $9464, %r13
movb $0x51, (%rsi)
nop
nop
and $18518, %r9

// Store
mov $0x7e2a60000000ea2, %r9
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm2
movups %xmm2, (%r9)
nop
nop
nop
add $19788, %r15

// Load
lea addresses_WT+0x1428c, %rdi
and $9696, %r13
mov (%rdi), %r12w
nop
nop
add $60303, %r9

// Store
lea addresses_normal+0xbfa2, %rcx
clflush (%rcx)
nop
and %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovntdq %ymm6, (%rcx)
nop
nop
nop
nop
sub $36839, %r15

// Store
lea addresses_WT+0x1d5ec, %r9
xor $44291, %rdi
mov $0x5152535455565758, %r15
movq %r15, (%r9)
nop
nop
nop
xor $8980, %r15

// Faulty Load
mov $0x4bd5260000000fa2, %rcx
add $27130, %r15
mov (%rcx), %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'00': 15690, '79': 10, '58': 6129}
00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 58 00 58 00 00 00 00 00 58 00 58 00 00 00 00 00 00 00 00 00 00 58 00 58 00 58 00 00 58 58 00 00 00 00 00 58 00 00 00 58 00 00 58 00 58 00 00 58 00 58 00 00 00 58 00 00 00 58 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 58 58 00 58 58 00 00 00 00 00 58 00 00 00 00 58 00 00 58 00 00 58 58 00 00 58 00 00 00 00 58 00 00 58 58 00 58 00 00 58 00 00 58 00 00 58 00 00 00 58 00 58 00 58 00 58 00 58 00 00 00 58 00 00 00 00 00 58 58 58 58 00 00 00 58 58 00 00 00 00 00 00 00 58 00 00 00 00 58 00 00 58 58 00 00 00 00 58 58 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 58 58 00 00 00 00 00 00 58 00 00 00 00 58 00 58 00 00 58 00 58 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 58 00 00 58 58 00 58 00 58 00 58 00 58 00 58 58 00 58 00 00 58 00 00 00 00 00 58 00 00 58 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 58 00 00 00 58 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 00 58 00 00 00 00 00 00 00 00 58 58 00 00 00 00 58 00 58 58 58 58 00 00 58 00 00 00 00 58 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 58 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 58 00 58 00 00 00 00 00 00 00 58 00 00 58 00 58 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 58 00 00 00 00 58 00 00 00 58 00 00 00 00 58 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 58 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 58 58 00 00 58 00 00 58 00 58 00 00 58 00 58 58 00 58 00 58 00 58 00 58 58 58 00 58 00 00 00 00 58 00 58 00 00 00 00 00 00 00 00 00 58 58 00 00 58 00 00 00 58 00 58 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 58 00 58 58 00 58 58 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 58 00 00 58 00 00 58 00 00 00 00 00 00 00 58 58 58 58 58 00 00 58 00 00 00 00 58 00 00 00 00 58 00 00 58 00 00 00 58 00 58 58 00 00 00 00 58 58 00 58 00 00 58 00 00 58 00 00 58 00 00 58 58 00 00 00 58 00 58 58 00 58 00 00 00 58 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 58 00 00 00 58 00 00 00 58 00 00 00 00 58 00 00 00 00 00 58 00 58 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 58 00 00 58 00 00 58 58 58 00 58 00 00 00 58 00 00 00 58 00 00 58 00 58 00 00 58 00 00 00 00 00 58 00 00 58 58 00 00 58 00 00 00 58 58 00 00 00 58 58 00 00 58 58 00 58 58 58 58 00 58 00 58 00 58 00 00 58 00 00 58 00 00 58 00 00 00 00 00 00 58 00 00 00 00 58 58 00 00 00 00 00 00 00 00 58 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 58 00 00 00 58 00 00 00 00 00 58 00 58 00 00 58 00 00 58 00 00 00 00 58 00 00 00 00 00 00 00 58 58 58 00 58 00 00 00 58 58 58 00 00 58 00 00 58 58 00 58 00 00 00 58 00 00 00 00 00
*/
