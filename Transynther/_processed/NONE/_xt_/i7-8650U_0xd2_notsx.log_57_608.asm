.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x9017, %rbx
clflush (%rbx)
cmp %r13, %r13
mov $0x6162636465666768, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rbx)
nop
cmp %rbx, %rbx
lea addresses_A_ht+0xe2c7, %r15
nop
and %rsi, %rsi
mov $0x6162636465666768, %rax
movq %rax, (%r15)
nop
cmp $25606, %r13
lea addresses_WT_ht+0x1ae97, %rsi
lea addresses_WC_ht+0x6f97, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add $18956, %r8
mov $50, %rcx
rep movsb
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x13097, %rax
nop
nop
nop
nop
dec %rsi
movw $0x6162, (%rax)
add %rdi, %rdi
lea addresses_WT_ht+0x13dbb, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $9133, %rbx
movb (%rdi), %r8b
nop
nop
nop
xor $31816, %r8
lea addresses_D_ht+0xbc67, %r15
nop
xor $42227, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
nop
nop
add $62237, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r9
push %rax
push %rcx

// Store
lea addresses_RW+0xc097, %r15
cmp $53618, %r12
movw $0x5152, (%r15)
nop
nop
nop
nop
sub $40900, %r15

// Store
lea addresses_WC+0xa725, %rax
sub $15992, %r9
mov $0x5152535455565758, %r10
movq %r10, (%rax)
nop
nop
nop
nop
nop
add %r9, %r9

// Store
lea addresses_RW+0x1f657, %r9
nop
nop
cmp $19955, %r13
movw $0x5152, (%r9)
nop
nop
nop
nop
inc %r10

// Faulty Load
lea addresses_WT+0x6e97, %r10
nop
nop
nop
nop
nop
add $10241, %rax
movups (%r10), %xmm0
vpextrq $0, %xmm0, %r12
lea oracles, %r10
and $0xff, %r12
shlq $12, %r12
mov (%r10,%r12,1), %r12
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'39': 57}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
