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
lea addresses_WC_ht+0x13748, %rcx
nop
nop
sub $11228, %rax
movw $0x6162, (%rcx)
nop
nop
nop
nop
xor %r8, %r8
lea addresses_UC_ht+0x1066a, %rax
nop
add %rdx, %rdx
movb (%rax), %r12b
nop
inc %rsi
lea addresses_A_ht+0x636c, %rcx
nop
add $65416, %r9
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
and $0xffffffffffffffc0, %rcx
movaps %xmm6, (%rcx)
nop
nop
cmp %r9, %r9
lea addresses_WC_ht+0x1bda, %rsi
lea addresses_UC_ht+0x1cb5a, %rdi
clflush (%rdi)
xor $38078, %rax
mov $74, %rcx
rep movsw
nop
nop
xor $53651, %r12
lea addresses_WC_ht+0x1495a, %rsi
lea addresses_WC_ht+0xe678, %rdi
nop
sub %r8, %r8
mov $123, %rcx
rep movsb
sub %r8, %r8
lea addresses_normal_ht+0xecde, %rsi
lea addresses_normal_ht+0x6f5a, %rdi
clflush (%rsi)
nop
xor %r9, %r9
mov $11, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $37655, %rdx
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
push %r13
push %r14
push %rbp
push %rbx
push %rdx
push %rsi

// Load
lea addresses_D+0x11b5a, %rsi
nop
nop
add %rdx, %rdx
mov (%rsi), %r13
nop
cmp %r14, %r14

// Faulty Load
lea addresses_US+0x12b5a, %rbx
nop
add $32235, %rsi
movups (%rbx), %xmm5
vpextrq $1, %xmm5, %rbp
lea oracles, %rdx
and $0xff, %rbp
shlq $12, %rbp
mov (%rdx,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'00': 19}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
