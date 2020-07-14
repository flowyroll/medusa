.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rax
lea addresses_UC_ht+0x18780, %rax
nop
nop
cmp $6851, %r9
movl $0x61626364, (%rax)
nop
nop
sub $65273, %rax
pop %rax
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rdx

// Store
mov $0x530, %r8
clflush (%r8)
dec %r15
movw $0x5152, (%r8)
sub $50351, %rbx

// Store
lea addresses_RW+0x76b0, %r8
nop
nop
nop
nop
sub %rbp, %rbp
movl $0x51525354, (%r8)
nop
nop
xor %rbp, %rbp

// Store
lea addresses_PSE+0x94b0, %rdx
cmp %rbp, %rbp
movb $0x51, (%rdx)
and %r15, %r15

// Store
lea addresses_US+0x6830, %rbp
xor %r8, %r8
movb $0x51, (%rbp)
nop
nop
nop
nop
inc %r14

// Store
lea addresses_UC+0x1c2b0, %rdx
nop
nop
nop
add $54795, %r8
movb $0x51, (%rdx)
nop
nop
nop
nop
sub %rdx, %rdx

// Load
lea addresses_WC+0x14ece, %rdx
clflush (%rdx)
nop
sub %rbx, %rbx
mov (%rdx), %r8w
sub %r10, %r10

// Store
lea addresses_A+0x164b0, %rbp
nop
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm4
movaps %xmm4, (%rbp)
nop
nop
nop
dec %r8

// Faulty Load
lea addresses_A+0x164b0, %r10
nop
nop
nop
and %r14, %r14
mov (%r10), %bx
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'58': 3}
58 58 58
*/
