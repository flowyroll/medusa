.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x3590, %rsi
lea addresses_D+0x1c330, %rdi
nop
nop
nop
nop
sub %r10, %r10
mov $94, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rdi, %rdi

// Faulty Load
lea addresses_D+0x230, %r10
nop
nop
nop
nop
nop
sub %r11, %r11
movb (%r10), %r14b
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_D', 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'36': 1}
36
*/
