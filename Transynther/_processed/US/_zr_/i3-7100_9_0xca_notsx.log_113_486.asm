.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x10eec, %rsi
lea addresses_normal_ht+0x11f45, %rdi
nop
nop
xor %r8, %r8
mov $62, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $30138, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rax
push %rbx

// Faulty Load
lea addresses_US+0x1b6ec, %r9
nop
nop
nop
dec %r13
mov (%r9), %r12w
lea oracles, %rbx
and $0xff, %r12
shlq $12, %r12
mov (%rbx,%r12,1), %r12
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'00': 113}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
