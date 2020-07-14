.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %rcx
push %rdx
push %rsi
lea addresses_WT_ht+0xeed7, %rsi
nop
sub $13619, %r15
mov (%rsi), %r10
nop
nop
nop
xor $15963, %rdx
lea addresses_A_ht+0x146ef, %r8
and %r12, %r12
movups (%r8), %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_A_ht+0x2bf4, %r10
nop
inc %r12
movups (%r10), %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
and $1392, %r10
lea addresses_D_ht+0x356f, %rsi
nop
nop
nop
and $20545, %rdx
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r10
and %rdx, %rdx
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x157af, %r12
nop
nop
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movntdq %xmm6, (%r12)
nop
nop
nop
nop
dec %rsi

// Store
mov $0xf7, %r14
nop
nop
cmp %rdx, %rdx
movw $0x5152, (%r14)
nop
sub %rbx, %rbx

// Load
mov $0x22c4bd00000000af, %rsi
nop
nop
nop
cmp $53513, %rdx
mov (%rsi), %r12w
nop
nop
nop
nop
nop
dec %rbx

// Faulty Load
lea addresses_WC+0x116f, %rsi
nop
nop
and %rdi, %rdi
movntdqa (%rsi), %xmm1
vpextrq $0, %xmm1, %r8
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_WC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_P', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 224}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
