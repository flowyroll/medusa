.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x55e9, %rdx
nop
nop
nop
nop
and $10737, %rcx
mov (%rdx), %r9
nop
nop
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0x1cbd1, %rax
nop
nop
nop
nop
nop
xor $38850, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm6
vmovups %ymm6, (%rax)
nop
add %rsi, %rsi
lea addresses_normal_ht+0x185c9, %rsi
lea addresses_A_ht+0xdaa9, %rdi
nop
nop
nop
nop
inc %r12
mov $85, %rcx
rep movsb
nop
nop
cmp %rax, %rax
lea addresses_D_ht+0x17f49, %r12
clflush (%r12)
nop
nop
nop
nop
add $22247, %r8
movw $0x6162, (%r12)
nop
nop
sub %r12, %r12
lea addresses_WC_ht+0x84e9, %rsi
lea addresses_normal_ht+0xea9, %rdi
nop
nop
xor %r9, %r9
mov $45, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_A_ht+0x1c783, %rsi
nop
nop
nop
nop
inc %rax
mov (%rsi), %dx
add %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdx

// Store
lea addresses_RW+0x2569, %rbx
nop
nop
nop
nop
and %r12, %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm3
movaps %xmm3, (%rbx)
nop
add %rbx, %rbx

// Store
lea addresses_A+0xa8a9, %rcx
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
inc %rbx

// Store
mov $0x941, %r12
sub %r10, %r10
movw $0x5152, (%r12)
nop
nop
nop
nop
add $23457, %r12

// Faulty Load
lea addresses_D+0x1a2a9, %rdx
sub %r12, %r12
movups (%rdx), %xmm3
vpextrq $0, %xmm3, %r14
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 9, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'36': 8}
36 36 36 36 36 36 36 36
*/
