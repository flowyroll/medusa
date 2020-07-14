.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x7e46, %rsi
lea addresses_UC_ht+0x14f06, %rdi
clflush (%rdi)
nop
nop
add %r12, %r12
mov $37, %rcx
rep movsl
cmp %r15, %r15
lea addresses_WC_ht+0xaf04, %rcx
cmp $54337, %r12
mov (%rcx), %di
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_WC_ht+0xe806, %r9
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm6
movups %xmm6, (%r9)
and %rsi, %rsi
lea addresses_D_ht+0x14e76, %r9
nop
nop
nop
xor %r13, %r13
mov (%r9), %r15
nop
nop
nop
nop
nop
inc %r15
lea addresses_normal_ht+0xf306, %r13
cmp %r12, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r13)
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x4a06, %rcx
nop
nop
nop
cmp $3921, %r13
mov (%rcx), %r9w
nop
xor %r15, %r15
lea addresses_WC_ht+0x616, %r13
nop
nop
nop
nop
cmp $28866, %rcx
mov $0x6162636465666768, %r12
movq %r12, %xmm0
vmovups %ymm0, (%r13)
nop
nop
nop
nop
nop
add $23933, %rcx
lea addresses_WT_ht+0x10f66, %r12
nop
nop
nop
and $24240, %r9
movb (%r12), %r13b
nop
nop
nop
inc %r9
lea addresses_A_ht+0x9ee8, %rdi
nop
nop
dec %r9
movb (%rdi), %r13b
nop
nop
nop
nop
sub $55844, %r13
lea addresses_WT_ht+0x1e506, %r13
nop
nop
nop
nop
nop
sub $59083, %r15
movw $0x6162, (%r13)
cmp $23473, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rdx

// Store
lea addresses_UC+0xe006, %rbp
nop
nop
nop
nop
nop
cmp $49562, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movaps %xmm6, (%rbp)
nop
nop
nop
nop
nop
dec %rdx

// Store
lea addresses_D+0xd5f6, %r15
nop
inc %rbp
movw $0x5152, (%r15)
nop
nop
nop
nop
cmp $58786, %rbp

// Faulty Load
lea addresses_normal+0x17a06, %rdx
nop
nop
nop
nop
add $51237, %r13
movb (%rdx), %r14b
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rdx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'34': 573}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
