.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xf32d, %rsi
lea addresses_UC_ht+0x9f2b, %rdi
nop
xor %r10, %r10
mov $125, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r13
lea addresses_WT_ht+0x688b, %rdx
nop
cmp %rbp, %rbp
movb $0x61, (%rdx)
nop
nop
xor $41081, %r13
lea addresses_normal_ht+0x928b, %rsi
lea addresses_UC_ht+0x1808b, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
mov $95, %rcx
rep movsw
nop
nop
add %r8, %r8
lea addresses_A_ht+0x1bc8b, %rsi
lea addresses_WT_ht+0x1a28b, %rdi
nop
xor %rdx, %rdx
mov $45, %rcx
rep movsq
nop
nop
nop
cmp %r13, %r13
lea addresses_UC_ht+0xaa6b, %r13
clflush (%r13)
nop
nop
cmp $861, %r10
movups (%r13), %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_A_ht+0x1e01b, %rsi
lea addresses_D_ht+0x8d8b, %rdi
xor $33210, %r13
mov $98, %rcx
rep movsq
nop
nop
nop
and $60183, %r10
lea addresses_WC_ht+0xe887, %r10
nop
nop
add %rsi, %rsi
movups (%r10), %xmm7
vpextrq $1, %xmm7, %rbp
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_A_ht+0x11e8b, %rbp
nop
nop
nop
cmp $3132, %r8
movb $0x61, (%rbp)
nop
nop
nop
cmp $35081, %rcx
lea addresses_normal_ht+0x1d13d, %rsi
nop
nop
nop
nop
dec %r10
mov (%rsi), %rdi
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x6ecb, %r13
nop
nop
nop
cmp $60710, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r13)
nop
nop
nop
add $24428, %r8
lea addresses_WC_ht+0xc10d, %rcx
clflush (%rcx)
nop
sub %r8, %r8
mov (%rcx), %r10
nop
nop
nop
nop
xor $31789, %rdx
lea addresses_normal_ht+0x99eb, %rdi
nop
nop
nop
xor $19757, %rdx
vmovups (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r8
xor %r8, %r8
lea addresses_UC_ht+0x1548b, %rsi
lea addresses_UC_ht+0x18a8b, %rdi
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov $86, %rcx
rep movsb
nop
nop
nop
nop
xor $26945, %rsi
lea addresses_D_ht+0x748b, %rsi
lea addresses_A_ht+0xc96b, %rdi
nop
nop
add %rbp, %rbp
mov $121, %rcx
rep movsq
nop
nop
xor $21779, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rdi
push %rdx
push %rsi

// Store
mov $0xe0b, %rdx
nop
nop
sub $65489, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_WC+0x1635b, %r10
nop
nop
nop
nop
sub %rsi, %rsi
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
and $42908, %rsi

// Store
lea addresses_UC+0xc2f, %rsi
nop
nop
nop
nop
nop
add $45852, %r10
mov $0x5152535455565758, %rdx
movq %rdx, (%rsi)
nop
nop
dec %r14

// Store
lea addresses_D+0x998b, %rdi
nop
nop
cmp $30600, %r12
movb $0x51, (%rdi)
nop
nop
add $2395, %r8

// Store
lea addresses_PSE+0xec8b, %r8
nop
nop
xor $28422, %r14
mov $0x5152535455565758, %r10
movq %r10, %xmm0
vmovups %ymm0, (%r8)
xor $11001, %r12

// Store
lea addresses_WC+0x19e8b, %r14
nop
nop
nop
sub %rdi, %rdi
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_PSE+0xec8b, %r12
nop
nop
xor %rdx, %rdx
mov (%r12), %r8
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 5}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
