.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rbp
push %rdi
push %rdx

// Store
mov $0xec4, %rdi
nop
nop
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %r10
movq %r10, %xmm3
movups %xmm3, (%rdi)
nop
nop
cmp %r10, %r10

// Store
lea addresses_WT+0x6a50, %rdx
nop
add $20012, %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%rdx)
nop
and $59424, %r8

// Store
lea addresses_WC+0x4594, %r13
nop
nop
nop
nop
nop
add $38903, %rdx
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
cmp $34574, %rdx

// Load
mov $0xf54, %r13
nop
nop
nop
nop
nop
xor %rdi, %rdi
movb (%r13), %r14b
nop
nop
add $33270, %r10

// Store
lea addresses_PSE+0xdc34, %rdi
nop
inc %r14
movb $0x51, (%rdi)
nop
nop
nop
add %r14, %r14

// Store
lea addresses_D+0x18014, %rdx
nop
nop
nop
nop
dec %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm0
and $0xffffffffffffffc0, %rdx
vmovntdq %ymm0, (%rdx)
add %r13, %r13

// Faulty Load
lea addresses_normal+0x1d814, %rdx
nop
inc %r14
movb (%rdx), %r10b
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'34': 52}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
