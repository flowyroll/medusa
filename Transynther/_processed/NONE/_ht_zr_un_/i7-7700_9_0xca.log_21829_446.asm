.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r8
push %rbx
push %rsi
lea addresses_WC_ht+0x683a, %r10
nop
and %r8, %r8
mov (%r10), %si
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0x1746a, %r8
nop
cmp $58341, %r12
mov (%r8), %r13w
nop
nop
nop
nop
nop
dec %r14
lea addresses_UC_ht+0x843a, %r13
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%r13), %r10w
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_D_ht+0x547a, %r14
nop
nop
nop
add $44941, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm4
movups %xmm4, (%r14)
nop
nop
nop
nop
cmp %r13, %r13
pop %rsi
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rdi

// Load
lea addresses_US+0x6eba, %rdi
nop
sub $16394, %rbp
mov (%rdi), %r14d
nop
nop
inc %rbp

// Store
lea addresses_WC+0x5077, %r10
nop
xor $6475, %r8
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
add %r14, %r14

// Faulty Load
lea addresses_WC+0x8c3a, %rdi
nop
nop
nop
nop
nop
xor $59129, %rax
mov (%rdi), %r14
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'48': 254, '47': 24, '00': 15122, 'ff': 67, '49': 33, '6c': 3172, '6d': 3157}
00 00 00 00 00 6c 00 00 6c 00 00 00 6c 00 00 00 00 6c 00 6c 00 00 00 00 00 00 00 00 6c 00 00 6c 6c 6c 00 00 00 00 00 00 6c 00 00 00 00 00 00 00 6c 6c 00 00 6c 6c 00 00 00 6c 00 00 00 00 00 00 6c 6c 00 00 6c 6c 6c 00 00 00 6c 00 00 48 6c 00 00 00 00 6c 00 6c 6c 00 00 00 6c 00 6c 00 6c 00 6c 00 00 00 00 6c 00 00 00 00 00 6c ff 6c 00 00 00 00 00 6c 00 6c 00 00 00 00 00 00 6c 6c 00 6c 00 6c 6c 00 00 48 6c 00 6c 6c 6c 6c 6c 00 6c 00 6c 6c 00 6c 00 00 6c 00 00 00 00 00 00 6c 00 00 00 6c 00 6c 6c 00 00 00 00 00 00 00 6c 00 00 6c 00 00 6c 00 00 00 00 6c 6c 00 00 00 6c 6c 00 00 48 6c 00 6c 6c 00 6c 00 00 00 6c 00 00 6c 00 6c 00 00 00 6c 00 00 00 00 00 00 00 6c 00 6c 00 00 6c 00 00 00 00 00 00 00 6c 6c 00 00 00 00 6c 00 00 00 00 00 00 00 00 00 6c 00 00 6c 00 00 00 6c 00 00 00 00 00 6c 00 6c 00 00 00 00 6c 6c 00 00 00 6c 6c 00 00 00 00 00 00 00 00 00 00 6c 6c 00 00 6c 00 00 00 6c 00 6c 00 6c 00 00 00 6c 00 00 6c 00 00 6c 00 00 00 00 6c 00 00 6c 00 00 00 6c 00 00 6c 00 00 6c 00 00 00 00 00 00 00 00 00 6c 6c 6c 00 00 00 00 00 00 00 6c 6c 6c 6c 00 00 6c 00 00 00 6c 00 00 00 6c 00 00 00 6c 00 00 00 00 00 00 00 6c 6c 00 6c 00 00 00 00 00 00 00 6c 00 00 6c 6c 00 6c 00 00 00 6c 00 00 6c 00 00 00 00 00 00 00 6c 00 00 00 6c 00 00 00 00 00 00 00 00 6c 00 6c 6c 6c 00 6c 00 6c 00 00 6c 00 6c 6c 00 00 00 00 00 00 00 00 6c 00 00 6c 00 00 6c 00 6c 00 00 00 00 00 00 6c 00 00 6c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 6c 6c 6c 00 6c 00 00 00 00 6c 00 00 00 00 00 00 00 6c 00 00 00 00 00 00 00 00 00 6c 6c 00 00 00 00 00 00 00 6c 6c 00 48 6c 00 00 6c 6c 6c 00 00 6c 48 00 00 00 00 00 00 00 6c 6c 6c 6c 6c 6c 00 6c 00 00 00 00 00 6c 00 6c 00 00 6c 6c 00 6c ff 6c 6c 00 6c 00 00 00 00 00 00 00 6c 00 6c 00 00 00 6c 00 00 6c 00 00 6c 00 00 00 00 6c 00 00 6c 00 00 00 00 00 00 00 00 6c 6c 00 6c 00 00 6c 00 6c 00 00 6c 00 6c 48 48 00 6c 00 6c 00 00 00 00 00 00 00 00 6c 00 6c 00 6c 6c 00 6c 00 00 00 00 49 00 6c 6c 00 00 00 6c 00 00 6c 00 6c 6c 00 00 00 6c 00 00 00 00 00 00 6c 6c 48 00 00 00 00 00 6c 00 00 00 6c 00 00 00 00 00 6c 00 6c 6c 00 00 00 6c 00 6c 00 6c 00 6c 00 00 00 00 6c 00 00 6c 00 00 00 6c 6c 00 00 00 6c 6c 6c 00 00 00 00 6c 00 00 00 48 00 6c 00 00 00 00 00 00 00 00 6c 6c 00 6c 00 00 00 6c 00 00 6c 00 00 00 00 00 6c 00 6c 6c 00 00 00 00 00 00 00 6c 00 00 00 00 00 00 00 6c 6c 00 00 48 00 00 6c 00 00 00 00 6c 00 00 00 6c 00 00 00 00 00 00 6c 00 00 00 00 00 00 6c 00 00 00 00 00 00 00 6c 00 00 00 00 00 00 6c 6c 00 6c 00 00 6c 00 00 6c 00 6c 00 6c 00 6c 00 6c ff 00 6c 00 00 6c 00 6c 00 6c 00 00 00 00 00 00 00 00 00 00 00 00 00 6c 00 6c 00 00 00 6c 00 00 00 6c 00 00 6c 6c 00 00 00 00 00 6c 00 00 6c 00 00 00 6c 00 00 00 00 6c 6c 00 00 00 00 00 6c 6c 6c 00 00 00 00 6c 00 00 00 6c 00 00 00 00 00 6c 6c 00 00 00 00 6c 00 00 00 6c 00 00 00 6c 00 6c 6c 00 00 00 00 00 00 6c 6c 6c 00 00 6c 00 00 6c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 6c 00 6c 00 00 6c 00 6c 00 00 6c 00 00 00 00 00 00 00 00 00 00 00 6c 00 00 6c 00 00 6c 00 00 00 6c 00 00 00 ff 6c 00 00 6c 00 00 00 6c 6c 6c
*/
