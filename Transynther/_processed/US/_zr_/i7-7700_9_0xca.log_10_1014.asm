.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rbp
push %rdx

// Store
lea addresses_WT+0x1f33a, %r11
nop
nop
nop
nop
xor $57020, %rax
mov $0x5152535455565758, %r9
movq %r9, %xmm6
vmovups %ymm6, (%r11)
nop
nop
xor $12642, %rax

// Faulty Load
lea addresses_US+0x57ea, %rbp
nop
nop
nop
nop
add %r9, %r9
mov (%rbp), %edx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
