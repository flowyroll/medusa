.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rax
push %rbx
push %rdi
push %rdx

// Load
lea addresses_WT+0x179e1, %rdi
nop
nop
nop
nop
add %rbx, %rbx
mov (%rdi), %r12w
nop
nop
nop
add $22686, %r12

// Store
lea addresses_D+0x7635, %rdi
nop
and %rbx, %rbx
mov $0x5152535455565758, %r13
movq %r13, (%rdi)
nop
nop
nop
inc %r12

// Store
mov $0x909, %rdx
nop
nop
xor $36061, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm1
movaps %xmm1, (%rdx)
nop
nop
cmp %r13, %r13

// Store
lea addresses_UC+0x1f61, %r13
nop
nop
nop
nop
xor $14251, %rax
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
xor %r12, %r12

// Load
lea addresses_normal+0x1e1e1, %rbx
nop
nop
dec %rax
movups (%rbx), %xmm1
vpextrq $0, %xmm1, %rdx
xor $53460, %rax

// Store
lea addresses_normal+0x1e1e1, %r12
and $55015, %r14
movl $0x51525354, (%r12)

// Exception!!!
nop
mov (0), %rbx
nop
nop
nop
inc %r12

// Load
lea addresses_normal+0x1e1e1, %r14
nop
xor $14905, %rdi
mov (%r14), %r12
nop
xor $28168, %rax

// Store
lea addresses_WC+0x4471, %r13
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movntdq %xmm0, (%r13)
nop
nop
cmp %r14, %r14

// Faulty Load
lea addresses_normal+0x1e1e1, %rdi
nop
nop
sub %rbx, %rbx
mov (%rdi), %r13w
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'54': 2}
54 54
*/
