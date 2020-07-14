.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rax
push %rbp
push %rdi

// Store
lea addresses_PSE+0x3cc, %rax
nop
nop
add $54802, %r14
mov $0x5152535455565758, %r8
movq %r8, (%rax)
nop
nop
nop
nop
add %r14, %r14

// Load
lea addresses_WC+0x1e64c, %r13
nop
cmp $25552, %rdi
movb (%r13), %r14b
nop
nop
nop
cmp $58554, %r13

// Faulty Load
lea addresses_RW+0x204c, %rax
clflush (%rax)
nop
and $2105, %rbp
mov (%rax), %r13
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'32': 7}
32 32 32 32 32 32 32
*/
