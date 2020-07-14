.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1b635, %rdi
nop
nop
nop
add %r10, %r10
movb $0x61, (%rdi)
add %r13, %r13
lea addresses_A_ht+0x18a79, %rsi
lea addresses_normal_ht+0x10bc9, %rdi
nop
nop
inc %r11
mov $82, %rcx
rep movsb
nop
nop
and $30726, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rbx
push %rdi

// Faulty Load
lea addresses_US+0x10e79, %r12
cmp %r13, %r13
mov (%r12), %rbx
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
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
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'53': 985, '45': 10929, '00': 1989, '40': 3, '01': 23, 'ff': 7900}
ff 00 00 00 00 45 ff 45 ff 45 ff 45 ff 45 ff 45 45 ff 45 45 ff ff 45 ff 45 ff 45 ff 45 45 53 ff 45 45 ff ff 45 ff 45 53 ff ff 45 ff 45 ff 45 00 ff 45 ff ff ff 45 ff 45 45 45 ff 45 ff 45 ff 45 45 45 ff 45 ff 45 45 ff 45 ff ff 45 ff 00 ff ff ff 45 ff 45 ff 45 ff 53 ff ff 01 ff 01 45 ff 45 00 ff 45 53 ff 45 ff ff 45 45 53 00 00 45 ff ff 45 ff 45 45 ff 53 ff 45 ff 00 45 45 ff ff ff 45 45 45 45 ff 45 45 ff 45 45 ff 45 00 ff 45 45 ff 45 45 ff 45 45 ff 45 ff 45 53 ff 45 ff 45 53 ff 45 45 00 ff 45 ff 45 ff 45 00 45 53 ff 45 45 ff ff ff 45 53 ff 45 00 ff 53 45 ff 45 ff ff ff 45 ff 45 53 45 00 ff ff 45 45 ff 45 00 45 ff 45 ff 45 ff 45 ff 45 ff 45 45 ff 45 53 ff 45 45 ff 45 ff 45 ff 45 45 45 ff 45 ff 45 00 45 ff 45 ff 45 45 ff 45 00 ff 45 45 45 ff 45 00 45 45 ff 45 ff 45 ff 45 53 45 45 45 53 ff 45 ff 45 ff 45 00 00 ff 45 45 45 45 45 45 ff 45 45 00 ff 45 ff 45 ff 45 45 53 45 ff ff 45 53 ff ff 45 45 ff 45 45 ff 45 ff 45 00 45 ff 45 53 53 ff 45 ff 45 ff ff ff 45 ff 45 45 ff 45 ff 45 ff ff ff 45 45 45 ff 45 00 45 45 ff ff ff 45 ff 45 45 ff ff 45 45 45 ff 45 ff 45 53 45 ff 45 ff ff 45 00 ff ff 45 ff 45 53 00 45 45 45 00 45 45 ff ff 45 ff 45 53 ff 45 ff 45 45 45 ff 45 00 45 ff 45 ff 45 45 45 ff 45 ff 53 ff 45 ff ff 45 ff 00 45 45 00 45 ff 45 45 ff 45 ff 45 ff 45 ff 45 00 45 45 00 45 45 ff 45 ff 45 ff 45 ff 45 00 ff 53 45 ff 45 45 45 ff 45 00 ff 45 00 45 45 45 ff 45 45 00 ff 45 ff 45 ff 45 ff 45 ff 45 45 ff 00 ff 53 45 ff 45 53 ff ff ff 45 ff 45 ff 45 ff 45 45 ff ff 45 45 45 45 ff 45 45 45 ff 45 45 00 ff 45 45 ff 45 45 ff 53 45 ff 45 ff 45 ff ff 45 45 00 ff 45 ff 45 ff ff 45 45 ff 45 ff 45 00 ff 45 ff 45 ff 45 ff 45 00 ff 45 53 ff 45 53 ff 45 45 45 45 ff 45 00 ff 45 45 45 ff 45 ff 45 ff ff ff 53 45 00 45 45 45 ff 45 ff 45 00 ff ff 45 ff 45 45 45 ff 53 45 ff 00 53 45 ff 45 45 ff 45 45 ff 45 ff 00 45 00 ff ff 45 ff 45 00 00 45 ff 45 45 ff 45 45 45 ff 45 ff 53 00 ff 45 ff ff ff 53 45 ff 45 ff 45 45 ff ff 45 45 45 ff 45 45 ff 45 53 45 ff 45 ff 45 ff ff 53 45 ff 45 00 ff 45 ff 00 ff ff 45 00 45 ff ff ff 45 ff 45 ff 45 00 ff 45 ff 00 45 ff 45 00 ff 45 45 ff 45 45 ff 53 ff 45 ff 45 ff 45 ff ff ff 45 ff 45 ff 45 00 ff 00 ff 45 ff 53 ff 45 45 45 ff 45 00 45 ff 45 45 45 ff 45 ff 45 00 ff 53 ff 45 ff 45 ff 45 45 45 ff 45 45 ff 45 ff ff 45 45 ff 45 00 45 ff 45 53 45 45 45 45 45 45 45 ff 45 45 45 45 ff 45 00 45 ff 45 45 45 ff ff 45 45 ff 45 ff 45 ff 45 45 45 45 ff 45 00 45 45 ff 45 ff ff 45 ff 45 45 45 ff 45 45 00 ff 45 ff 45 45 45 45 ff 45 45 ff 53 45 45 45 ff 45 ff 45 45 45 45 45 45 45 45 00 00 00 ff ff ff 45 45 ff 45 ff 45 ff 45 00 ff 45 ff 45 ff 45 00 45 ff 45 45 45 ff 45 53 45 ff 45 45 45 ff 45 00 45 ff 45 45 ff 45 45 45 45 ff 53 45 45 ff 53 45 45 45 45 53 ff 45 ff 45 ff 45 45 ff 45 45 ff ff 45 45 45 00 ff 00 ff 45 ff 45 ff 45 ff 45 45 ff 45 53 45 45 45 ff 45 00 45 ff 53 ff 45 53 ff ff ff 45 ff 45 45 00 45 ff 45 ff 45 45 45 45 ff 45 45 45 ff 45 45 45 ff 45 45 ff 45 ff 45 ff 45 ff ff ff 00 ff 53 45 45 45 00 45 45 ff 53 ff 45 45 45 ff 00 45 00 ff 45 ff 45 ff ff 45 ff ff 45
*/
