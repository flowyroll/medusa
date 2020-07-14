.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x10642, %rcx
sub $33162, %r14
movw $0x6162, (%rcx)
nop
inc %rsi
lea addresses_WC_ht+0x12c22, %rdi
nop
xor %r13, %r13
vmovups (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
nop
cmp $15612, %rsi
lea addresses_D_ht+0x4c02, %rdi
inc %r10
mov $0x6162636465666768, %r14
movq %r14, %xmm6
and $0xffffffffffffffc0, %rdi
movntdq %xmm6, (%rdi)
and %r14, %r14
lea addresses_D_ht+0x8802, %rsi
lea addresses_WT_ht+0x19402, %rdi
nop
nop
inc %r12
mov $65, %rcx
rep movsb
nop
add %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rbp
push %rdi
push %rdx

// Store
lea addresses_A+0x16722, %rdi
nop
nop
nop
nop
and $19724, %rbp
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
sub $52335, %r9

// Store
lea addresses_A+0x12342, %r8
nop
nop
nop
nop
and %r12, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movntdq %xmm0, (%r8)
nop
add $3336, %rdx

// Store
lea addresses_RW+0x1a402, %r12
nop
nop
nop
cmp $17573, %r9
movw $0x5152, (%r12)
nop
nop
nop
nop
cmp $40685, %r9

// Store
lea addresses_UC+0x7eda, %r14
nop
nop
and $59470, %r8
movw $0x5152, (%r14)
nop
nop
nop
nop
cmp $56796, %rdi

// Store
lea addresses_UC+0x19c02, %rdi
and $48253, %r14
mov $0x5152535455565758, %r9
movq %r9, (%rdi)
nop
nop
sub $16984, %rbp

// Store
mov $0x102, %rdi
nop
dec %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovntdq %ymm4, (%rdi)
nop
nop
nop
nop
nop
and %r9, %r9

// Store
lea addresses_US+0xf208, %r14
and %r8, %r8
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
dec %rdi

// Store
mov $0x718b79000000054c, %r12
nop
nop
nop
inc %r9
mov $0x5152535455565758, %rdx
movq %rdx, (%r12)
nop
and %r12, %r12

// Store
lea addresses_normal+0xd802, %rdx
clflush (%rdx)
nop
add $47148, %rbp
mov $0x5152535455565758, %r12
movq %r12, %xmm6
movups %xmm6, (%rdx)
cmp $45531, %r14

// Store
mov $0x9afdd0000000782, %r14
nop
and $8876, %r8
movw $0x5152, (%r14)
xor %r12, %r12

// Store
mov $0x6b936d0000000c78, %rdi
clflush (%rdi)
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %r9
movq %r9, (%rdi)
nop
dec %rbp

// Store
lea addresses_WC+0x3742, %r12
nop
nop
nop
nop
nop
xor $12708, %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movups %xmm4, (%r12)
nop
nop
nop
nop
xor $57829, %rdx

// Store
mov $0x765ca50000000402, %r8
nop
nop
nop
cmp $59438, %rbp
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_RW+0x9302, %rbp
clflush (%rbp)
nop
dec %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
nop
and $13427, %rdi

// Faulty Load
mov $0x765ca50000000402, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
cmp %r8, %r8
mov (%rbp), %edi
lea oracles, %rdi
and $0xff, %rdi
shlq $12, %rdi
mov (%rdi,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 5, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_NC', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': True, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'00': 1}
00
*/
