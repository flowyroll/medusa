.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rbx
push %rdi
lea addresses_WT_ht+0x1092f, %rbx
nop
nop
nop
nop
inc %r12
movw $0x6162, (%rbx)
nop
nop
nop
nop
dec %rdi
pop %rdi
pop %rbx
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rbx
push %rdi

// Store
lea addresses_WT+0x1413f, %rbp
nop
nop
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, (%rbp)
cmp $48715, %r14

// Store
lea addresses_UC+0x7bbf, %rbx
nop
nop
cmp %rdi, %rdi
movw $0x5152, (%rbx)
nop
nop
sub $64108, %r9

// Store
lea addresses_US+0x493f, %rdi
nop
nop
sub $56445, %r9
movl $0x51525354, (%rdi)
nop
nop
and %rax, %rax

// Store
lea addresses_normal+0x1113f, %rbx
nop
nop
nop
nop
nop
inc %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm3
and $0xffffffffffffffc0, %rbx
vmovaps %ymm3, (%rbx)
sub $9633, %rax

// Store
lea addresses_WC+0x1013f, %rbx
nop
cmp $24435, %r14
movb $0x51, (%rbx)
nop
nop
nop
add %r14, %r14

// Faulty Load
lea addresses_US+0x493f, %rbx
dec %r13
mov (%rbx), %r14w
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'54': 57}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
