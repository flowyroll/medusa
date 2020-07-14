.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rdi

// Store
lea addresses_A+0x1f668, %r13
nop
nop
nop
add $27588, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movups %xmm7, (%r13)

// Exception!!!
nop
nop
mov (0), %r14
nop
nop
inc %rbp

// Store
lea addresses_A+0xb14, %rbx
clflush (%rbx)
nop
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %rbp
movq %rbp, (%rbx)

// Exception!!!
nop
nop
nop
mov (0), %r13
nop
xor %r13, %r13

// Store
lea addresses_PSE+0x1bc, %r14
nop
nop
nop
nop
nop
xor $1539, %r15
mov $0x5152535455565758, %r9
movq %r9, %xmm1
vmovups %ymm1, (%r14)
nop
nop
nop
nop
nop
sub %r13, %r13

// Faulty Load
lea addresses_normal+0xfc68, %rbp
nop
nop
nop
nop
add $61640, %r15
vmovaps (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r14
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'04': 267, '00': 1, 'd0': 213}
d0 04 d0 d0 04 04 d0 04 d0 d0 04 04 d0 04 04 04 04 04 04 04 04 d0 04 04 04 04 d0 d0 d0 04 d0 d0 04 04 04 d0 04 d0 04 04 04 04 d0 04 d0 d0 04 04 04 d0 d0 04 d0 04 d0 d0 d0 d0 d0 d0 04 04 d0 d0 d0 04 d0 d0 04 04 04 d0 04 04 04 d0 d0 d0 04 d0 04 d0 d0 04 d0 04 d0 d0 04 04 04 04 04 04 04 04 04 d0 04 d0 04 d0 d0 04 04 04 04 d0 04 04 d0 d0 d0 04 04 d0 04 04 04 d0 04 d0 d0 d0 04 d0 d0 04 04 d0 00 d0 d0 04 d0 04 04 04 04 d0 04 04 04 04 04 04 d0 04 d0 d0 d0 04 d0 04 d0 04 d0 04 d0 04 d0 04 04 d0 04 04 04 d0 04 04 d0 d0 d0 04 04 d0 04 d0 04 d0 d0 04 04 04 04 04 d0 d0 d0 04 04 d0 04 04 d0 d0 d0 04 04 d0 d0 04 d0 04 d0 d0 04 d0 04 d0 04 04 d0 04 04 d0 04 04 04 04 04 d0 d0 04 04 d0 04 04 d0 d0 d0 d0 d0 04 d0 04 d0 d0 d0 04 04 d0 04 04 04 d0 04 04 04 d0 d0 d0 04 d0 04 d0 04 04 04 04 04 04 04 d0 04 04 04 04 04 04 04 04 04 04 04 04 04 04 d0 04 04 d0 d0 04 d0 04 04 04 d0 04 d0 04 d0 d0 04 04 04 04 04 d0 d0 d0 04 d0 04 d0 04 d0 d0 d0 04 04 04 04 04 d0 04 04 04 d0 d0 04 d0 d0 04 04 04 04 04 04 04 04 04 d0 d0 d0 d0 d0 04 04 04 d0 04 04 04 04 04 04 04 d0 d0 04 04 d0 d0 d0 04 d0 d0 04 d0 d0 d0 d0 d0 04 04 04 04 d0 d0 d0 d0 04 04 04 04 04 04 04 04 04 d0 04 04 04 d0 d0 04 d0 04 d0 04 d0 d0 d0 04 d0 d0 d0 d0 d0 d0 04 d0 d0 d0 04 d0 d0 04 d0 d0 d0 d0 d0 04 d0 04 04 d0 d0 d0 04 04 04 04 04 d0 d0 04 d0 04 d0 d0 d0 d0 04 d0 d0 d0 04 04 04 d0 04 d0 d0 04 d0 04 04 d0 04 04 04 d0 d0 04 d0 d0 04 04 d0 04 04 04 d0 04 04 d0 04 04 d0 04 d0 04 04 04 d0 d0
*/
