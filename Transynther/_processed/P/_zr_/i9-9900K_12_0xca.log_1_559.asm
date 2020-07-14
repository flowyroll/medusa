.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rbp
push %rcx
push %rsi

// Store
lea addresses_PSE+0x108be, %r12
nop
nop
dec %r11
movl $0x51525354, (%r12)
nop
nop
inc %r11

// Faulty Load
mov $0x42e, %r12
nop
nop
nop
inc %r10
mov (%r12), %cx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_P', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 1}
00
*/
