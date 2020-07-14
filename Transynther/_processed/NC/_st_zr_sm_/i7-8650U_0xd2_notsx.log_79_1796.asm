.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rdi
push %rsi
lea addresses_normal_ht+0x1c6a2, %r11
nop
nop
nop
nop
and %r10, %r10
movw $0x6162, (%r11)
nop
cmp $51181, %rsi
pop %rsi
pop %rdi
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %r9
push %rax
push %rdx

// Store
mov $0x20fead00000002a2, %r14
nop
xor %r9, %r9
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
sub $43172, %rax

// Load
lea addresses_US+0x11ca2, %rax
nop
nop
xor $46279, %r14
mov (%rax), %r8d
nop
nop
nop
nop
cmp %r10, %r10

// Faulty Load
mov $0x20fead00000002a2, %r8
and %r11, %r11
mov (%r8), %ax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'00': 77, '3e': 1, '52': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 3e 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
