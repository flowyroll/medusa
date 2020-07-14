.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xf95d, %rsi
nop
add $57396, %r15
mov (%rsi), %cx
inc %r9
lea addresses_normal_ht+0x941f, %r15
inc %rdx
mov (%r15), %r9d
nop
and %rcx, %rcx
lea addresses_D_ht+0x1782d, %r12
nop
nop
nop
cmp $23380, %rbx
movl $0x61626364, (%r12)
nop
nop
inc %r15
lea addresses_D_ht+0x482d, %r15
nop
nop
nop
nop
sub $192, %r12
mov $0x6162636465666768, %rdx
movq %rdx, (%r15)
nop
nop
nop
cmp %r9, %r9
lea addresses_D_ht+0xc42d, %rbx
cmp %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, (%rbx)
sub $62181, %rcx
lea addresses_A_ht+0x181dd, %r9
nop
lfence
mov (%r9), %si
nop
and %r9, %r9
lea addresses_WC_ht+0x1a42d, %r12
nop
nop
sub %rdx, %rdx
movb $0x61, (%r12)
and $22131, %rbx
lea addresses_WT_ht+0x11cad, %rsi
lea addresses_UC_ht+0x19e4d, %rdi
nop
nop
nop
add %rbx, %rbx
mov $36, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WC_ht+0xeb2d, %rbx
nop
nop
nop
nop
nop
add $6128, %r9
mov $0x6162636465666768, %r15
movq %r15, %xmm2
vmovups %ymm2, (%rbx)
nop
nop
nop
nop
xor $49583, %r12
lea addresses_WC_ht+0xa82d, %rsi
clflush (%rsi)
nop
xor %rdx, %rdx
movb (%rsi), %cl
nop
add %rcx, %rcx
lea addresses_A_ht+0x6a2d, %rsi
lea addresses_UC_ht+0x1d1cd, %rdi
nop
nop
nop
nop
and $59686, %r12
mov $13, %rcx
rep movsq
nop
nop
inc %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rsi

// Store
mov $0x446b88000000043d, %rcx
nop
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
inc %r14

// Store
lea addresses_WC+0xf57d, %r12
nop
nop
nop
sub $15452, %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm0
vmovups %ymm0, (%r12)
nop
nop
and $9352, %r10

// Load
lea addresses_PSE+0x1a28d, %rsi
dec %rbp
movb (%rsi), %r14b
nop
nop
nop
nop
nop
xor $13411, %r12

// Store
lea addresses_US+0xa02d, %r12
nop
nop
nop
nop
nop
sub $39994, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
vmovntdq %ymm6, (%r12)
nop
sub $33287, %r9

// Store
lea addresses_UC+0x1be2d, %rsi
nop
nop
inc %r14
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
cmp $49441, %rbp

// Faulty Load
lea addresses_US+0xa02d, %r10
nop
nop
nop
nop
nop
xor $11619, %r12
movups (%r10), %xmm6
vpextrq $1, %xmm6, %rbp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'00': 4}
00 00 00 00
*/
