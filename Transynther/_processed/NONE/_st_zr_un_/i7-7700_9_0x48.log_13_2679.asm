.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_PSE+0x1ed9e, %rsi
lea addresses_PSE+0x1351e, %rdi
nop
nop
nop
xor %r8, %r8
mov $101, %rcx
rep movsw
nop
nop
nop
xor %r8, %r8

// Faulty Load
lea addresses_A+0x1059e, %rcx
nop
nop
nop
nop
cmp $33385, %r10
mov (%rcx), %r8
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'6d': 3, '33': 7, '00': 3}
33 33 6d 33 33 33 6d 00 6d 33 00 33 00
*/
