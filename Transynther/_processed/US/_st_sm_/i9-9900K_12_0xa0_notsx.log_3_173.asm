.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rbx
lea addresses_UC_ht+0x16e67, %r15
nop
nop
add %r9, %r9
vmovups (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbp
nop
xor $34802, %r13
lea addresses_WC_ht+0x1a2c7, %r14
clflush (%r14)
add $36564, %rbx
and $0xffffffffffffffc0, %r14
movaps (%r14), %xmm1
vpextrq $0, %xmm1, %rax
cmp %rbp, %rbp
lea addresses_UC_ht+0x1c96f, %r9
nop
nop
nop
nop
nop
inc %r13
mov (%r9), %r14d
nop
add %rax, %rax
lea addresses_normal_ht+0x8387, %r13
nop
nop
and %r14, %r14
mov (%r13), %r15
nop
and $1426, %r13
lea addresses_WC_ht+0x3bc7, %r15
nop
nop
nop
nop
and $14146, %r14
mov $0x6162636465666768, %r13
movq %r13, (%r15)
nop
inc %r9
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rdi

// Load
lea addresses_D+0x175c7, %r13
nop
nop
nop
nop
nop
and $13999, %r14
movb (%r13), %r9b
inc %rcx

// Store
lea addresses_US+0xdc7, %r12
nop
nop
nop
nop
xor $59137, %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movntdq %xmm4, (%r12)
nop
nop
cmp %rdi, %rdi

// Store
mov $0x2f6b3e000000024f, %r9
nop
nop
cmp %r14, %r14
movw $0x5152, (%r9)
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_UC+0x3292, %r14
nop
inc %r9
movw $0x5152, (%r14)
cmp $58786, %r12

// Store
lea addresses_D+0x1c6c2, %rdi
cmp %rcx, %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
sub %r13, %r13

// Load
lea addresses_US+0xdc7, %r14
clflush (%r14)
nop
nop
nop
nop
nop
sub $45903, %r9
mov (%r14), %ecx
nop
nop
nop
nop
nop
add %rcx, %rcx

// Faulty Load
lea addresses_US+0xdc7, %r14
nop
nop
nop
and %rdi, %rdi
vmovups (%r14), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r12
lea oracles, %rcx
and $0xff, %r12
shlq $12, %r12
mov (%rcx,%r12,1), %r12
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': True, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 8}}
{'58': 3}
58 58 58
*/
