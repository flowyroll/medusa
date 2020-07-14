.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdx

// Store
lea addresses_WC+0x8cec, %r10
nop
sub $61857, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r10)
nop
nop
nop
nop
cmp $33050, %r10

// Store
lea addresses_PSE+0x2cec, %r14
nop
nop
nop
nop
nop
and $57744, %rax
movl $0x51525354, (%r14)
nop
dec %r14

// Load
lea addresses_RW+0xcfa4, %r10
clflush (%r10)
nop
nop
nop
nop
and $17817, %rdx
mov (%r10), %r14
nop
nop
nop
nop
add $28222, %r12

// Faulty Load
lea addresses_PSE+0x2cec, %r12
cmp %rdx, %rdx
movb (%r12), %r14b
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'54': 113}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
