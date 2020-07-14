.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1decd, %rsi
lea addresses_D_ht+0x1d00d, %rdi
add %rbp, %rbp
mov $96, %rcx
rep movsq
nop
nop
inc %r15
lea addresses_A_ht+0x1180d, %r8
clflush (%r8)
nop
nop
xor %rdx, %rdx
mov (%r8), %edi
nop
nop
add %r8, %r8
lea addresses_A_ht+0x13909, %rcx
nop
nop
nop
nop
nop
and $24689, %rdx
movb (%rcx), %r8b
and $35240, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x1bc0d, %rcx
nop
nop
nop
nop
and $21040, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
nop
and %r12, %r12

// Store
mov $0xc3f, %r12
dec %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r12)
nop
nop
nop
add %rax, %rax

// Faulty Load
lea addresses_UC+0xdc0d, %rbp
nop
nop
nop
add %rdi, %rdi
mov (%rbp), %ax
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': True, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'58': 20955, '5f': 869, '00': 5}
00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 5f 5f 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 5f 58 58 58 58 58 58
*/
