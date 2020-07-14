.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rax
push %rcx
lea addresses_A_ht+0x1afe0, %r11
nop
nop
nop
nop
nop
cmp %r14, %r14
mov (%r11), %r15w
add %r8, %r8
lea addresses_UC_ht+0xd8c0, %rcx
nop
add %rax, %rax
movups (%rcx), %xmm7
vpextrq $0, %xmm7, %r14
and $15015, %r8
lea addresses_normal_ht+0x5290, %r14
nop
nop
nop
inc %r13
movl $0x61626364, (%r14)
nop
nop
xor $50444, %rax
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rsi

// Store
lea addresses_UC+0x11e3c, %rbp
clflush (%rbp)
sub %r15, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rbp)
nop
nop
nop
nop
nop
cmp $44862, %rsi

// Store
lea addresses_D+0x1645a, %r14
nop
nop
and $44573, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movntdq %xmm3, (%r14)
nop
nop
nop
nop
nop
add $37942, %r12

// Faulty Load
lea addresses_normal+0x35e0, %rbp
clflush (%rbp)
nop
add %r12, %r12
movups (%rbp), %xmm2
vpextrq $1, %xmm2, %r14
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rsi
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'34': 8}
34 34 34 34 34 34 34 34
*/
