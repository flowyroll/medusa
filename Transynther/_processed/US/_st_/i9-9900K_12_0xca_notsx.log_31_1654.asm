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
lea addresses_A_ht+0x577f, %r15
sub $61541, %rdi
movb $0x61, (%r15)
nop
add $26736, %r14
lea addresses_normal_ht+0xaa6f, %rsi
lea addresses_WT_ht+0x853b, %rdi
add %r12, %r12
mov $110, %rcx
rep movsq
xor $37638, %r14
lea addresses_WC_ht+0x281f, %rcx
nop
nop
nop
nop
nop
add %r14, %r14
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_UC_ht+0x14657, %rsi
lea addresses_A_ht+0x1c0a4, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %r8, %r8
mov $22, %rcx
rep movsq
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_normal_ht+0x2bff, %rsi
lea addresses_normal_ht+0x1917d, %rdi
sub $64311, %rbp
mov $44, %rcx
rep movsw
nop
nop
nop
dec %r8
lea addresses_normal_ht+0x1097f, %r8
add %r12, %r12
movups (%r8), %xmm7
vpextrq $1, %xmm7, %r14
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x15b7f, %rbp
nop
nop
nop
nop
nop
mfence
movups (%rbp), %xmm2
vpextrq $0, %xmm2, %r8
nop
nop
nop
cmp $51903, %r8
lea addresses_normal_ht+0x18e02, %rsi
inc %rdi
movb (%rsi), %cl
nop
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0x1aeef, %rdi
clflush (%rdi)
nop
nop
cmp $10440, %rsi
mov (%rdi), %r14w
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_normal_ht+0x17ebf, %rsi
nop
nop
nop
add %r15, %r15
movb (%rsi), %cl
nop
nop
nop
nop
cmp $25223, %rcx
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
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0xbb3f, %rsi
lea addresses_A+0x10107, %rdi
nop
nop
nop
nop
inc %rbp
mov $5, %rcx
rep movsb
add %rsi, %rsi

// Store
mov $0x659c0f0000000b7f, %r10
nop
nop
nop
nop
nop
inc %r8
movb $0x51, (%r10)
nop
sub $19645, %r9

// Store
lea addresses_US+0x1e77f, %rsi
nop
nop
nop
nop
xor $16852, %r10
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovaps %ymm1, (%rsi)

// Exception!!!
nop
mov (0), %rsi
nop
nop
nop
and %r8, %r8

// Store
lea addresses_A+0xc298, %r9
clflush (%r9)
nop
nop
nop
nop
xor %rcx, %rcx
movw $0x5152, (%r9)
nop
sub $39602, %r8

// Faulty Load
lea addresses_US+0x1877f, %rcx
sub %r8, %r8
mov (%rcx), %r9w
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'58': 31}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
