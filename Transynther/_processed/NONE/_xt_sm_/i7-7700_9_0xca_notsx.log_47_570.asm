.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x9ce8, %rsi
lea addresses_D_ht+0x1c78, %rdi
nop
xor %r11, %r11
mov $11, %rcx
rep movsq
nop
nop
nop
sub $48841, %r13
lea addresses_WC_ht+0x157e8, %rsi
lea addresses_UC_ht+0xeaa0, %rdi
nop
nop
nop
cmp %r8, %r8
mov $59, %rcx
rep movsb
nop
nop
nop
nop
inc %r11
lea addresses_A_ht+0x1a1e8, %r8
clflush (%r8)
and $31708, %r13
mov (%r8), %si
nop
nop
nop
sub $75, %r11
lea addresses_WC_ht+0x1ce88, %r13
clflush (%r13)
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r8
movq %r8, (%r13)
nop
nop
inc %r8
lea addresses_D_ht+0x46e0, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r8, %r8
movups (%rdi), %xmm7
vpextrq $0, %xmm7, %r13
nop
nop
nop
add %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rbp
push %rdi
push %rsi

// Load
lea addresses_US+0xe7e8, %r12
nop
and $62491, %rdi
mov (%r12), %esi
nop
and $39091, %r9

// Store
lea addresses_PSE+0xa7e8, %r14
nop
nop
cmp %rdi, %rdi
movb $0x51, (%r14)
cmp %r9, %r9

// Store
mov $0xbc8, %rbp
cmp %r15, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovups %ymm2, (%rbp)
nop
nop
cmp $31903, %r14

// Store
lea addresses_A+0x173e8, %r14
nop
nop
nop
nop
cmp %r15, %r15
movl $0x51525354, (%r14)
nop
nop
nop
nop
cmp %r9, %r9

// Load
lea addresses_RW+0x7744, %rsi
nop
nop
sub $37352, %r14
mov (%rsi), %r9
nop
nop
and %rdi, %rdi

// Faulty Load
lea addresses_PSE+0xa7e8, %r14
nop
and $20904, %rbp
movb (%r14), %r15b
lea oracles, %r12
and $0xff, %r15
shlq $12, %r15
mov (%r12,%r15,1), %r15
pop %rsi
pop %rdi
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'51': 47}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
