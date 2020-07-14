.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rax
push %rdi

// Load
mov $0x7af, %rax
nop
nop
add %r12, %r12
mov (%rax), %r13
nop
nop
nop
dec %rdi

// Store
mov $0x756810000000dbf, %r11
nop
nop
nop
and $14280, %r15
mov $0x5152535455565758, %r13
movq %r13, (%r11)
nop
nop
nop
nop
and $5279, %rdi

// Store
lea addresses_WC+0x58af, %r13
nop
nop
and %r8, %r8
movw $0x5152, (%r13)
add $27228, %r13

// Faulty Load
lea addresses_A+0xd4af, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %r11, %r11
vmovntdqa (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r15
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 38}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
