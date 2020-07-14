.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x78d9, %rsi
lea addresses_normal_ht+0x1c7a9, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $98, %rcx
rep movsq
nop
add $6114, %rcx
lea addresses_normal_ht+0x189f9, %r11
nop
nop
add %r13, %r13
mov (%r11), %eax
nop
nop
nop
nop
nop
and $50036, %r11
lea addresses_A_ht+0x503d, %rcx
nop
cmp $21002, %r13
movl $0x61626364, (%rcx)
xor %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_PSE+0x18479, %r11
nop
nop
nop
nop
add $1722, %r10
mov $0x5152535455565758, %rsi
movq %rsi, (%r11)
nop
nop
nop
nop
nop
and $19789, %rcx

// Load
mov $0x1b49ca00000009f9, %r14
clflush (%r14)
nop
nop
nop
nop
add $2224, %rbp
movb (%r14), %bl
nop
nop
dec %rcx

// Faulty Load
lea addresses_US+0x10a79, %rbx
nop
nop
nop
nop
and %r11, %r11
mov (%rbx), %r10
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'80': 138, '3c': 1834, '08': 4417, '00': 2590, '1e': 382, '02': 237, 'd7': 413, '9f': 425, '45': 5119, 'de': 562, '01': 181, '1a': 1, 'e0': 166, '44': 286}
45 44 08 08 00 08 45 08 45 00 45 00 45 08 08 08 45 3c 08 08 1e 3c 45 00 00 45 80 d7 45 1e 08 08 00 08 45 3c 00 00 45 d7 08 45 08 08 45 45 08 45 3c 08 45 45 45 08 3c 45 45 3c 00 00 08 d7 80 45 00 3c 45 45 08 de 00 d7 00 45 08 45 08 45 3c de 45 08 de 45 45 08 3c 08 45 3c 45 45 08 00 45 3c 80 45 45 08 d7 3c 45 08 45 45 de 00 00 00 e0 45 08 3c e0 3c 45 00 08 08 00 00 45 08 08 45 45 08 3c 00 45 00 00 45 08 3c 00 45 de 08 45 3c 45 45 9f 08 3c 45 45 de 45 45 02 00 08 45 1e 08 00 45 08 08 45 45 08 3c 00 08 45 45 00 9f 45 45 1e 00 3c 45 45 45 08 08 45 08 00 08 08 08 3c 08 3c 45 80 08 d7 45 45 9f 3c 08 3c 08 45 08 08 45 08 45 3c 3c 08 1e 08 45 08 00 08 45 1e 00 08 45 08 08 45 45 00 08 9f 1e 08 08 d7 3c 45 00 08 3c 00 02 08 e0 08 08 45 45 3c 45 45 3c 08 00 3c 45 45 45 45 45 00 45 08 3c 9f 08 45 08 08 08 45 3c 08 45 44 08 9f 02 45 08 3c 08 9f 08 3c 08 08 08 3c 00 08 45 3c 45 45 00 08 08 00 3c 3c 08 1e 00 45 45 de 45 45 3c 08 08 3c 45 45 45 08 00 08 3c 08 08 45 3c 45 08 45 45 45 45 45 45 45 d7 08 08 08 45 08 45 08 00 3c 08 45 08 08 44 3c 00 08 3c 45 08 d7 08 45 3c 45 e0 45 45 08 3c d7 45 1e 00 45 3c 00 45 08 45 3c 08 08 45 00 45 08 08 08 00 1e 3c 45 9f 08 08 44 45 3c 3c 45 08 45 08 3c 45 00 3c 00 45 45 08 01 44 45 de 08 45 45 3c 08 08 45 08 08 08 08 45 08 1e 45 3c 08 3c 45 45 08 08 08 08 00 00 45 00 08 08 00 45 1e 45 45 45 08 45 45 45 08 45 00 08 45 08 00 00 3c 3c 3c 45 02 08 08 45 3c 00 45 08 08 3c 08 00 08 45 08 08 08 08 08 45 45 00 3c 00 08 08 3c 08 08 08 45 08 08 00 08 08 08 45 3c 45 1e 08 08 00 00 3c 3c 00 1e 45 45 3c 3c 08 45 08 02 45 45 08 00 00 08 08 01 9f 08 00 08 1e 45 3c 45 08 00 08 08 00 00 45 45 08 3c 45 45 00 de 45 08 45 de 80 45 08 08 de 08 08 00 01 45 00 08 01 08 de 44 d7 45 3c 45 3c 45 45 1e 45 00 08 45 45 08 00 44 08 08 00 e0 3c 00 45 45 08 08 02 45 d7 45 45 08 3c 45 d7 08 45 3c 45 00 08 45 00 00 44 08 08 44 3c 45 45 45 1e 45 45 44 08 08 3c 08 08 08 3c 3c 00 45 08 08 de 00 45 00 08 00 9f 08 1e 08 45 3c 44 45 08 08 00 00 45 00 80 08 45 45 45 00 45 45 00 00 08 00 45 45 1e 45 08 00 45 45 45 e0 de 45 45 08 e0 08 1e 45 00 08 45 45 e0 00 08 45 08 d7 45 3c 44 08 08 45 45 9f 45 00 00 00 08 45 45 08 08 08 08 08 45 45 08 45 08 45 45 08 08 3c 00 de 3c 45 08 45 45 45 3c 45 3c 00 45 00 00 3c 00 3c 45 45 08 45 e0 d7 08 45 00 3c 45 45 08 45 08 d7 08 45 1e 1e 08 00 45 00 01 08 45 45 08 00 45 08 00 3c 08 08 45 3c 1e 45 de 08 45 44 9f 00 00 45 de 3c 45 08 00 45 45 08 08 01 08 3c 3c 9f 00 9f 08 00 08 00 08 45 45 45 3c 45 45 3c 00 44 00 08 3c 45 08 d7 08 08 45 45 d7 3c 00 45 d7 3c 45 02 08 45 08 3c 00 00 00 45 00 00 45 45 08 45 9f 45 00 08 9f 45 08 45 45 08 d7 08 3c 08 08 00 3c 3c de 45 08 45 45 45 45 45 de 45 45 44 45 45 3c de 08 45 45 08 45 45 08 45 45 3c 08 00 08 45 08 45 45 3c 00 45 08 45 de 45 00 08 45 1e 00 45 08 45 3c 08 45 45 08 3c 08 08 45 45 08 08 45 45 45 45 08 08 08 3c 45 08 45 08 3c 45 08 08 44 d7 08 45 45 45 45 08 1e 00 08 00 00 44 08 00 3c 45 1e 00 45 45 00 3c 3c de de 00 45 d7 08 80 00 00 08 00 1e 08 08 45 44 1e 9f 3c 45 1e 1e 00 44 3c 45 44 08
*/
