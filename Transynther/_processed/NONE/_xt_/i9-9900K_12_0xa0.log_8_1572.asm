.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rdi

// Load
lea addresses_WC+0x157ff, %rax
sub $9887, %rbp
mov (%rax), %edi
nop
xor %r8, %r8

// Store
lea addresses_RW+0x2ff, %r13
clflush (%r13)
nop
nop
nop
nop
nop
sub $39181, %rbx
movb $0x51, (%r13)
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_PSE+0x1bd3f, %rbx
nop
nop
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%rbx)
cmp %r13, %r13

// Faulty Load
lea addresses_normal+0x1abff, %r14
clflush (%r14)
nop
nop
cmp %r8, %r8
mov (%r14), %rbx
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'34': 8}
34 34 34 34 34 34 34 34
*/
