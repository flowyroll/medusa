.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x10842, %r12
nop
cmp %r14, %r14
and $0xffffffffffffffc0, %r12
movntdqa (%r12), %xmm3
vpextrq $1, %xmm3, %r15
nop
inc %rsi
lea addresses_D_ht+0x2e2, %rsi
nop
nop
xor $38163, %r14
vmovups (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r8
nop
nop
nop
nop
add $13796, %r12
lea addresses_WC_ht+0x68f1, %rsi
lea addresses_UC_ht+0x785a, %rdi
nop
nop
nop
nop
cmp %rbp, %rbp
mov $24, %rcx
rep movsl
nop
nop
xor $64760, %rcx
lea addresses_normal_ht+0x1653d, %rcx
nop
add %rsi, %rsi
mov (%rcx), %rbp
nop
nop
nop
add %r12, %r12
lea addresses_WC_ht+0x77e2, %r15
nop
nop
add $41298, %rdi
mov (%r15), %cx
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0x10582, %r14
sub %rcx, %rcx
movups (%r14), %xmm3
vpextrq $1, %xmm3, %r15
sub $40585, %rcx
lea addresses_D_ht+0xdae2, %r14
nop
nop
nop
cmp %r15, %r15
movl $0x61626364, (%r14)
dec %rdi
lea addresses_A_ht+0x14502, %r8
nop
nop
nop
sub $9675, %r12
movb $0x61, (%r8)
nop
nop
cmp $40636, %r14
lea addresses_UC_ht+0x1d6d7, %rdi
dec %r12
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r15
nop
xor %r15, %r15
lea addresses_D_ht+0x5af2, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
sub $58325, %rsi
movl $0x61626364, (%rcx)
nop
nop
nop
lfence
lea addresses_D_ht+0x118e2, %rsi
lea addresses_UC_ht+0x1e01a, %rdi
clflush (%rdi)
nop
nop
nop
add $15779, %r15
mov $110, %rcx
rep movsq
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0x15502, %r8
nop
nop
nop
and $6313, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r8)
nop
nop
nop
dec %rbp
lea addresses_WC_ht+0x1dca2, %rsi
lea addresses_normal_ht+0x2b62, %rdi
xor %r15, %r15
mov $28, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0xfce2, %r14
nop
nop
nop
dec %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
and $0xffffffffffffffc0, %r14
vmovntdq %ymm5, (%r14)
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_WC_ht+0xefb6, %rsi
nop
nop
nop
dec %r15
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
vmovups %ymm2, (%rsi)
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rbx
push %rdi
push %rdx

// Store
lea addresses_RW+0x182e2, %rdi
nop
nop
nop
nop
nop
dec %r9
movw $0x5152, (%rdi)
nop
sub $56387, %rdi

// Store
lea addresses_US+0xa792, %r10
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%r10)

// Exception!!!
nop
nop
nop
mov (0), %r10
nop
nop
nop
nop
cmp $47702, %r14

// Faulty Load
lea addresses_A+0x2ee2, %rdi
nop
nop
nop
nop
nop
add $2669, %r13
vmovups (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'00': 296, '46': 1069, '47': 2, '48': 14}
46 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 00 00 46 46 46 46 00 46 46 46 00 00 46 46 46 00 00 46 46 00 46 46 00 46 46 46 46 46 46 46 00 46 00 46 00 48 00 46 00 00 46 00 00 00 00 46 00 46 46 00 00 00 46 00 00 48 48 46 00 46 46 00 46 46 00 00 46 00 00 00 46 46 00 00 00 46 46 46 46 00 46 46 46 00 00 00 00 00 46 46 00 46 46 00 00 00 00 00 00 46 00 46 46 46 46 46 00 46 00 00 00 46 46 46 00 00 46 00 00 00 00 00 00 46 00 46 46 00 00 00 46 46 46 46 00 00 46 46 00 46 00 00 46 00 46 00 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 00 00 46 46 46 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 46 48 00 00 00 46 46 46 46 46 46 00 00 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46 46 00 46 00 00 00 46 00 00 00 00 00 00 00 00 46 00 46 00 46 00 46 46 00 00 46 00 00 46 46 00 00 46 00 00 00 46 46 46 00 00 00 46 00 00 00 00 46 46 00 46 46 00 00 00 00 00 00 00 00 46 00 00 00 00 46 46 46 46 46 00 48 00 00 00 00 00 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 00 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 46 00 47 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 00 46 48 46 00 46 46 46 46 00 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 00 00 46 00 00 48 46 46 00 00 46 00 00 46 00 46 00 46 46 46 46 00 00 00 00 46 00 00 00 00 46 00 46 00 00 48 00 00 46 00 46 00 46 46 00 00 00 00 00 00 00 46 46 46 00 00 00 00 00 00 00 46 46 00 00 00 46 46 00 00 00 46 46 46 00 46 00 00 00 46 46 48 46 46 00 00 46 46 46 00 46 00 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 00 00 46 00 46 00 00 46 46 46 46 00 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 48 46 46 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46
*/
