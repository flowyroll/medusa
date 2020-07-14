.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x135f8, %rbp
and %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm2
vmovups %ymm2, (%rbp)
nop
nop
add $52599, %rdx
lea addresses_WC_ht+0xc2c8, %rsi
lea addresses_A_ht+0x4f20, %rdi
nop
nop
nop
nop
and %rbp, %rbp
mov $108, %rcx
rep movsl
nop
nop
inc %rsi
lea addresses_normal_ht+0x221c, %rbp
nop
nop
nop
nop
nop
xor $50929, %r12
movw $0x6162, (%rbp)
and $2427, %r8
lea addresses_D_ht+0x5ef8, %rsi
lea addresses_normal_ht+0x79f8, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub $44266, %r8
mov $17, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_D_ht+0x16c43, %rbp
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm3
movups %xmm3, (%rbp)
nop
nop
cmp $43406, %rbp
lea addresses_WT_ht+0x18228, %r8
nop
sub $15725, %rdi
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
add $36295, %r8
lea addresses_normal_ht+0xa8d8, %rsi
lea addresses_A_ht+0x10b38, %rdi
nop
nop
sub %rbp, %rbp
mov $123, %rcx
rep movsl
nop
nop
nop
sub $54465, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_PSE+0x27f8, %rsi
mov $0x7f8, %rdi
nop
nop
nop
nop
nop
sub $37151, %rbx
mov $104, %rcx
rep movsq
nop
nop
nop
and $19684, %r14

// REPMOV
lea addresses_A+0x133f8, %rsi
lea addresses_PSE+0x85e6, %rdi
xor %r12, %r12
mov $32, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r14, %r14

// REPMOV
lea addresses_A+0x6e38, %rsi
lea addresses_D+0x18744, %rdi
nop
nop
nop
sub $14090, %r13
mov $118, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r12, %r12

// Load
mov $0x5f02ee00000001f8, %r13
clflush (%r13)
nop
nop
nop
nop
nop
and %r14, %r14
movups (%r13), %xmm0
vpextrq $0, %xmm0, %rbx

// Exception!!!
nop
nop
mov (0), %r13
nop
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_WT+0x3df8, %r12
nop
nop
nop
nop
xor $51625, %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovups %ymm5, (%r12)
nop
and %rcx, %rcx

// Store
lea addresses_PSE+0x199f8, %r13
nop
nop
nop
and $63032, %rcx
mov $0x5152535455565758, %r12
movq %r12, (%r13)
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_US+0x1c9e0, %rdi
sub $13528, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, (%rdi)
nop
and %r13, %r13

// Load
lea addresses_WT+0x119b8, %rbx
clflush (%rbx)
nop
nop
nop
nop
cmp $17487, %rcx
mov (%rbx), %r13
nop
nop
nop
nop
nop
sub $47737, %r12

// Load
mov $0x5f02ee00000001f8, %rdx
nop
nop
nop
nop
nop
inc %r13
mov (%rdx), %ecx
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_US+0xedd4, %r13
clflush (%r13)
nop
nop
nop
dec %rbx
movb $0x51, (%r13)
xor %r13, %r13

// Faulty Load
mov $0x5f02ee00000001f8, %r12
nop
nop
nop
nop
nop
dec %rdi
mov (%r12), %r14d
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_P'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_PSE'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D'}}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'00': 1}
00
*/
