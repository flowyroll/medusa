.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
lea addresses_UC_ht+0x1d689, %r13
nop
nop
nop
sub $10791, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm1
movups %xmm1, (%r13)
nop
nop
nop
dec %rbx
lea addresses_WC_ht+0xc7eb, %rdx
add %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rdx)
nop
nop
nop
nop
dec %rax
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdi

// Store
lea addresses_WT+0x15ccb, %r12
nop
nop
cmp $46289, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r12)
nop
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_WC+0x9a13, %r12
nop
nop
nop
nop
sub $56167, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovaps %ymm6, (%r12)
nop
nop
nop
nop
nop
and %r12, %r12

// Store
lea addresses_A+0x17a2b, %r8
nop
inc %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r8)
nop
nop
nop
nop
sub %r14, %r14

// Faulty Load
lea addresses_A+0x17a2b, %r8
nop
nop
nop
inc %rcx
mov (%r8), %r12w
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'58': 3}
58 58 58
*/
