.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rax
push %rbp
push %rdx
push %rsi

// Store
lea addresses_normal+0x5db2, %r13
dec %rax
movw $0x5152, (%r13)
nop
nop
nop
xor $41293, %r13

// Store
mov $0xec9cc0000000122, %rax
nop
nop
nop
xor %rbp, %rbp
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
sub $30218, %rax

// Faulty Load
lea addresses_PSE+0x1e4e2, %rdx
nop
cmp $48622, %r15
mov (%rdx), %r13
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'33': 8}
33 33 33 33 33 33 33 33
*/
