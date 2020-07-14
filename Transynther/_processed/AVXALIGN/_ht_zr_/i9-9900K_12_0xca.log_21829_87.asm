.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x3d98, %rdx
clflush (%rdx)
nop
nop
sub %r13, %r13
mov (%rdx), %rax
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0x17924, %rsi
lea addresses_WT_ht+0x1b68e, %rdi
nop
xor $62095, %rax
mov $37, %rcx
rep movsl
sub %r13, %r13
lea addresses_normal_ht+0xb118, %r10
nop
nop
nop
nop
sub $19668, %rdx
movb $0x61, (%r10)
nop
nop
dec %rdx
lea addresses_normal_ht+0x1e7d8, %r10
sub $13936, %rax
mov (%r10), %edi
nop
nop
nop
nop
nop
dec %rax
lea addresses_UC_ht+0x7e98, %r10
inc %rdi
and $0xffffffffffffffc0, %r10
vmovntdqa (%r10), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdx
nop
xor %rdx, %rdx
lea addresses_normal_ht+0xe6c8, %rcx
nop
add %rdx, %rdx
vmovups (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
nop
nop
add %r13, %r13
lea addresses_normal_ht+0xb344, %rsi
lea addresses_UC_ht+0x1a9d8, %rdi
nop
nop
nop
add %r8, %r8
mov $97, %rcx
rep movsl
nop
nop
dec %rsi
lea addresses_D_ht+0x1861e, %r13
clflush (%r13)
nop
nop
add $13022, %rdx
mov (%r13), %ecx
nop
add $64506, %rdx
lea addresses_A_ht+0x9bd8, %rsi
lea addresses_D_ht+0xfd8, %rdi
nop
nop
and $40169, %r13
mov $124, %rcx
rep movsw
nop
nop
add $47676, %r13
lea addresses_A_ht+0x117d8, %r8
nop
nop
nop
and %rdx, %rdx
mov $0x6162636465666768, %rax
movq %rax, %xmm4
movups %xmm4, (%r8)
nop
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_US+0x1efd8, %rcx
nop
nop
and $50388, %r13
movl $0x51525354, (%rcx)
nop
nop
nop
nop
dec %r8

// Store
lea addresses_RW+0xa7d8, %r8
nop
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovaps %ymm5, (%r8)
and $6724, %r13

// Store
lea addresses_UC+0x15cd8, %rbp
nop
nop
nop
nop
sub $28365, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movups %xmm1, (%rbp)
nop
add $53581, %rsi

// Store
lea addresses_RW+0xa7d8, %rbp
nop
nop
nop
nop
xor $12635, %r15
movw $0x5152, (%rbp)
nop
nop
and %r15, %r15

// Store
lea addresses_normal+0xf9d8, %r15
nop
nop
nop
nop
dec %rcx
movl $0x51525354, (%r15)
nop
nop
nop
nop
dec %r13

// Faulty Load
lea addresses_RW+0xa7d8, %rbp
nop
nop
xor %rcx, %rcx
vmovaps (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdx
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': True, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'44': 13657, '45': 94, '00': 8076, '47': 2}
44 44 44 00 00 44 44 44 00 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 00 00 00 00 44 00 44 00 44 44 44 44 44 44 44 00 44 00 44 44 44 44 00 44 44 00 00 44 00 00 44 44 00 00 44 44 00 44 44 44 00 44 44 44 00 00 00 00 44 44 44 00 44 44 44 44 44 44 44 00 44 00 44 00 45 00 00 00 44 44 44 44 44 00 45 44 44 00 44 00 00 44 44 00 00 44 44 00 44 44 00 00 00 00 44 00 00 44 00 44 00 00 44 00 00 44 44 44 44 44 44 44 44 44 00 44 00 00 00 44 00 44 00 44 44 44 00 44 00 44 44 44 44 44 44 44 00 44 44 44 00 00 44 00 44 00 44 44 44 44 00 44 00 00 00 00 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 00 44 00 00 44 44 44 44 44 44 00 00 44 44 44 00 44 00 00 44 44 00 00 45 44 44 00 44 44 44 44 44 00 00 00 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 00 44 44 44 00 44 44 00 44 44 00 44 44 44 44 44 00 00 00 44 44 44 00 44 44 44 44 44 44 00 44 44 00 44 44 44 00 44 44 00 00 00 44 44 44 00 44 00 44 00 44 44 44 44 00 44 44 44 00 00 00 00 44 44 44 00 44 44 44 44 00 44 00 44 44 00 00 44 44 00 00 44 00 44 00 44 00 44 00 44 44 44 00 44 44 44 00 44 44 44 00 44 00 44 44 00 44 44 00 44 44 44 00 44 44 44 00 44 44 00 44 44 00 00 00 44 44 00 44 00 44 00 44 44 44 00 44 44 00 44 44 44 00 00 44 00 00 00 44 00 00 44 00 44 44 44 00 00 00 44 44 44 44 44 00 44 00 44 44 44 44 00 00 00 00 00 44 00 44 00 44 44 44 00 00 44 44 00 00 44 44 44 44 44 00 44 44 44 44 00 00 00 44 44 44 44 44 44 00 00 44 44 00 00 00 00 44 00 44 44 44 00 45 44 00 44 44 00 44 44 44 44 00 00 00 00 00 44 44 44 00 00 00 00 00 00 44 44 44 44 44 00 00 44 44 00 00 00 00 44 00 44 00 00 44 44 00 44 44 00 44 44 44 44 00 00 44 00 44 44 00 44 44 44 00 00 44 00 00 00 44 44 00 44 00 00 44 00 00 44 44 44 44 44 44 44 44 00 44 44 00 00 00 00 45 44 00 00 44 44 00 44 44 44 44 44 00 44 44 44 44 44 00 00 00 00 00 44 00 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 00 44 00 00 00 00 00 44 00 44 00 44 44 44 00 00 44 00 44 00 44 00 00 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 00 00 44 00 00 00 00 00 00 00 00 44 44 44 00 44 44 44 00 00 44 00 44 44 44 44 44 44 00 44 44 44 00 00 44 44 44 00 44 44 44 00 00 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 00 44 00 00 44 00 00 44 44 44 44 44 44 44 44 44 00 00 00 00 44 00 00 44 44 44 44 00 00 00 00 44 44 44 44 00 00 44 00 00 00 44 00 44 00 00 44 44 44 00 44 00 44 00 44 44 44 44 44 00 00 44 00 44 44 00 44 44 44 44 00 44 00 00 44 44 00 00 00 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 00 44 00 00 44 44 00 00 00 44 44 44 44 44 44 00 44 00 44 00 00 00 44 44 44 44 00 00 00 44 44 44 00 00 44 44 00 44 00 44 44 44 00 44 44 44 44 44 00 44 00 00 00 44 44 44 00 44 44 00 44 44 00 44 44 44 44 44 00 44 00 44 44 44 44 00 44 00 00 00 00 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 00 00 00 44 44 00 00 00 44 44 00 00 44 00 00 44 00 44 44 44 00 44 44 00 44
*/
