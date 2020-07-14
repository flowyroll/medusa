.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x8429, %rsi
mov $0x6fd, %rdi
nop
sub $53925, %rbp
mov $122, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rsi

// Faulty Load
lea addresses_WC+0x50b5, %rcx
nop
nop
dec %r12
mov (%rcx), %si
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 17}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
