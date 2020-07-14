.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x249d, %r8
nop
nop
nop
nop
cmp $44827, %rcx
movl $0x61626364, (%r8)
nop
nop
inc %r15
lea addresses_D_ht+0x1558d, %rsi
lea addresses_UC_ht+0xf87d, %rdi
nop
nop
nop
nop
inc %r12
mov $69, %rcx
rep movsb
nop
nop
nop
nop
nop
add $38096, %r8
lea addresses_D_ht+0xd15d, %rsi
nop
nop
nop
nop
add %r12, %r12
movb (%rsi), %cl
add %r13, %r13
lea addresses_A_ht+0x199d, %r12
inc %rsi
movl $0x61626364, (%r12)
nop
nop
cmp $57501, %rdi
lea addresses_normal_ht+0xf341, %rcx
nop
nop
nop
nop
xor $58958, %r8
mov (%rcx), %di
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_D_ht+0x199d, %rsi
clflush (%rsi)
nop
nop
nop
xor %r12, %r12
movups (%rsi), %xmm3
vpextrq $1, %xmm3, %r13
nop
add %r12, %r12
lea addresses_A_ht+0x1459d, %rdi
nop
nop
nop
xor %r13, %r13
mov (%rdi), %r12
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x1a5bd, %rdi
nop
nop
cmp $60016, %r15
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
add $4283, %rdi
lea addresses_normal_ht+0x3b5d, %r12
clflush (%r12)
nop
nop
cmp %r15, %r15
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
and $62823, %rcx
lea addresses_WT_ht+0x1b29d, %r15
nop
nop
nop
nop
nop
add $62624, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%r15)
nop
nop
mfence
lea addresses_A_ht+0x1091d, %r12
nop
nop
nop
nop
nop
add %r15, %r15
movb $0x61, (%r12)
and %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rbx

// Store
lea addresses_normal+0x1159d, %r8
nop
nop
nop
nop
and %r13, %r13
mov $0x5152535455565758, %rbp
movq %rbp, (%r8)
nop
nop
nop
nop
sub %r10, %r10

// Store
lea addresses_D+0x1791, %r14
nop
nop
nop
and $636, %rbx
movl $0x51525354, (%r14)
nop
nop
add %r13, %r13

// Store
mov $0x28a049000000063f, %rbx
clflush (%rbx)
cmp %r12, %r12
movw $0x5152, (%rbx)
nop
nop
add $51153, %rbx

// Store
mov $0xc5d, %r10
nop
nop
nop
cmp $50935, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%r10)
nop
nop
nop
nop
nop
xor %r12, %r12

// Faulty Load
lea addresses_WT+0x199d, %rbx
nop
nop
xor %r14, %r14
mov (%rbx), %r13w
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'39': 16}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
