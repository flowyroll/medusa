.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rdi
push %rdx
lea addresses_A_ht+0x104b9, %rbp
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rax
movq %rax, (%rbp)
nop
nop
cmp %r9, %r9
lea addresses_WC_ht+0x2887, %rdx
nop
nop
nop
nop
nop
inc %r15
movb $0x61, (%rdx)
nop
nop
nop
nop
nop
xor $63803, %rdi
lea addresses_UC_ht+0x4e87, %rax
cmp %r15, %r15
movups (%rax), %xmm6
vpextrq $1, %xmm6, %rbx
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0x1c487, %rax
nop
sub %r9, %r9
mov (%rax), %dx
nop
nop
add %rbp, %rbp
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rbp
push %rbx
push %rdi

// Load
lea addresses_normal+0x12087, %r13
nop
nop
dec %rbx
vmovups (%r13), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r10
nop
nop
nop
nop
nop
and $18153, %rbx

// Store
mov $0xa69320000000f87, %r13
nop
xor %r12, %r12
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%r13)
nop
and $7833, %rbx

// Store
lea addresses_WT+0x5e37, %rbx
nop
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %rdi
movq %rdi, (%rbx)
cmp %r13, %r13

// Faulty Load
lea addresses_A+0x6087, %r14
nop
xor $19509, %rbx
mov (%r14), %rbp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rdi
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': True, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 10}, 'OP': 'LOAD'}
{'00': 7}
00 00 00 00 00 00 00
*/
