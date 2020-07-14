.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x1c0e4, %rbp
nop
sub $38481, %rdx
movl $0x51525354, (%rbp)
nop
nop
sub %r12, %r12

// REPMOV
lea addresses_PSE+0x1aae4, %rsi
lea addresses_UC+0x1b3c4, %rdi
nop
nop
nop
and $52671, %rbx
mov $27, %rcx
rep movsb
nop
xor %r12, %r12

// Store
mov $0x44a99b00000008e4, %rbx
nop
nop
nop
sub $38830, %r11
movw $0x5152, (%rbx)
nop
nop
nop
and $50014, %r11

// Store
mov $0x44a99b00000008e4, %rbp
clflush (%rbp)
nop
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %r12
movq %r12, (%rbp)
nop
nop
sub %rbp, %rbp

// Store
lea addresses_normal+0x16ce4, %rcx
nop
xor $52761, %r12
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
nop
nop
cmp $4832, %rcx

// Store
lea addresses_WC+0x4744, %rbp
nop
nop
add $23199, %rbx
movl $0x51525354, (%rbp)
nop
xor %rbp, %rbp

// Faulty Load
mov $0x44a99b00000008e4, %rdi
nop
add $16028, %rdx
mov (%rdi), %rbx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_PSE'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'58': 2}
58 58
*/
