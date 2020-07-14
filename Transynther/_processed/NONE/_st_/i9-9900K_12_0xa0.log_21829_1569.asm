.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1157c, %r14
nop
add $60773, %rsi
movl $0x61626364, (%r14)
nop
nop
sub $53982, %r12
lea addresses_D_ht+0x1717c, %rsi
lea addresses_UC_ht+0x2e00, %rdi
nop
nop
cmp %rdx, %rdx
mov $3, %rcx
rep movsl
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_normal_ht+0x18fbc, %rcx
nop
nop
nop
nop
nop
cmp $60654, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
xor %r12, %r12
lea addresses_UC_ht+0x1a12, %r12
nop
nop
nop
nop
nop
add $48567, %r10
mov $0x6162636465666768, %r14
movq %r14, (%r12)
nop
nop
nop
nop
xor $9928, %rsi
lea addresses_A_ht+0x1d97c, %rdi
and $19932, %rsi
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
add $47636, %rdi
lea addresses_D_ht+0x1ab7c, %rsi
lea addresses_normal_ht+0xbfeb, %rdi
nop
nop
nop
add $57524, %r10
mov $61, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_D_ht+0x1497c, %rdx
nop
nop
nop
sub $45457, %rdi
movb $0x61, (%rdx)
nop
nop
nop
nop
cmp $12819, %r12
lea addresses_A_ht+0x14210, %rsi
lea addresses_WC_ht+0x94bc, %rdi
nop
nop
nop
nop
and $3520, %r14
mov $125, %rcx
rep movsl
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x49bc, %rdi
clflush (%rdi)
nop
nop
add %r10, %r10
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
dec %r14
lea addresses_WT_ht+0x7c, %rsi
nop
nop
nop
sub $5033, %rdi
mov (%rsi), %rdx
nop
and %r12, %r12
lea addresses_A_ht+0x1e37c, %rdi
dec %rdx
mov $0x6162636465666768, %r12
movq %r12, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
nop
nop
sub $24053, %rcx
lea addresses_UC_ht+0xb27c, %rcx
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
nop
cmp $8855, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rdi

// Store
mov $0xb7c, %r8
nop
nop
nop
nop
sub %rdi, %rdi
movb $0x51, (%r8)
xor %rdi, %rdi

// Store
lea addresses_WT+0x1897c, %rbx
and %rbp, %rbp
mov $0x5152535455565758, %r12
movq %r12, (%rbx)
nop
nop
nop
nop
nop
cmp $44492, %rbx

// Load
lea addresses_US+0x54fc, %rbx
nop
nop
add %r12, %r12
mov (%rbx), %r13d
nop
nop
nop
add $53703, %rbp

// Store
lea addresses_D+0x1898c, %r12
nop
nop
add %rbp, %rbp
movb $0x51, (%r12)
nop
nop
nop
nop
nop
inc %rbx

// Store
lea addresses_A+0x3f1c, %rbx
nop
nop
add $44267, %rax
movw $0x5152, (%rbx)
nop
inc %r8

// Store
lea addresses_UC+0x1771c, %rax
nop
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %r12
movq %r12, (%rax)
nop
nop
xor $9938, %r8

// Store
mov $0x5e066c0000000d7c, %rbx
nop
nop
xor $48442, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovntdq %ymm7, (%rbx)
nop
nop
nop
inc %r8

// Store
lea addresses_US+0x13bbc, %r13
clflush (%r13)
and %rax, %rax
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
movaps %xmm7, (%r13)
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_PSE+0xb87c, %rax
nop
nop
nop
cmp $11718, %r12
mov $0x5152535455565758, %rdi
movq %rdi, (%rax)
and $49140, %rax

// Store
lea addresses_RW+0x199bc, %rbp
nop
nop
nop
nop
nop
add $19161, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movups %xmm3, (%rbp)
nop
nop
inc %r13

// Faulty Load
lea addresses_WC+0x1e97c, %r13
nop
nop
nop
nop
nop
inc %rax
movb (%r13), %r12b
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_P', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_US', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 5, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_US', 'AVXalign': True, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_PSE', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
