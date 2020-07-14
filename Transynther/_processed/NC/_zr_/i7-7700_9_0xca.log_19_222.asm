.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rcx

// Store
lea addresses_normal+0x42c2, %rax
xor %r8, %r8
movl $0x51525354, (%rax)
add $42338, %r9

// Store
lea addresses_US+0x40c2, %rcx
sub %r8, %r8
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
and %rax, %rax

// Store
lea addresses_D+0xecc2, %r11
nop
nop
and $35045, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovups %ymm6, (%r11)
and %r12, %r12

// Store
mov $0xc2, %r8
and $54646, %r11
movb $0x51, (%r8)
nop
sub %r12, %r12

// Faulty Load
mov $0x7d6ac300000007c2, %rax
nop
nop
nop
nop
xor $64282, %rcx
movb (%rax), %r9b
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 19}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
