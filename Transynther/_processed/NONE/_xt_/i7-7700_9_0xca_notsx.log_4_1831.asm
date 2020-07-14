.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rbx
lea addresses_D_ht+0xa585, %r15
nop
nop
and %r13, %r13
mov (%r15), %r8
nop
nop
cmp $46716, %rbx
pop %rbx
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rdi
push %rdx
push %rsi

// Store
mov $0x66, %r9
nop
and %rdi, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, (%r9)
nop
and %rsi, %rsi

// Store
lea addresses_US+0x17911, %r13
nop
cmp $37095, %r8
mov $0x5152535455565758, %rsi
movq %rsi, (%r13)
nop
nop
nop
nop
nop
and $13680, %r12

// Store
lea addresses_RW+0x1feb5, %r8
nop
nop
cmp %r9, %r9
movb $0x51, (%r8)
nop
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_WT+0x15c55, %rdx
nop
xor $55060, %r9
movb $0x51, (%rdx)
nop
sub $55812, %rsi

// Store
mov $0x12c49b0000000433, %r9
nop
nop
nop
and $47431, %rsi
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovups %ymm0, (%r9)
nop
nop
sub %r13, %r13

// Store
lea addresses_WT+0x147cd, %r12
nop
nop
nop
and %r8, %r8
movb $0x51, (%r12)
nop
nop
nop
nop
and %r9, %r9

// Load
lea addresses_D+0x1ca75, %r13
nop
cmp $40905, %rsi
vmovaps (%r13), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r8
xor $55182, %r12

// Store
lea addresses_RW+0x14135, %r8
and $42390, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r8)
nop
nop
add $32471, %r13

// Store
lea addresses_normal+0x2af5, %r9
nop
nop
nop
nop
nop
dec %rdx
movb $0x51, (%r9)
nop
nop
nop
nop
add %r9, %r9

// Load
lea addresses_PSE+0x15ab5, %r12
xor %rsi, %rsi
mov (%r12), %dx
nop
nop
nop
and %rdx, %rdx

// Load
mov $0x475, %r8
nop
sub %rdx, %rdx
movb (%r8), %r9b
xor $30891, %r8

// Faulty Load
lea addresses_WT+0x1d2b5, %r9
sub %r13, %r13
mov (%r9), %r8w
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'39': 4}
39 39 39 39
*/
