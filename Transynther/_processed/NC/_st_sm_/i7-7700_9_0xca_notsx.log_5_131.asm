.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x89ae, %r13
nop
nop
nop
nop
cmp %r9, %r9
vmovups (%r13), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rax
nop
add $30982, %r8
lea addresses_A_ht+0xc78, %rsi
lea addresses_WC_ht+0x1765b, %rdi
nop
nop
sub %r12, %r12
mov $126, %rcx
rep movsq
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x5d4c, %r9
nop
nop
nop
nop
nop
dec %r12
vmovups (%r9), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rax
nop
and $41249, %rsi
lea addresses_UC_ht+0x4058, %rsi
lea addresses_UC_ht+0x1ddb8, %rdi
nop
nop
sub $55306, %r13
mov $68, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $43382, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdx

// Store
mov $0x498, %rcx
sub $29994, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movaps %xmm0, (%rcx)
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_UC+0x10c78, %rcx
xor $37000, %rbp
movw $0x5152, (%rcx)
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_WC+0xd818, %r15
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovups %ymm4, (%r15)
nop
nop
nop
nop
nop
inc %r14

// Store
mov $0x6634500000000cf8, %r14
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r14)
nop
nop
and $17522, %rcx

// Load
lea addresses_US+0x124f8, %rdx
nop
nop
nop
nop
sub %r8, %r8
movb (%rdx), %cl
nop
nop
nop
nop
xor $7880, %rcx

// Load
lea addresses_WC+0x1e4f8, %r8
and %r14, %r14
mov (%r8), %bx
nop
nop
nop
sub $55358, %rbp

// Faulty Load
mov $0x6634500000000cf8, %r15
nop
nop
nop
nop
add $1685, %r8
mov (%r15), %edx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'58': 5}
58 58 58 58 58
*/
