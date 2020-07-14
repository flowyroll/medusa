.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x1418, %rsi
lea addresses_PSE+0xf0db, %rdi
nop
nop
nop
cmp %r14, %r14
mov $86, %rcx
rep movsl
nop
sub %rbx, %rbx

// Faulty Load
lea addresses_A+0xe8db, %rcx
nop
add $32652, %rbp
mov (%rcx), %rdi
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 53}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
