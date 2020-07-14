.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rbp
push %rdi
push %rdx

// Store
lea addresses_UC+0x3928, %rdx
nop
nop
xor %r11, %r11
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
add $50022, %rdx

// Store
lea addresses_WT+0x11928, %rdx
and %r11, %r11
movl $0x51525354, (%rdx)
nop
nop
dec %r12

// Store
lea addresses_WT+0x3728, %r14
clflush (%r14)
nop
and $21184, %r13
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
add $36988, %r11

// Faulty Load
lea addresses_WT+0x11928, %r12
nop
nop
cmp %rbp, %rbp
mov (%r12), %r14
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rdx
pop %rdi
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 4, 'NT': True, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'54': 10}
54 54 54 54 54 54 54 54 54 54
*/
