.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x9655, %rsi
lea addresses_normal_ht+0x4835, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $3959, %r13
mov $87, %rcx
rep movsb
and $58223, %r10
lea addresses_WC_ht+0x1c6f5, %rbx
nop
nop
nop
nop
xor $24880, %rbp
mov (%rbx), %r10
nop
nop
nop
nop
nop
add $54958, %rbp
lea addresses_A_ht+0x14885, %rsi
lea addresses_normal_ht+0x1aec5, %rdi
nop
nop
sub %r14, %r14
mov $60, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0xdcf5, %rbp
nop
nop
nop
nop
cmp %rdi, %rdi
movb (%rbp), %r14b
nop
dec %rbp
lea addresses_WC_ht+0x2c91, %rsi
lea addresses_A_ht+0xb6cd, %rdi
nop
nop
nop
nop
dec %rbx
mov $82, %rcx
rep movsw
nop
nop
nop
inc %rbx
lea addresses_UC_ht+0x18095, %r10
nop
nop
nop
inc %r14
movw $0x6162, (%r10)
nop
nop
nop
add $1025, %rcx
lea addresses_WC_ht+0x1451d, %rbp
nop
nop
nop
and $15358, %rdi
movw $0x6162, (%rbp)
nop
nop
nop
nop
lfence
lea addresses_normal_ht+0x76f5, %r13
nop
nop
dec %rbx
mov (%r13), %ecx
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x44f5, %rcx
nop
nop
nop
nop
cmp $60254, %r10
mov $0x6162636465666768, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rcx)
and $27286, %r13
lea addresses_WC_ht+0x14e35, %rbx
nop
nop
cmp $25630, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
and $0xffffffffffffffc0, %rbx
movaps %xmm6, (%rbx)
cmp $27722, %rdi
lea addresses_WT_ht+0xb635, %r14
nop
nop
and $20622, %rdi
movl $0x61626364, (%r14)
nop
inc %r10
lea addresses_A_ht+0x1e1b5, %rbx
nop
xor $60784, %rsi
mov $0x6162636465666768, %r10
movq %r10, (%rbx)
and $59537, %rsi
lea addresses_normal_ht+0x4775, %rsi
lea addresses_A_ht+0x178a5, %rdi
nop
xor %rbp, %rbp
mov $87, %rcx
rep movsw
xor %r10, %r10
lea addresses_A_ht+0xe7d5, %rsi
lea addresses_WT_ht+0x1ac89, %rdi
nop
nop
nop
nop
nop
add $11589, %r13
mov $63, %rcx
rep movsb
nop
and %r10, %r10
lea addresses_A_ht+0x184f5, %r14
nop
nop
nop
nop
add $47537, %rdi
mov (%r14), %bx
nop
nop
nop
nop
nop
cmp $45266, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rcx
push %rdx
push %rsi

// Store
lea addresses_RW+0xfb95, %r12
nop
nop
nop
nop
and $28079, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%r12)
nop
nop
nop
cmp $33070, %rsi

// Store
lea addresses_RW+0x1541d, %r10
nop
nop
nop
nop
cmp %r12, %r12
movb $0x51, (%r10)
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_WC+0x2ef5, %rcx
nop
nop
and %r8, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovaps %ymm0, (%rcx)
nop
nop
add $32345, %r8

// Store
lea addresses_WC+0x107b5, %rsi
nop
nop
nop
dec %r12
movb $0x51, (%rsi)
nop
nop
add %r12, %r12

// Store
lea addresses_RW+0x3999, %r14
nop
nop
cmp %r12, %r12
movb $0x51, (%r14)
nop
nop
nop
nop
add $5455, %r8

// Store
lea addresses_D+0x11975, %r8
nop
nop
add $48080, %r12
movl $0x51525354, (%r8)
nop
nop
nop
and $47414, %r8

// Store
lea addresses_US+0xf2f5, %r12
nop
nop
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm2
movups %xmm2, (%r12)
nop
nop
nop
and $64963, %r14

// Store
lea addresses_WC+0xb3b5, %r12
nop
inc %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movups %xmm0, (%r12)
nop
nop
nop
nop
dec %r8

// Store
lea addresses_D+0x74f5, %rcx
inc %r10
movw $0x5152, (%rcx)
nop
nop
nop
nop
inc %r12

// Store
lea addresses_PSE+0x1940c, %r12
nop
nop
sub %rdx, %rdx
movl $0x51525354, (%r12)
nop
nop
add $3060, %rdx

// Faulty Load
lea addresses_A+0x114f5, %r12
nop
nop
xor $13717, %rsi
movups (%r12), %xmm0
vpextrq $0, %xmm0, %r14
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'52': 28}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
