.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rbp
push %rdi
lea addresses_D_ht+0x191d4, %rdi
clflush (%rdi)
nop
nop
nop
cmp %rbp, %rbp
mov (%rdi), %r12
sub $18369, %r9
pop %rdi
pop %rbp
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rsi

// Load
lea addresses_WT+0x1a3cc, %rax
nop
nop
nop
nop
mfence
mov (%rax), %r8w
nop
cmp $61933, %rax

// Faulty Load
lea addresses_US+0x1045c, %r15
nop
nop
nop
nop
cmp $45611, %rsi
movb (%r15), %al
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 61}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
