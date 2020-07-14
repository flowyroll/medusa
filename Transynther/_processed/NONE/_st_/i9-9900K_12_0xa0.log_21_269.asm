.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rax
push %rbp
push %rbx
push %rcx

// Store
mov $0x7fe56e0000000451, %rax
sub $23813, %rbx
mov $0x5152535455565758, %r12
movq %r12, (%rax)
nop
nop
nop
sub %r10, %r10

// Store
lea addresses_RW+0x1c271, %rcx
nop
nop
nop
nop
nop
and $33850, %rbp
movw $0x5152, (%rcx)
nop
dec %rax

// Store
mov $0xf49, %rax
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, (%rax)
nop
cmp %r14, %r14

// Faulty Load
lea addresses_UC+0xc271, %rax
clflush (%rax)
sub %r14, %r14
mov (%rax), %ebp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_NC', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'52': 21}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
