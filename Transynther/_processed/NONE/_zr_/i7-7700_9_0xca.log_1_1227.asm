.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xfa2f, %rsi
lea addresses_A_ht+0xe6a7, %rdi
nop
sub $28260, %r12
mov $88, %rcx
rep movsq
nop
nop
nop
and $61719, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_RW+0x10de7, %rsi
nop
add %r15, %r15
movb (%rsi), %r8b
nop
nop
nop
sub %rax, %rax

// REPMOV
lea addresses_PSE+0x19e7, %rsi
lea addresses_WT+0xa5a7, %rdi
nop
nop
nop
nop
xor %r8, %r8
mov $64, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rbx

// Faulty Load
lea addresses_A+0x69e7, %rbx
nop
add $56152, %rsi
mov (%rbx), %r10
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}}
{'00': 1}
00
*/
