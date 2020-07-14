.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdx
lea addresses_D_ht+0x118f, %rdx
nop
nop
nop
nop
and $17363, %r13
vmovups (%rdx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
nop
nop
and $58822, %r8
lea addresses_A_ht+0x1162f, %rcx
nop
nop
sub $57724, %r9
mov (%rcx), %r11
nop
nop
nop
nop
nop
add %r9, %r9
pop %rdx
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
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
push %rdi

// Store
mov $0xe47890000000909, %r13
nop
nop
nop
nop
nop
add $24452, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%r13)
nop
nop
nop
nop
add %r13, %r13

// Load
lea addresses_RW+0x1e8af, %rdi
nop
nop
nop
nop
nop
sub %r10, %r10
movups (%rdi), %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
nop
sub $7829, %r10

// Load
lea addresses_WT+0x14a0f, %r13
nop
nop
nop
inc %rbx
mov (%r13), %r14
inc %rbx

// Faulty Load
lea addresses_normal+0x1a0f, %rbx
nop
nop
dec %rdi
mov (%rbx), %r14
lea oracles, %r10
and $0xff, %r14
shlq $12, %r14
mov (%r10,%r14,1), %r14
pop %rdi
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
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'34': 23}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
