.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1eefd, %rsi
lea addresses_normal_ht+0x127bd, %rdi
nop
nop
dec %rbx
mov $127, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r9
lea addresses_normal_ht+0x12935, %rsi
nop
cmp $54069, %r13
movw $0x6162, (%rsi)
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rsi

// Store
lea addresses_A+0xf99b, %rbx
nop
nop
nop
sub %rcx, %rcx
movw $0x5152, (%rbx)
nop
dec %rsi

// Faulty Load
lea addresses_UC+0x4efd, %rcx
nop
cmp %r14, %r14
mov (%rcx), %r8
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rsi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'00': 15185, '10': 57, 'ff': 2095, '30': 3429, '47': 995, '67': 42, '52': 26}
00 00 10 ff 30 00 30 00 00 00 00 00 00 ff 30 00 00 00 47 ff 30 00 00 ff 00 00 47 47 47 ff 30 00 00 30 00 00 00 ff 30 00 ff 30 00 ff 30 00 00 00 00 00 00 00 00 00 ff 30 00 00 47 00 ff 30 00 00 00 00 ff 30 00 00 00 00 00 00 00 00 00 00 30 00 00 30 00 00 00 00 00 00 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 ff 30 67 00 00 ff 30 30 ff 30 00 00 00 00 00 00 30 00 00 00 ff 30 00 00 00 00 47 00 00 00 00 00 30 00 00 00 00 00 47 00 00 00 00 30 00 00 00 ff 30 00 00 00 00 00 00 00 00 00 30 00 47 10 00 00 00 00 00 00 00 00 00 00 00 47 00 00 ff 30 00 00 00 ff 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 30 00 00 00 00 00 00 00 30 00 47 47 00 00 00 47 47 30 00 00 00 00 ff 30 00 00 ff 30 00 00 47 00 00 30 00 47 10 00 00 00 00 00 00 00 00 00 ff 30 00 ff 30 00 ff 30 00 ff 30 00 00 00 00 00 00 47 00 00 00 00 00 30 00 00 00 00 ff 30 00 00 00 47 47 00 00 00 00 00 00 00 30 47 ff 30 ff 30 00 00 00 00 00 ff 30 00 00 ff 30 00 00 30 00 00 00 00 00 47 00 30 00 00 00 00 00 ff 30 00 00 00 00 00 00 00 00 30 00 00 ff 30 ff 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 30 00 00 00 00 00 00 47 ff 30 00 ff 30 00 00 47 00 00 00 00 00 00 00 ff 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 30 00 30 00 00 30 47 30 00 00 00 00 00 00 00 00 ff 30 ff 30 00 00 00 00 00 00 00 00 00 00 00 ff 30 00 30 00 ff 30 00 00 00 00 00 47 00 00 00 00 00 00 00 47 00 ff 30 00 ff 30 00 00 00 00 30 00 00 00 00 ff 30 00 00 00 00 00 00 00 00 00 00 47 47 00 00 ff 30 00 00 00 ff 30 00 00 00 ff 30 00 00 00 00 00 30 00 00 30 00 00 30 00 00 00 ff 30 00 00 00 00 00 00 00 30 00 00 00 ff 30 00 00 00 00 00 ff 30 00 00 00 00 00 00 00 47 00 00 00 30 00 ff 30 47 00 30 00 ff 30 ff 30 ff 30 00 00 47 30 00 ff 30 ff 30 00 00 00 00 00 00 00 30 00 30 00 00 00 00 00 00 00 00 00 47 ff 30 00 00 00 ff 30 00 ff 30 00 00 00 00 30 00 00 30 00 00 30 00 00 00 00 00 67 00 00 00 00 00 00 00 00 ff 30 00 00 00 00 00 00 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 30 00 00 00 00 00 ff 30 00 00 00 00 00 47 00 00 00 30 00 00 00 00 00 ff 30 00 00 ff 30 00 30 00 00 47 ff 30 ff 30 00 00 00 00 30 00 00 30 00 47 00 00 00 30 00 00 00 00 00 ff 30 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 ff 30 00 00 00 30 00 ff 30 ff 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 30 67 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 30 00 00 00 00 00 ff 30 ff 30 00 00 00 00 00 00 00 00 00 00 00 00 00 30 00 00 00 00 30 00 00 30 00 00 47 00 47 00 00 00 47 00 00 47 30 47 30 00 00 ff 30 00 47 00 00 00 00 47 00 00 00 00 00 30 00 00 47 00 00 00 00 00 00 ff 30 ff 30 00 00 00 00 00 30 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 47 ff 30 00 00 00 00 00 00 00 ff 30 47 00 00 00 00 00 00 00 00 00 00 00 ff 30 00 00 47 ff 30 00 00 00 00 00 00 00 00 00 00 00 00 30 00 00 00 00 30 00 00 00 00 ff 30 00 00 00 00 00 00 00 00 00 00 ff 00 30 00 00 00 00 ff 30 00 00 00 00 00 00 00 00 00 00 00 ff 30 00 00 00 00 00 00 30 00 00 00 00 30 00 47 00 30 00 00 00 00 ff 30 00 00 ff 30 00 00 00 47
*/
