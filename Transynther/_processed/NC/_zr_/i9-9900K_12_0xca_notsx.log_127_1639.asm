.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x17be5, %rsi
lea addresses_D_ht+0x88c1, %rdi
nop
xor $13581, %r13
mov $67, %rcx
rep movsw
nop
xor %r10, %r10
lea addresses_A_ht+0x1c9d9, %r14
nop
nop
nop
nop
inc %r9
mov (%r14), %r13
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x6a2d, %rcx
nop
nop
nop
nop
nop
cmp $28446, %rsi
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
xor %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x11ecd, %rdx
nop
nop
nop
nop
dec %r9
movb $0x51, (%rdx)
nop
and %r9, %r9

// REPMOV
mov $0xaad, %rsi
lea addresses_UC+0xffad, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $63, %rcx
rep movsl
sub $30510, %rdx

// Load
lea addresses_PSE+0x3e2d, %rcx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%rcx), %bx

// Exception!!!
nop
nop
nop
mov (0), %rdi
nop
add $59440, %r13

// Faulty Load
mov $0x3b5700000000a2d, %rdi
nop
nop
nop
nop
nop
add $16223, %r9
movb (%rdi), %r13b
lea oracles, %rbx
and $0xff, %r13
shlq $12, %r13
mov (%rbx,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_P'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'00': 127}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
