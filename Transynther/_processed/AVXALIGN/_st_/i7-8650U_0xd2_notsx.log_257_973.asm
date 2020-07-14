.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1e2ce, %rsi
lea addresses_UC_ht+0x156ce, %rdi
nop
cmp %r14, %r14
mov $91, %rcx
rep movsb
nop
nop
nop
nop
xor $41794, %rax
lea addresses_WC_ht+0x118ce, %r9
xor %r13, %r13
movl $0x61626364, (%r9)
nop
nop
inc %rdi
lea addresses_UC_ht+0x1d0ce, %r14
nop
nop
nop
nop
cmp $63623, %rax
mov $0x6162636465666768, %r13
movq %r13, %xmm4
vmovups %ymm4, (%r14)
nop
nop
nop
nop
sub $38769, %r13
lea addresses_D_ht+0x118ce, %rax
nop
nop
nop
nop
nop
and %r13, %r13
movw $0x6162, (%rax)
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x1919e, %r14
nop
nop
nop
nop
nop
sub %rcx, %rcx
and $0xffffffffffffffc0, %r14
vmovaps (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rax
nop
nop
nop
nop
inc %rax
lea addresses_WC_ht+0x1dc3e, %rdi
nop
nop
dec %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm6
and $0xffffffffffffffc0, %rdi
vmovaps %ymm6, (%rdi)
nop
cmp %rax, %rax
lea addresses_WC_ht+0x759e, %rcx
nop
add %rsi, %rsi
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %r9
add $22539, %rdi
lea addresses_normal_ht+0x740e, %rax
nop
and $38461, %r14
vmovups (%rax), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x72ce, %rsi
lea addresses_normal_ht+0x70ce, %rdi
nop
nop
cmp $20372, %r9
mov $102, %rcx
rep movsw
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x78ce, %r14
nop
nop
sub $60055, %r9
movups (%r14), %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
and $13654, %rdi
lea addresses_A_ht+0x100ce, %rax
nop
nop
nop
xor $52682, %rdi
mov (%rax), %rcx
nop
nop
and %r13, %r13
lea addresses_WT_ht+0x1cc9e, %r14
nop
nop
nop
and %rsi, %rsi
movb (%r14), %cl
nop
nop
nop
cmp %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %r9
push %rax
push %rdx

// Store
lea addresses_WC+0x5554, %r9
clflush (%r9)
nop
sub %r10, %r10
movl $0x51525354, (%r9)

// Exception!!!
nop
nop
mov (0), %r9
nop
nop
nop
xor $2827, %r10

// Store
lea addresses_WT+0x90e, %rdx
nop
nop
cmp $31091, %r12
movb $0x51, (%rdx)
nop
nop
and $46976, %r12

// Store
lea addresses_US+0x4eee, %r12
nop
nop
nop
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %r9
movq %r9, %xmm1
vmovups %ymm1, (%r12)
nop
nop
nop
nop
and $22905, %rax

// Store
lea addresses_WT+0xce, %rax
nop
nop
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%rax)
and $56239, %r13

// Faulty Load
lea addresses_WT+0x1a8ce, %r13
nop
nop
dec %r8
mov (%r13), %ax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'39': 257}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
