.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rbp
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x135f8, %rdx
nop
nop
nop
nop
and %rbp, %rbp
movw $0x6162, (%rdx)
nop
nop
add $441, %rsi
lea addresses_D_ht+0xbaf8, %r9
nop
and %r13, %r13
movb $0x61, (%r9)
nop
nop
nop
nop
inc %rbp
lea addresses_WT_ht+0x1b6b2, %rsi
nop
nop
nop
nop
and $53332, %rdi
mov $0x6162636465666768, %r13
movq %r13, (%rsi)
nop
nop
nop
add $37567, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r9
push %rbp
push %rbx

// Store
lea addresses_RW+0x1baf8, %rbp
nop
nop
nop
nop
sub $2052, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm4
movntdq %xmm4, (%rbp)
nop
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_US+0x1ee7a, %r9
and $37356, %rbp
movb $0x51, (%r9)
add $50290, %r12

// Store
mov $0x66a7040000000998, %rbx
nop
and $23726, %r10
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rbx)
xor %r15, %r15

// Faulty Load
lea addresses_A+0x19ef8, %rbx
nop
nop
nop
nop
nop
inc %r10
mov (%rbx), %r15w
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'00': 5}
00 00 00 00 00
*/
