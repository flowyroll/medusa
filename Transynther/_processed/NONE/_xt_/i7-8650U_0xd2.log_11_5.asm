.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rbp
push %rbx
push %rdi
push %rsi

// Store
mov $0x1053b200000009ba, %rsi
nop
nop
nop
nop
nop
cmp %r8, %r8
movw $0x5152, (%rsi)
nop
dec %r13

// Load
lea addresses_D+0xc52c, %rbx
sub %rdi, %rdi
mov (%rbx), %bp
nop
nop
nop
add $46930, %r13

// Faulty Load
lea addresses_PSE+0xcdac, %r13
nop
nop
nop
inc %rdi
mov (%r13), %ebx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'33': 11}
33 33 33 33 33 33 33 33 33 33 33
*/
