.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rbx
push %rcx
lea addresses_UC_ht+0x9062, %rax
nop
nop
nop
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %r14
movq %r14, %xmm6
and $0xffffffffffffffc0, %rax
movntdq %xmm6, (%rax)
add $39308, %rbx
lea addresses_UC_ht+0x17852, %r14
nop
nop
sub $43218, %r12
movl $0x61626364, (%r14)
nop
nop
and $42003, %rbx
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx

// Store
lea addresses_normal+0x1c622, %r10
nop
nop
nop
nop
xor %rcx, %rcx
movl $0x51525354, (%r10)
nop
nop
nop
nop
xor $49167, %r14

// Store
lea addresses_A+0xf8e2, %r13
nop
nop
xor $45504, %rdx
movb $0x51, (%r13)
nop
nop
nop
nop
add $46218, %r13

// Store
lea addresses_RW+0x777f, %r10
inc %rdi
movl $0x51525354, (%r10)
nop
nop
nop
nop
cmp %r15, %r15

// Store
lea addresses_normal+0x140e2, %rdi
nop
nop
nop
nop
xor $15002, %rdx
mov $0x5152535455565758, %r13
movq %r13, (%rdi)
nop
sub $18158, %rdx

// Store
lea addresses_D+0x12e2, %r13
nop
nop
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovups %ymm4, (%r13)
nop
nop
nop
xor %r13, %r13

// Faulty Load
lea addresses_normal+0x140e2, %rdi
nop
nop
nop
nop
nop
add $53105, %r14
movb (%rdi), %cl
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'58': 14}
58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
