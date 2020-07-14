.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rax
push %rcx
push %rdi
lea addresses_A_ht+0x126f7, %rax
nop
nop
sub $65275, %rcx
movups (%rax), %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
nop
nop
sub $39860, %r9
lea addresses_UC_ht+0x157f7, %r8
nop
nop
nop
nop
sub $26914, %rax
mov (%r8), %cx
nop
add %rcx, %rcx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rbp
push %rcx
push %rdx

// Faulty Load
lea addresses_US+0x5ef7, %r14
nop
nop
nop
nop
sub $42670, %rdx
mov (%r14), %ebp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 53}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
