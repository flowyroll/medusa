.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdi

// Store
lea addresses_PSE+0x596a, %rax
nop
nop
nop
nop
xor $36801, %r14
movl $0x51525354, (%rax)
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_PSE+0x596a, %r12
nop
nop
inc %rdi
mov $0x5152535455565758, %r10
movq %r10, (%r12)
nop
nop
xor $10234, %r10

// Store
lea addresses_UC+0x3652, %rax
nop
nop
nop
nop
sub $56310, %r10
movw $0x5152, (%rax)
nop
nop
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_PSE+0x596a, %rax
xor %r12, %r12
vmovntdqa (%rax), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 4, '58': 58}
00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58
*/
