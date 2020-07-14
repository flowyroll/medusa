.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rdi
lea addresses_normal_ht+0xc1e5, %r14
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r14), %r15d
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x10ba5, %r14
nop
nop
nop
nop
inc %r12
mov (%r14), %r8w
nop
nop
nop
nop
add %r8, %r8
pop %rdi
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi

// Store
lea addresses_normal+0x4ca5, %rbx
nop
nop
nop
nop
nop
add $21691, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movntdq %xmm4, (%rbx)
nop
nop
nop
nop
nop
inc %r15

// Faulty Load
lea addresses_RW+0x14925, %r10
nop
nop
nop
and $16539, %rdi
movups (%r10), %xmm1
vpextrq $0, %xmm1, %rax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 7}, 'OP': 'LOAD'}
{'32': 12}
32 32 32 32 32 32 32 32 32 32 32 32
*/
