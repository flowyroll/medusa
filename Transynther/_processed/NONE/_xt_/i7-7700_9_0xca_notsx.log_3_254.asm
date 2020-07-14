.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rbp
push %rcx
lea addresses_A_ht+0x13dc1, %rcx
nop
nop
nop
sub %r12, %r12
mov (%rcx), %r10d
cmp $23091, %rbp
pop %rcx
pop %rbp
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdx

// Load
lea addresses_A+0x1f5fd, %rcx
nop
nop
nop
nop
nop
dec %rdx
mov (%rcx), %r10w
nop
nop
nop
nop
sub %rcx, %rcx

// Load
lea addresses_RW+0x195fd, %r14
nop
nop
xor $58202, %rbp
vmovaps (%r14), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
nop
sub %r14, %r14

// Load
mov $0x2605bc0000000ffd, %rdx
nop
nop
nop
xor %rbx, %rbx
movups (%rdx), %xmm4
vpextrq $0, %xmm4, %r10
nop
nop
nop
nop
and %r14, %r14

// Load
mov $0xb03, %rbx
nop
nop
nop
cmp $29839, %rbp
mov (%rbx), %r12d
nop
nop
nop
nop
nop
inc %r14

// Load
lea addresses_RW+0x91a9, %rbx
nop
nop
nop
sub %r14, %r14
vmovaps (%rbx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbp
nop
nop
nop
nop
nop
cmp $40030, %rcx

// Store
lea addresses_PSE+0x1855d, %rbp
add %rcx, %rcx
mov $0x5152535455565758, %r14
movq %r14, (%rbp)
nop
nop
nop
nop
nop
inc %r12

// Faulty Load
lea addresses_WT+0x195fd, %rdx
nop
nop
nop
nop
nop
add %rbp, %rbp
mov (%rdx), %r10w
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'39': 3}
39 39 39
*/
