.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rsi
lea addresses_normal_ht+0x2d82, %rsi
clflush (%rsi)
sub %r12, %r12
movw $0x6162, (%rsi)
nop
dec %r9
pop %rsi
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rsi

// Store
lea addresses_WC+0x1f5c2, %rcx
nop
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %r10
movq %r10, (%rcx)
nop
nop
nop
nop
nop
sub %r15, %r15

// Load
lea addresses_WT+0x11b82, %rsi
nop
and $30081, %r13
movb (%rsi), %r10b
nop
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_normal+0x55c2, %r14
nop
nop
dec %r13
mov $0x5152535455565758, %r10
movq %r10, (%r14)
nop
nop
sub $60925, %r10

// Load
lea addresses_WT+0x23c2, %r13
nop
nop
nop
nop
inc %r15
mov (%r13), %r14d
nop
inc %rsi

// Load
lea addresses_WT+0x1d1c2, %rcx
nop
and %rbx, %rbx
mov (%rcx), %r10w
inc %r13

// Store
mov $0x20cd1c0000000ac2, %r13
nop
sub $52153, %r15
movb $0x51, (%r13)
nop
nop
nop
add $43501, %r15

// Store
lea addresses_UC+0x18ac2, %r13
clflush (%r13)
xor %r10, %r10
movb $0x51, (%r13)
nop
sub %r13, %r13

// Store
lea addresses_PSE+0x14852, %r10
nop
nop
nop
nop
add %r14, %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovups %ymm5, (%r10)
nop
nop
nop
nop
and $46197, %rcx

// Store
lea addresses_US+0x1f5c2, %rcx
clflush (%rcx)
nop
nop
nop
nop
add $28658, %r14
mov $0x5152535455565758, %rbx
movq %rbx, (%rcx)
nop
nop
nop
nop
cmp %rsi, %rsi

// Faulty Load
lea addresses_US+0x1f5c2, %r15
nop
nop
nop
and %rcx, %rcx
mov (%r15), %ebx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'58': 26}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
