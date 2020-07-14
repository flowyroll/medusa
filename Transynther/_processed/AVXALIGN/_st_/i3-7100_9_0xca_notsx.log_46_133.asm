.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rbx
lea addresses_A_ht+0x1dd10, %r15
nop
nop
inc %r11
mov (%r15), %r10w
nop
cmp %rbx, %rbx
pop %rbx
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_PSE+0x9010, %rbx
nop
nop
cmp %rax, %rax
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
inc %rbp

// Store
mov $0x5cfcd00000000d50, %rax
nop
nop
nop
inc %rsi
movb $0x51, (%rax)
sub $29679, %r8

// Store
lea addresses_WC+0xe5de, %rbx
nop
nop
nop
nop
xor %r9, %r9
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
and %rax, %rax

// Store
mov $0x256c300000000a90, %rbp
sub %rax, %rax
movl $0x51525354, (%rbp)
nop
nop
nop
inc %rsi

// Store
lea addresses_US+0xd110, %rax
nop
nop
nop
nop
nop
sub $59491, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, (%rax)
nop
nop
nop
nop
nop
add %r8, %r8

// Load
lea addresses_WC+0x1ef90, %rbx
nop
nop
inc %r8
mov (%rbx), %edx
nop
dec %r8

// Faulty Load
lea addresses_D+0x10490, %rbp
nop
nop
sub %rbx, %rbx
movb (%rbp), %al
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'36': 46}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
