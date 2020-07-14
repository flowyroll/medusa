.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rax
push %rdi
push %rsi

// Store
lea addresses_RW+0xf389, %r12
nop
nop
nop
dec %r14
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_PSE+0x14f69, %r12
nop
nop
nop
nop
dec %rax
mov $0x5152535455565758, %rdi
movq %rdi, (%r12)
nop
nop
nop
xor %r14, %r14

// Faulty Load
lea addresses_normal+0x1cf89, %r12
xor %rax, %rax
mov (%r12), %di
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'34': 1}
34
*/
