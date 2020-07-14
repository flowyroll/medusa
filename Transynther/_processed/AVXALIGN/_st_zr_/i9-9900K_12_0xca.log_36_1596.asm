.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rbp
push %rbx
push %rdx

// Store
mov $0x7e80e900000002fb, %rbp
nop
nop
nop
nop
dec %rbx
movl $0x51525354, (%rbp)
sub $45081, %rbp

// Load
lea addresses_RW+0x1c37b, %r9
nop
nop
cmp $27088, %rdx
mov (%r9), %bx
sub %r8, %r8

// Store
lea addresses_PSE+0x1fb7b, %r9
cmp %rbp, %rbp
mov $0x5152535455565758, %r11
movq %r11, (%r9)
nop
nop
cmp %r9, %r9

// Store
lea addresses_PSE+0x1a07b, %rbp
nop
sub $6829, %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovntdq %ymm1, (%rbp)
and %r15, %r15

// Store
lea addresses_WC+0x47e3, %rbx
cmp $20338, %rbp
movb $0x51, (%rbx)
nop
nop
xor %r9, %r9

// Faulty Load
mov $0x7c2a1c000000007b, %rbx
add %rdx, %rdx
mov (%rbx), %rbp
lea oracles, %r8
and $0xff, %rbp
shlq $12, %rbp
mov (%r8,%rbp,1), %rbp
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': True, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 6, '58': 30}
58 58 58 00 58 58 58 58 00 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58
*/
