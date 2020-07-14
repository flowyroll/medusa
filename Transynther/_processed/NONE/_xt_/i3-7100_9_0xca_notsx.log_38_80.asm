.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %rcx
lea addresses_D_ht+0x1a30f, %rcx
cmp %r13, %r13
mov (%rcx), %r12
sub %r13, %r13
lea addresses_D_ht+0x1cf0f, %r10
nop
nop
nop
nop
nop
cmp $23575, %r12
mov (%r10), %r14d
nop
nop
nop
nop
nop
cmp %rcx, %rcx
pop %rcx
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_WT+0xe40f, %rax
nop
nop
nop
nop
nop
xor $17676, %r14
mov $0x5152535455565758, %rbp
movq %rbp, (%rax)
nop
nop
xor %r10, %r10

// Load
lea addresses_RW+0x1dc0f, %rax
nop
nop
nop
nop
and $4600, %rcx
mov (%rax), %r15w
nop
nop
nop
sub $33609, %rcx

// Store
lea addresses_A+0x160c9, %rcx
add $16634, %r10
movb $0x51, (%rcx)
nop
nop
sub %rbx, %rbx

// Store
lea addresses_WT+0x173ef, %rbp
nop
nop
nop
inc %r14
mov $0x5152535455565758, %rax
movq %rax, (%rbp)
nop
nop
xor %rbp, %rbp

// Store
lea addresses_A+0x1860f, %r14
nop
nop
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movaps %xmm1, (%r14)
nop
nop
nop
nop
cmp %r15, %r15

// Faulty Load
lea addresses_WT+0x18c0f, %rbx
nop
nop
nop
add %rbp, %rbp
vmovups (%rbx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_A', 'size': 16, 'AVXalign': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'39': 38}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
