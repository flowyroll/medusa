.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rax
push %rbp

// Store
lea addresses_A+0xb9d0, %r11
nop
nop
nop
nop
cmp $28568, %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm1
movups %xmm1, (%r11)
nop
cmp $34146, %r13

// Store
mov $0x2663980000000a70, %rax
nop
nop
nop
nop
nop
cmp $40643, %r14
mov $0x5152535455565758, %r8
movq %r8, (%rax)
nop
nop
nop
nop
dec %r11

// Store
mov $0x998, %r13
nop
nop
nop
cmp %r11, %r11
movb $0x51, (%r13)

// Exception!!!
nop
nop
mov (0), %r14
nop
and %r14, %r14

// Store
lea addresses_US+0x10f98, %r8
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm1
movups %xmm1, (%r8)
nop
nop
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_A+0x11798, %r14
nop
xor $31216, %r11
movb (%r14), %r13b
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 119}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
