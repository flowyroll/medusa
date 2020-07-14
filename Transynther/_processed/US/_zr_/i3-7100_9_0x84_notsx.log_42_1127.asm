.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x1be91, %rdx
nop
xor $47545, %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rdx)
nop
nop
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_WC+0x8c91, %r12
nop
dec %r15
movl $0x51525354, (%r12)
nop
nop
nop
dec %r10

// REPMOV
lea addresses_A+0x10ff1, %rsi
lea addresses_WT+0x9a51, %rdi
nop
and $36310, %rdx
mov $6, %rcx
rep movsb
nop
nop
nop
nop
dec %r15

// Store
lea addresses_normal+0x1f41, %r10
xor %r12, %r12
mov $0x5152535455565758, %rcx
movq %rcx, (%r10)
nop
add $61722, %r8

// Faulty Load
lea addresses_US+0xc891, %r8
nop
xor %rdi, %rdi
mov (%r8), %si
lea oracles, %r10
and $0xff, %rsi
shlq $12, %rsi
mov (%r10,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 42}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
