.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xfc2, %rax
nop
nop
sub $63843, %rdx
movups (%rax), %xmm3
vpextrq $1, %xmm3, %rbp
nop
nop
dec %r10
lea addresses_D_ht+0x124da, %r14
nop
nop
nop
nop
nop
dec %rax
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_D_ht+0x12d82, %rsi
lea addresses_UC_ht+0x10cc2, %rdi
nop
nop
add %rdx, %rdx
mov $124, %rcx
rep movsl
add $3377, %rax
lea addresses_WC_ht+0x1b0c2, %rsi
lea addresses_D_ht+0x1c642, %rdi
nop
nop
inc %rax
mov $34, %rcx
rep movsb
xor %r10, %r10
lea addresses_WC_ht+0x9d42, %r10
clflush (%r10)
nop
nop
nop
inc %rbp
mov (%r10), %di
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_A_ht+0xbb42, %r10
add %rsi, %rsi
mov (%r10), %cx
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x16302, %rbp
nop
nop
sub %r10, %r10
movl $0x61626364, (%rbp)
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x130c2, %rdi
nop
nop
add %r14, %r14
movb $0x61, (%rdi)
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x4f62, %rbp
nop
nop
nop
sub $33711, %rdx
and $0xffffffffffffffc0, %rbp
movaps (%rbp), %xmm4
vpextrq $1, %xmm4, %rax
sub $35160, %rbp
lea addresses_UC_ht+0x9ac2, %rsi
nop
nop
nop
nop
cmp %r10, %r10
movups (%rsi), %xmm3
vpextrq $1, %xmm3, %rax
nop
xor $16444, %rsi
lea addresses_WT_ht+0x54c2, %rsi
lea addresses_D_ht+0x19102, %rdi
nop
nop
add $1321, %r10
mov $62, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $5983, %rbp
lea addresses_A_ht+0xa542, %r14
nop
nop
nop
and $60494, %rcx
mov (%r14), %bp
nop
nop
cmp $57127, %rsi
lea addresses_UC_ht+0x301e, %rsi
lea addresses_A_ht+0x1e20e, %rdi
nop
nop
sub %rbp, %rbp
mov $34, %rcx
rep movsl
sub %r10, %r10
lea addresses_WC_ht+0x11be2, %rcx
nop
nop
nop
nop
nop
inc %rbp
mov $0x6162636465666768, %r10
movq %r10, (%rcx)
nop
nop
nop
nop
nop
cmp $54061, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi

// Store
lea addresses_normal+0x1e242, %r14
clflush (%r14)
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm6
vmovups %ymm6, (%r14)
nop
nop
nop
nop
nop
add %r15, %r15

// Store
lea addresses_WT+0x9c82, %r15
nop
nop
nop
sub $2600, %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_normal+0xdad7, %r8
nop
nop
and $9870, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r8)
nop
nop
add %r12, %r12

// Store
lea addresses_WT+0x180c2, %r15
nop
cmp $18245, %r13
movb $0x51, (%r15)
sub %r12, %r12

// Load
lea addresses_US+0x1cfda, %rcx
xor $62446, %r15
movups (%rcx), %xmm5
vpextrq $0, %xmm5, %r14
nop
nop
nop
nop
nop
add $19879, %rcx

// Store
lea addresses_D+0x170c2, %r15
clflush (%r15)
nop
nop
nop
nop
and $5851, %r8
movw $0x5152, (%r15)
nop
nop
nop
nop
sub $18363, %r13

// Store
lea addresses_RW+0x1dd62, %r8
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovups %ymm0, (%r8)
add $43899, %r13

// Store
lea addresses_normal+0x477c, %r12
nop
nop
inc %rcx
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
add %r13, %r13

// Store
lea addresses_WC+0x17242, %r12
nop
nop
nop
nop
cmp $30529, %rcx
movw $0x5152, (%r12)
cmp $44317, %r14

// Store
lea addresses_normal+0xaa2a, %r13
nop
add %rdi, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovups %ymm6, (%r13)
nop
nop
nop
nop
nop
sub $44434, %r14

// Store
lea addresses_WC+0x1e1e2, %r8
and %r12, %r12
movb $0x51, (%r8)
and $46311, %rdi

// Load
lea addresses_A+0x1b52e, %r14
nop
nop
sub $10064, %r13
mov (%r14), %r8w
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_PSE+0xd662, %r15
xor $57669, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm2
movups %xmm2, (%r15)
nop
nop
nop
nop
nop
cmp %r12, %r12

// Faulty Load
lea addresses_RW+0x8c2, %rdi
nop
inc %r8
movb (%rdi), %cl
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'32': 21017}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
