.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x650, %r13
nop
add $3555, %r12
mov $0x6162636465666768, %rax
movq %rax, (%r13)
nop
nop
nop
add %r10, %r10
lea addresses_normal_ht+0x1b850, %rsi
lea addresses_UC_ht+0x6a30, %rdi
nop
add $62231, %r15
mov $64, %rcx
rep movsl
nop
nop
nop
add %rax, %rax
lea addresses_D_ht+0x10850, %r10
nop
nop
nop
add %rsi, %rsi
movb $0x61, (%r10)
nop
nop
nop
inc %r12
lea addresses_WT_ht+0x8a10, %r12
nop
nop
nop
nop
nop
and $1983, %rax
mov $0x6162636465666768, %r15
movq %r15, (%r12)
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0x1e450, %rsi
lea addresses_normal_ht+0x17c78, %rdi
nop
nop
nop
nop
xor %r15, %r15
mov $92, %rcx
rep movsl
nop
nop
nop
nop
nop
and $40950, %rdi
lea addresses_WT_ht+0x2850, %r12
nop
nop
nop
nop
inc %r15
movups (%r12), %xmm4
vpextrq $1, %xmm4, %r13
nop
nop
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x6450, %rax
nop
inc %r12
movl $0x61626364, (%rax)
inc %rdi
lea addresses_UC_ht+0x18fd0, %rsi
lea addresses_D_ht+0x4850, %rdi
nop
nop
sub %rax, %rax
mov $27, %rcx
rep movsq
add %rcx, %rcx
lea addresses_WT_ht+0x1d7f8, %rax
nop
nop
nop
cmp %r15, %r15
mov (%rax), %rdi
nop
nop
nop
nop
add $58324, %rsi
lea addresses_A_ht+0x1e660, %r10
clflush (%r10)
nop
nop
nop
nop
sub %r13, %r13
movl $0x61626364, (%r10)
nop
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0x91c9, %rsi
lea addresses_WT_ht+0x6e30, %rdi
cmp %r13, %r13
mov $19, %rcx
rep movsq
nop
nop
nop
nop
nop
add $52979, %rdi
lea addresses_A_ht+0x2018, %rax
sub %r10, %r10
and $0xffffffffffffffc0, %rax
vmovaps (%rax), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rsi
sub $18268, %r10
lea addresses_normal_ht+0x9ce0, %rax
nop
nop
nop
nop
nop
sub $42907, %r13
movb (%rax), %r10b
nop
dec %rsi
lea addresses_WC_ht+0x1c74e, %rax
nop
nop
nop
cmp %rcx, %rcx
movw $0x6162, (%rax)
cmp %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %r9
push %rax
push %rbp

// Store
lea addresses_normal+0x18c9c, %r12
nop
xor $54087, %r9
movl $0x51525354, (%r12)
inc %rbp

// Store
lea addresses_WT+0xae50, %rax
nop
nop
add %r14, %r14
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
add $40125, %rbp

// Store
mov $0xbd0, %rbp
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm4
movups %xmm4, (%rbp)
nop
nop
nop
nop
xor $30938, %r8

// Load
lea addresses_RW+0x11050, %r8
nop
and %r14, %r14
movups (%r8), %xmm7
vpextrq $0, %xmm7, %r9
nop
nop
nop
nop
nop
sub $21055, %rbp

// Faulty Load
lea addresses_D+0x18850, %rbp
add %r14, %r14
movups (%rbp), %xmm4
vpextrq $1, %xmm4, %r12
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'36': 3}
36 36 36
*/
