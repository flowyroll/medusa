.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x260d, %rbp
nop
nop
nop
nop
nop
inc %rdi
vmovups (%rbp), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r9
nop
add $52661, %rdx
lea addresses_D_ht+0x1638f, %r14
nop
and $43582, %r10
movw $0x6162, (%r14)
nop
xor %rax, %rax
lea addresses_D_ht+0xd6cd, %r9
nop
nop
nop
nop
cmp $9545, %rdx
mov $0x6162636465666768, %r14
movq %r14, %xmm4
vmovups %ymm4, (%r9)
sub $37981, %rdx
lea addresses_D_ht+0xafe4, %rsi
lea addresses_normal_ht+0x1540d, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %rbp, %rbp
mov $107, %rcx
rep movsl
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x600d, %rcx
cmp $57298, %rax
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r9
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x1e88d, %rdi
nop
nop
nop
nop
add %r10, %r10
mov (%rdi), %r9d
dec %rdi
lea addresses_WC_ht+0x17eed, %rcx
nop
nop
add $13481, %r9
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%rcx)
dec %rdi
lea addresses_WC_ht+0x2729, %rcx
nop
nop
nop
nop
nop
cmp $40586, %rax
mov (%rcx), %r14w
nop
nop
nop
add $50223, %r9
lea addresses_normal_ht+0x134fd, %rax
nop
nop
nop
nop
nop
add $54138, %rcx
vmovups (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
sub $44931, %r14
lea addresses_D_ht+0x780d, %rcx
clflush (%rcx)
nop
nop
nop
nop
add $60321, %rax
mov $0x6162636465666768, %r14
movq %r14, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
nop
nop
inc %r9
lea addresses_WT_ht+0x580d, %r9
nop
nop
add $20137, %rax
movups (%r9), %xmm4
vpextrq $0, %xmm4, %r10
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x753d, %rdi
nop
nop
nop
nop
nop
add %r10, %r10
mov (%rdi), %si
nop
sub %r14, %r14
lea addresses_UC_ht+0x720d, %r9
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r9)
nop
xor %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x1b6ad, %r13
nop
cmp $45268, %r14
movl $0x51525354, (%r13)
nop
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_WT+0x4f8d, %rsi
nop
cmp $47026, %rcx
movw $0x5152, (%rsi)
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_UC+0x9eb7, %r15
nop
nop
cmp $56718, %r12
movb $0x51, (%r15)
and %r15, %r15

// Store
lea addresses_D+0x820d, %r13
nop
nop
and $38890, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm7
vmovups %ymm7, (%r13)
inc %r15

// REPMOV
lea addresses_WT+0x1cd4c, %rsi
lea addresses_WC+0xc4cd, %rdi
nop
nop
nop
sub %r10, %r10
mov $120, %rcx
rep movsb
nop
nop
nop
lfence

// Load
lea addresses_UC+0x199cd, %rsi
nop
dec %rdi
mov (%rsi), %r15w
add $63054, %r15

// Faulty Load
lea addresses_US+0x1200d, %r14
clflush (%r14)
nop
nop
nop
nop
and $60211, %r10
movb (%r14), %r15b
lea oracles, %r14
and $0xff, %r15
shlq $12, %r15
mov (%r14,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WT', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'00': 968}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
