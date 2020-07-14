.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x15c46, %rsi
lea addresses_A_ht+0x14242, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $3092, %r11
mov $86, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rbx
push %rdi
push %rdx

// Faulty Load
lea addresses_US+0x642, %r8
nop
nop
nop
and $34295, %r12
movb (%r8), %r14b
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'00': 7}
00 00 00 00 00 00 00
*/
