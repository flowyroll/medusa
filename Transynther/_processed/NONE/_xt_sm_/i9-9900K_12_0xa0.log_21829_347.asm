.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xfaef, %rsi
lea addresses_A_ht+0x1dd8d, %rdi
clflush (%rsi)
clflush (%rdi)
sub $35018, %r14
mov $127, %rcx
rep movsw
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x1db8d, %rbx
nop
nop
nop
nop
nop
and $39932, %rbp
movb (%rbx), %r15b
and %r14, %r14
lea addresses_WT_ht+0x802d, %r14
clflush (%r14)
nop
nop
nop
add %r15, %r15
mov $0x6162636465666768, %rbx
movq %rbx, (%r14)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x1c78d, %rbx
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
nop
dec %rbx
lea addresses_WT_ht+0x852d, %rdi
nop
nop
nop
nop
cmp %r14, %r14
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm3
vpextrq $0, %xmm3, %rbp
nop
xor $28423, %rcx
lea addresses_A_ht+0x7a6d, %r14
nop
add $62373, %r15
mov (%r14), %ebp
cmp $15027, %rsi
lea addresses_D_ht+0x1578d, %rbp
nop
nop
nop
nop
inc %r15
movl $0x61626364, (%rbp)
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x938d, %rsi
lea addresses_WC_ht+0xb8fe, %rdi
nop
nop
xor $56196, %r9
mov $82, %rcx
rep movsw
nop
nop
nop
nop
xor $36183, %rdi
lea addresses_D_ht+0xf78d, %rsi
lea addresses_WT_ht+0x906d, %rdi
nop
dec %rbp
mov $91, %rcx
rep movsb
add $2547, %r15
lea addresses_normal_ht+0x978d, %rsi
lea addresses_D_ht+0x1938d, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $99, %rcx
rep movsl
nop
nop
sub %r9, %r9
lea addresses_A_ht+0x28d, %r15
nop
add $45824, %rsi
movw $0x6162, (%r15)
nop
nop
nop
inc %r15
lea addresses_WC_ht+0x6a61, %rsi
lea addresses_UC_ht+0x958d, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $67, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r15
lea addresses_normal_ht+0x19f8d, %r14
nop
nop
nop
xor $45895, %rsi
movb (%r14), %r9b
dec %rcx
lea addresses_WT_ht+0x18629, %rbp
dec %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
and $0xffffffffffffffc0, %rbp
movaps %xmm5, (%rbp)
nop
nop
nop
nop
cmp $58664, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %rax
push %rbp
push %rcx

// Load
lea addresses_WC+0xd78d, %rbp
nop
nop
nop
nop
nop
and $31527, %r12
mov (%rbp), %r10w
nop
nop
nop
nop
nop
xor $27677, %r12

// Store
lea addresses_PSE+0x1af8d, %r12
nop
and %r8, %r8
movw $0x5152, (%r12)
nop
nop
and %rcx, %rcx

// Store
mov $0x78d, %r10
nop
nop
nop
xor $31723, %r13
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movups %xmm4, (%r10)
xor %rcx, %rcx

// Store
lea addresses_A+0x1241, %rbp
nop
nop
cmp $25620, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovaps %ymm0, (%rbp)
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_A+0x178d, %rax
xor $35895, %r10
movl $0x51525354, (%rax)
nop
nop
inc %r10

// Store
lea addresses_normal+0x12edd, %rbp
xor $22227, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovups %ymm3, (%rbp)
nop
nop
sub %r12, %r12

// Store
lea addresses_RW+0x778d, %r12
nop
nop
nop
nop
nop
xor $2174, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%r12)
dec %r13

// Faulty Load
lea addresses_RW+0x778d, %r12
nop
cmp $58935, %r13
mov (%r12), %ecx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 16}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
