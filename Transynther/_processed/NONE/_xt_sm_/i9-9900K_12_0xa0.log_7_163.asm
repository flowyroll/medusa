.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rbx
push %rcx
push %rdx
lea addresses_D_ht+0x6d3, %rcx
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %rbx
movq %rbx, (%rcx)
nop
nop
nop
nop
and %r13, %r13
pop %rdx
pop %rcx
pop %rbx
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi

// Store
lea addresses_UC+0x199fb, %r13
nop
xor %r12, %r12
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r13)
nop
xor $2592, %r8

// Store
lea addresses_A+0x90f4, %rax
nop
nop
nop
cmp $42397, %r11
movw $0x5152, (%rax)
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_UC+0xa533, %rdi
nop
nop
nop
nop
and %r12, %r12
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovups %ymm2, (%rdi)
nop
sub %r11, %r11

// Store
lea addresses_RW+0xad33, %r13
clflush (%r13)
nop
nop
nop
nop
cmp $3563, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r13)
nop
sub %rcx, %rcx

// Store
lea addresses_US+0x1fd33, %rcx
nop
nop
nop
nop
cmp %r8, %r8
movb $0x51, (%rcx)
nop
nop
nop
nop
inc %rdi

// Store
lea addresses_RW+0xad33, %rdi
and %rax, %rax
movl $0x51525354, (%rdi)
nop
nop
cmp %rcx, %rcx

// Faulty Load
lea addresses_RW+0xad33, %r8
nop
nop
nop
nop
and $11217, %r12
mov (%r8), %ecx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'54': 7}
54 54 54 54 54 54 54
*/
