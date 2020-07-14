.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rdi

// Store
lea addresses_D+0x71b0, %rdi
nop
nop
nop
nop
xor %rbp, %rbp
movl $0x51525354, (%rdi)
nop
nop
nop
dec %r10

// Store
lea addresses_US+0x105b0, %rax
clflush (%rax)
nop
nop
nop
nop
and %r12, %r12
mov $0x5152535455565758, %r14
movq %r14, (%rax)
nop
nop
nop
nop
add $39092, %r14

// Load
mov $0x1b0, %r10
nop
nop
nop
inc %r13
vmovups (%r10), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r14
nop
nop
nop
nop
and %rbp, %rbp

// Faulty Load
lea addresses_A+0xfdb0, %rax
nop
nop
and %rdi, %rdi
vmovups (%rax), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r14
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rdi
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'a0': 1, '05': 1}
a0 05
*/
