.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rcx
push %rdx
lea addresses_WC_ht+0x2588, %rcx
cmp $31040, %r15
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
and $0xffffffffffffffc0, %rcx
movntdq %xmm2, (%rcx)
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x16888, %r13
nop
nop
nop
add %r10, %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
movups %xmm7, (%r13)
nop
nop
nop
add $40657, %r15
lea addresses_WT_ht+0xe930, %r10
nop
nop
nop
nop
nop
xor %rax, %rax
movb (%r10), %dl
nop
nop
nop
and %r10, %r10
pop %rdx
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rdx

// Store
mov $0x52db690000000288, %r11
and %rdx, %rdx
movw $0x5152, (%r11)
nop
nop
nop
nop
dec %r11

// Load
lea addresses_A+0x8c90, %r8
nop
nop
nop
nop
nop
dec %r14
mov (%r8), %r13
nop
nop
nop
nop
nop
cmp %r11, %r11

// Load
mov $0x31d12e0000000ad4, %r11
nop
sub $39851, %r8
movntdqa (%r11), %xmm6
vpextrq $1, %xmm6, %r13
sub %r12, %r12

// Load
lea addresses_WC+0x1a68e, %r12
nop
nop
nop
nop
nop
cmp $22107, %r14
movups (%r12), %xmm0
vpextrq $1, %xmm0, %r13
nop
nop
nop
nop
nop
xor %r13, %r13

// Faulty Load
lea addresses_D+0xa788, %r14
nop
sub %r11, %r11
movups (%r14), %xmm0
vpextrq $1, %xmm0, %rdx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rdx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'36': 10}
36 36 36 36 36 36 36 36 36 36
*/
