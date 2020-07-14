.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rax
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1331e, %r8
nop
nop
nop
nop
and %r13, %r13
movb (%r8), %r12b
nop
nop
nop
nop
add $11829, %rdx
lea addresses_UC_ht+0xb26e, %rdi
nop
nop
nop
nop
cmp $19882, %rax
movw $0x6162, (%rdi)
nop
nop
add %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_US+0xb5ee, %rsi
lea addresses_US+0x6fb6, %rdi
nop
nop
nop
nop
xor $56207, %r8
mov $43, %rcx
rep movsq
and %r8, %r8

// Faulty Load
lea addresses_US+0x8dee, %rsi
nop
add %r9, %r9
movb (%rsi), %cl
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_US', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 3}
00 00 00
*/
