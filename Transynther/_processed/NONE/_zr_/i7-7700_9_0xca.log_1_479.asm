.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rbp
push %rdi
lea addresses_WT_ht+0x17935, %r13
nop
nop
nop
nop
add %r11, %r11
mov (%r13), %r15d
nop
nop
nop
sub %r13, %r13
lea addresses_D_ht+0x45b5, %r12
nop
add %r10, %r10
movb $0x61, (%r12)
nop
and $55385, %r13
lea addresses_A_ht+0xc3b5, %r10
nop
nop
nop
dec %rdi
mov (%r10), %r13d
nop
nop
nop
nop
nop
mfence
pop %rdi
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x3545, %rax
nop
nop
nop
nop
nop
xor %r13, %r13
movb $0x51, (%rax)
nop
nop
nop
and $45733, %rdi

// REPMOV
lea addresses_WT+0x63d, %rsi
lea addresses_RW+0x129fd, %rdi
xor $7605, %r12
mov $14, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $57292, %rdi

// Faulty Load
lea addresses_A+0x1cbb5, %rsi
xor %rax, %rax
mov (%rsi), %edi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_RW'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'00': 1}
00
*/
