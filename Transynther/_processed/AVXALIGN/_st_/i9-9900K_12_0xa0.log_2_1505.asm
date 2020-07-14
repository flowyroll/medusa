.global s_prepare_buffers
s_prepare_buffers:
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1bace, %rsi
lea addresses_WT_ht+0x14f6e, %rdi
nop
sub $8028, %rdx
mov $3, %rcx
rep movsq
nop
nop
sub %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rbx
push %rdi
push %rsi

// Store
mov $0x16df230000000f6e, %rdi
nop
nop
nop
add %r9, %r9
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
sub %r13, %r13

// Faulty Load
lea addresses_normal+0x1276e, %rsi
sub %r12, %r12
movb (%rsi), %r13b
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'34': 2}
34 34
*/
