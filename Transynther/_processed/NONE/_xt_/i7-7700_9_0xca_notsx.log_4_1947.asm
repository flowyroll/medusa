.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x5737, %r10
nop
dec %rcx
movw $0x6162, (%r10)
nop
nop
dec %rdx
lea addresses_D_ht+0x1e857, %rsi
lea addresses_UC_ht+0x178f7, %rdi
nop
nop
nop
sub $5480, %r12
mov $79, %rcx
rep movsw
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x1e937, %rsi
lea addresses_UC_ht+0x1cf07, %rdi
nop
nop
nop
nop
nop
xor $24929, %r12
mov $100, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rbx
push %rdi
push %rsi

// Store
lea addresses_D+0x122f7, %r13
nop
nop
xor $33541, %r9
movl $0x51525354, (%r13)
nop
nop
nop
cmp %r9, %r9

// Load
mov $0x6bc4460000000db7, %r10
xor %r13, %r13
vmovups (%r10), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r14
nop
nop
xor %r10, %r10

// Load
lea addresses_normal+0x141f7, %r9
nop
nop
nop
dec %rsi
vmovups (%r9), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r10
nop
nop
nop
sub $40754, %r9

// Load
lea addresses_RW+0x1f2f7, %rbx
nop
nop
nop
nop
cmp %rdi, %rdi
movb (%rbx), %r14b
nop
nop
nop
nop
inc %rsi

// Faulty Load
lea addresses_RW+0x1f2f7, %rbx
nop
add $4041, %r9
vmovups (%rbx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r14
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'32': 4}
32 32 32 32
*/
