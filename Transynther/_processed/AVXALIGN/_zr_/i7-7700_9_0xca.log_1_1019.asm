.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdx

// Load
lea addresses_US+0x988e, %r10
nop
nop
nop
nop
sub %rcx, %rcx
movups (%r10), %xmm0
vpextrq $1, %xmm0, %rbx
nop
nop
add $18405, %r15

// Store
lea addresses_RW+0x11c4d, %r10
nop
nop
dec %rbp
movb $0x51, (%r10)
nop
nop
nop
inc %rdx

// Store
lea addresses_normal+0xbbea, %r14
nop
nop
xor $22257, %rbx
movl $0x51525354, (%r14)
nop
nop
add %rbx, %rbx

// Store
lea addresses_WT+0x1a2a6, %rbp
nop
nop
nop
xor $17326, %r10
movl $0x51525354, (%rbp)
nop
nop
cmp $14839, %r10

// Faulty Load
lea addresses_UC+0x914e, %rcx
xor %rbp, %rbp
vmovntdqa (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbx
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 1}
00
*/
