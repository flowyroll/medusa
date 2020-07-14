.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x28c2, %rax
clflush (%rax)
nop
nop
nop
and $49336, %rbp
movw $0x6162, (%rax)
nop
nop
nop
nop
nop
and $15948, %rdx
lea addresses_normal_ht+0x16982, %rcx
nop
nop
nop
nop
nop
add $62134, %r15
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm1, (%rcx)
nop
nop
nop
and $59701, %rcx
lea addresses_UC_ht+0xf12a, %rcx
nop
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %r15
movq %r15, (%rcx)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x19c5, %r15
nop
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %r8
movq %r8, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
nop
sub $32049, %rax
lea addresses_D_ht+0x14302, %r15
nop
nop
nop
dec %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r15)
nop
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x19d82, %rcx
nop
nop
nop
xor %r15, %r15
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
dec %rax
lea addresses_UC_ht+0xf603, %r8
nop
nop
nop
nop
sub $44631, %rax
mov $0x6162636465666768, %r15
movq %r15, %xmm7
vmovups %ymm7, (%r8)
nop
nop
nop
nop
and $7395, %rbp
lea addresses_D_ht+0x9502, %rsi
lea addresses_normal_ht+0x18582, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $13, %rcx
rep movsb
cmp $24463, %rax
lea addresses_A_ht+0xfe82, %rax
and %r8, %r8
mov (%rax), %r15
nop
and %r12, %r12
lea addresses_UC_ht+0x16fe8, %r12
cmp %rcx, %rcx
movw $0x6162, (%r12)
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x17f82, %r15
clflush (%r15)
nop
nop
cmp %rbp, %rbp
mov (%r15), %r12
nop
nop
and %r15, %r15
lea addresses_D_ht+0x12f82, %rsi
lea addresses_UC_ht+0x13b42, %rdi
nop
nop
xor %rdx, %rdx
mov $98, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %rax
push %rbx
push %rdx

// Store
lea addresses_US+0x19182, %r12
nop
nop
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm7
movups %xmm7, (%r12)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r8
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_D+0xecc2, %r13
nop
add $45083, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, (%r13)
nop
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_D+0x13a8b, %rax
nop
dec %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
cmp $23688, %r12

// Store
lea addresses_UC+0x10f82, %rdx
nop
nop
nop
nop
nop
add $38441, %r13
mov $0x5152535455565758, %rbx
movq %rbx, (%rdx)
nop
nop
nop
nop
nop
and $44439, %r8

// Store
lea addresses_D+0x9782, %rax
nop
nop
add %r10, %r10
movl $0x51525354, (%rax)

// Exception!!!
nop
nop
nop
mov (0), %r10
nop
cmp %r8, %r8

// Store
lea addresses_D+0x382, %r13
nop
nop
nop
nop
dec %rax
movl $0x51525354, (%r13)
nop
nop
nop
cmp $5476, %r8

// Faulty Load
lea addresses_A+0xb382, %r13
nop
nop
xor %rbx, %rbx
movups (%r13), %xmm4
vpextrq $1, %xmm4, %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'46': 21817, 'ff': 2, '00': 6, '42': 1, '76': 1, '40': 1, '59': 1}
46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46
*/
