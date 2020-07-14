.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x3bf7, %rsi
lea addresses_UC_ht+0x9d1c, %rdi
nop
nop
nop
cmp %r9, %r9
mov $49, %rcx
rep movsq
xor %r11, %r11
lea addresses_UC_ht+0x6e2b, %rsi
lea addresses_A_ht+0x34f7, %rdi
clflush (%rsi)
dec %rbp
mov $60, %rcx
rep movsq
add $52481, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi

// Store
lea addresses_normal+0x6177, %rax
nop
nop
nop
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movaps %xmm4, (%rax)
dec %r12

// Faulty Load
lea addresses_A+0x6f77, %rdi
nop
sub $7553, %r14
movups (%rdi), %xmm1
vpextrq $1, %xmm1, %r9
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'45': 31}
45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45
*/
