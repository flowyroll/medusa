.global s_prepare_buffers
s_prepare_buffers:
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1e12d, %rsi
lea addresses_UC_ht+0x19a65, %rdi
nop
nop
add %rax, %rax
mov $38, %rcx
rep movsq
nop
nop
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi

// Load
lea addresses_WT+0x17775, %rcx
nop
cmp %r9, %r9
mov (%rcx), %ax
nop
nop
nop
and $8606, %rdi

// Store
lea addresses_D+0x1b2e1, %rax
nop
nop
nop
nop
add %r13, %r13
movl $0x51525354, (%rax)
nop
nop
nop
dec %r13

// Store
mov $0x140ada0000000455, %rax
nop
and $3300, %r12
mov $0x5152535455565758, %rcx
movq %rcx, (%rax)
nop
nop
nop
nop
add %rcx, %rcx

// Load
mov $0x43d, %rdi
nop
nop
nop
nop
nop
inc %r10
mov (%rdi), %rax
and $48541, %r9

// Store
lea addresses_US+0x1e43d, %rax
sub %r13, %r13
movb $0x51, (%rax)
nop
nop
nop
add $54863, %rax

// Store
lea addresses_US+0x1e43d, %rcx
nop
sub $35167, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm0
vmovaps %ymm0, (%rcx)
nop
add %rax, %rax

// Store
lea addresses_UC+0x1db3d, %rdi
nop
nop
nop
nop
sub $18752, %r12
mov $0x5152535455565758, %rax
movq %rax, (%rdi)
xor %rcx, %rcx

// Store
lea addresses_US+0x1e43d, %r10
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r10)
dec %r10

// Store
lea addresses_RW+0xde3d, %rdi
nop
nop
nop
nop
nop
xor $35471, %rcx
movw $0x5152, (%rdi)
nop
inc %r12

// Store
lea addresses_US+0x1e43d, %r13
nop
cmp %rax, %rax
movw $0x5152, (%r13)
nop
add $27311, %r12

// Load
mov $0x43d, %r9
nop
nop
nop
cmp %r12, %r12
vmovntdqa (%r9), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rax
nop
xor %r10, %r10

// Faulty Load
lea addresses_US+0x1e43d, %rax
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov (%rax), %edi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'52': 30}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
