.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x30e3, %rbp
nop
nop
nop
xor %rbx, %rbx
movb $0x51, (%rbp)
nop
add $29749, %r12

// Store
lea addresses_WT+0x8a46, %r12
nop
sub %rsi, %rsi
movw $0x5152, (%r12)
nop
nop
nop
nop
cmp %r12, %r12

// Store
lea addresses_WT+0x12a03, %rax
sub $46317, %rsi
movb $0x51, (%rax)
add $37679, %r15

// REPMOV
lea addresses_A+0x1bc03, %rsi
mov $0xce9, %rdi
xor $43661, %rax
mov $26, %rcx
rep movsb
add %rsi, %rsi

// Faulty Load
lea addresses_WT+0x12a03, %r12
nop
nop
nop
nop
sub %rbx, %rbx
mov (%r12), %rbp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_WT'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'51': 10}
51 51 51 51 51 51 51 51 51 51
*/
