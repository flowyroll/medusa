.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x12484, %rsi
lea addresses_WT_ht+0xd2a4, %rdi
sub %r9, %r9
mov $58, %rcx
rep movsq
nop
nop
nop
and $46266, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WC+0x13d04, %rbx
nop
nop
nop
nop
sub $46433, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%rbx)
nop
sub $28490, %rdi

// Store
lea addresses_RW+0x10184, %rbp
nop
nop
nop
nop
xor $36695, %rcx
movb $0x51, (%rbp)
nop
nop
nop
nop
and %r10, %r10

// Store
lea addresses_US+0x11264, %rbx
nop
dec %rbp
movl $0x51525354, (%rbx)
add $11104, %rbp

// Store
lea addresses_WT+0x6984, %r13
nop
nop
nop
inc %r10
movl $0x51525354, (%r13)
nop
nop
nop
nop
add $13289, %rbp

// Load
lea addresses_UC+0x1e184, %rbp
nop
cmp %rdx, %rdx
movb (%rbp), %cl
nop
nop
cmp $13821, %rcx

// Load
mov $0x804, %rcx
clflush (%rcx)
nop
nop
nop
nop
dec %r13
mov (%rcx), %ebx
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_US+0x2d84, %r13
clflush (%r13)
nop
nop
nop
sub $18923, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movntdq %xmm1, (%r13)
nop
nop
nop
nop
cmp $35857, %rdx

// Store
lea addresses_UC+0x6184, %r10
nop
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movntdq %xmm5, (%r10)
nop
sub %rdx, %rdx

// Load
lea addresses_UC+0x7d6e, %rcx
nop
nop
nop
nop
cmp $41016, %rbp
movups (%rcx), %xmm6
vpextrq $1, %xmm6, %r13
nop
nop
nop
nop
sub $46089, %r13

// Faulty Load
lea addresses_A+0x8984, %r10
nop
nop
nop
cmp %rbx, %rbx
movups (%r10), %xmm7
vpextrq $0, %xmm7, %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': True}}
{'54': 8}
54 54 54 54 54 54 54 54
*/
