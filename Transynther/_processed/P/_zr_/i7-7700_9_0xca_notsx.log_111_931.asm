.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xdd1b, %rsi
lea addresses_normal_ht+0xa79b, %rdi
and %r15, %r15
mov $48, %rcx
rep movsq
nop
nop
nop
xor $6271, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rax
push %rbx
push %rdx
push %rsi

// Faulty Load
mov $0xd1b, %rbx
nop
nop
nop
sub %r8, %r8
movb (%rbx), %r12b
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'00': 111}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
