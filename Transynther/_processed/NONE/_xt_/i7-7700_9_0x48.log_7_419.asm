.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
lea addresses_WT_ht+0x1b20d, %r15
nop
nop
nop
nop
inc %r14
movups (%r15), %xmm2
vpextrq $1, %xmm2, %r10
cmp $15466, %r12
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rbx
push %rdi
push %rdx

// Store
lea addresses_WC+0x1a94d, %rdx
nop
nop
inc %r10
movw $0x5152, (%rdx)
nop
nop
nop
nop
cmp %r15, %r15

// Load
lea addresses_WT+0xb54d, %rax
nop
nop
inc %rdi
vmovups (%rax), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbx
nop
nop
nop
nop
sub $35679, %r8

// Load
lea addresses_US+0x12a6d, %rax
cmp %rdi, %rdi
mov (%rax), %r8
nop
nop
add $627, %r8

// Faulty Load
lea addresses_normal+0x14d, %r8
sub $51353, %rdi
mov (%r8), %rbx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'34': 7}
34 34 34 34 34 34 34
*/
