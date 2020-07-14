.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xd9b2, %rsi
nop
nop
nop
nop
and $14800, %rdx
movb (%rsi), %r8b
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x1726b, %rsi
lea addresses_WC_ht+0x111b2, %rdi
nop
nop
nop
nop
and $15729, %rbp
mov $22, %rcx
rep movsw
nop
nop
sub $23244, %r8
lea addresses_D_ht+0x165a, %rsi
lea addresses_A_ht+0x1026, %rdi
clflush (%rsi)
nop
nop
and %r9, %r9
mov $114, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $40334, %r9
lea addresses_D_ht+0x2bb2, %rsi
lea addresses_D_ht+0x1b672, %rdi
nop
nop
and $50677, %r12
mov $86, %rcx
rep movsw
nop
nop
nop
cmp $49237, %r8
lea addresses_A_ht+0xa58c, %rbp
add $7049, %rsi
movb $0x61, (%rbp)
nop
nop
nop
xor %rdx, %rdx
lea addresses_WT_ht+0x131b2, %rsi
lea addresses_WC_ht+0x7cb2, %rdi
nop
nop
nop
nop
nop
dec %rdx
mov $44, %rcx
rep movsw
add %rbp, %rbp
lea addresses_WT_ht+0xd466, %rcx
clflush (%rcx)
nop
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %r8
movq %r8, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x1e8b5, %rsi
nop
nop
inc %r8
mov $0x6162636465666768, %r9
movq %r9, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_D_ht+0x175e0, %rbp
sub $20959, %rcx
movl $0x61626364, (%rbp)
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x1efa2, %rdi
add $48701, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm5, (%rdi)
nop
add $45457, %rdx
lea addresses_A_ht+0x1db1a, %rdi
nop
xor $39083, %r12
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
nop
sub $57690, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %rdx
push %rsi

// Load
lea addresses_US+0x7db2, %r10
nop
nop
nop
nop
and %rsi, %rsi
mov (%r10), %r8w
nop
nop
nop
nop
xor $43780, %r10

// Store
lea addresses_UC+0x1e6c2, %rdx
nop
cmp $61893, %r13
movb $0x51, (%rdx)
and $6815, %r13

// Faulty Load
lea addresses_US+0x7db2, %rdx
nop
nop
nop
nop
nop
and $15042, %r8
movntdqa (%rdx), %xmm0
vpextrq $1, %xmm0, %r13
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdx
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'46': 2977, '48': 8602, 'cd': 3, '45': 2, '05': 2, '00': 9159, '49': 1084}
48 46 00 46 00 46 00 48 48 00 00 48 48 00 48 00 00 48 00 00 00 00 46 00 48 48 48 48 48 48 00 00 48 48 46 49 00 48 48 00 00 00 48 00 48 00 00 00 00 48 00 46 48 46 46 48 48 46 48 48 00 00 48 48 48 46 00 00 48 48 00 49 00 48 00 46 00 46 00 46 48 48 48 00 48 00 48 46 48 48 48 48 48 48 48 00 00 49 00 00 46 00 00 48 00 48 00 00 48 00 48 48 48 48 00 48 00 48 00 46 00 00 00 48 48 48 46 00 48 00 48 00 48 48 48 48 48 49 00 48 00 48 48 49 46 46 00 00 00 48 48 48 48 00 48 48 00 00 49 00 00 48 49 00 48 48 46 48 00 46 00 00 49 00 00 00 49 49 00 48 46 49 49 46 48 00 00 48 49 46 48 46 48 48 48 48 48 00 00 48 00 00 48 46 00 48 00 48 49 00 48 48 00 48 00 00 48 48 00 48 48 00 00 00 48 00 48 49 46 46 00 00 48 00 46 00 00 48 00 48 48 48 48 49 00 00 46 48 48 48 48 48 48 48 48 00 00 46 00 00 48 00 48 00 46 00 00 48 00 48 48 48 46 00 46 00 00 48 00 48 00 46 00 48 00 48 00 00 00 48 00 48 00 48 48 00 00 48 48 46 00 48 00 49 46 49 00 00 46 46 48 00 00 00 48 00 46 46 00 00 00 46 46 00 00 00 48 48 48 00 48 48 48 00 48 00 48 48 48 00 48 48 46 00 00 46 00 00 48 48 00 00 00 48 00 46 48 48 00 48 00 00 48 48 49 00 00 00 48 49 46 00 00 00 48 00 48 00 48 49 48 48 00 00 49 46 00 00 49 00 00 48 48 48 00 49 00 46 48 00 00 46 49 46 00 00 00 48 49 48 48 48 48 00 00 48 00 48 00 48 48 00 46 00 00 48 00 48 46 00 48 46 48 48 46 00 48 49 46 00 00 48 00 46 48 00 00 48 00 00 49 48 00 48 48 48 48 46 48 46 48 48 48 48 48 48 48 00 00 00 00 46 00 00 00 00 48 00 00 00 00 46 00 46 00 48 48 48 49 46 48 00 48 00 48 48 00 00 48 48 46 46 00 46 00 00 48 46 00 00 48 48 48 49 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 48 00 48 00 48 46 00 48 48 48 48 46 00 00 00 00 00 00 48 00 48 00 48 00 48 48 00 00 00 46 48 00 48 00 48 49 00 48 48 00 00 00 46 00 00 00 48 00 00 46 00 48 48 48 48 48 48 48 00 00 46 00 48 48 48 48 48 48 48 00 00 00 48 48 48 48 00 48 00 46 48 49 46 00 46 48 48 00 00 00 00 00 48 48 48 00 48 48 48 48 46 00 48 48 00 00 48 00 46 48 00 46 00 48 49 00 46 48 48 46 48 48 49 46 00 46 46 48 00 00 48 48 00 48 00 48 48 49 00 00 48 48 00 48 49 48 00 00 00 00 48 00 00 46 00 00 48 48 48 48 00 00 00 00 00 48 00 46 49 46 00 00 48 46 48 46 00 00 48 00 46 00 48 00 48 46 00 00 48 48 00 46 48 00 48 49 00 00 48 00 48 00 00 00 49 48 00 00 49 48 00 00 48 00 00 00 46 48 00 00 48 46 48 49 46 00 00 00 00 00 49 46 49 00 49 46 00 46 00 48 00 48 46 00 00 46 00 46 48 00 00 00 00 49 00 00 46 48 48 00 48 00 48 00 49 48 00 48 00 00 46 48 48 48 00 48 00 46 48 00 48 48 48 48 00 46 00 48 48 48 00 00 46 48 00 00 48 00 00 00 48 48 48 48 46 48 48 48 00 00 46 00 00 00 00 48 00 46 48 46 46 48 48 48 46 48 48 48 48 48 48 00 00 00 46 48 48 00 46 00 48 00 46 48 00 48 48 00 48 00 48 00 48 00 48 48 49 46 48 48 49 00 48 48 48 49 46 48 48 48 48 48 00 48 48 48 48 00 49 46 00 00 48 00 00 48 00 46 48 00 46 00 00 00 48 00 48 00 48 00 49 00 48 00 48 48 48 00 00 48 00 48 00 00 00 48 48 48 00 48 00 48 00 00 00 00 48 00 00 46 00 00 49 46 00 00 48 46 46 00 00 00 48 48 00 00 48 48 46 48 48 48 48 48 00 48 00 46 49 48 48 48 00 00 00 48 48 00 00 48 48
*/
