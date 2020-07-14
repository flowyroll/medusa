.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rax
push %rdx
push %rsi
lea addresses_WC_ht+0x12bae, %rdx
nop
nop
nop
nop
and %r13, %r13
movups (%rdx), %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
nop
nop
add %rax, %rax
lea addresses_UC_ht+0x1e7ee, %r14
nop
nop
nop
inc %r13
movl $0x61626364, (%r14)
nop
nop
nop
nop
add $60087, %rsi
pop %rsi
pop %rdx
pop %rax
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi

// Store
lea addresses_WT+0x13aae, %rax
nop
nop
and %r14, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm6
vmovntdq %ymm6, (%rax)
nop
nop
and $38883, %rax

// Store
lea addresses_RW+0x15286, %r9
sub %rdi, %rdi
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_WC+0x17dae, %r9
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm1
movups %xmm1, (%r9)
nop
nop
nop
nop
nop
add %r8, %r8

// Faulty Load
lea addresses_D+0x19bae, %r14
nop
nop
nop
nop
nop
and %r9, %r9
mov (%r14), %r12d
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'36': 3}
36 36 36
*/
