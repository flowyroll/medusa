.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xbf8f, %r8
nop
nop
add %r13, %r13
mov (%r8), %cx
nop
nop
nop
inc %r15
lea addresses_UC_ht+0x2251, %rsi
lea addresses_WT_ht+0x166d0, %rdi
nop
nop
nop
and $636, %rdx
mov $20, %rcx
rep movsq
nop
nop
xor $62025, %rdx
lea addresses_WC_ht+0x1bed3, %rsi
lea addresses_D_ht+0x19a51, %rdi
clflush (%rdi)
and %r13, %r13
mov $4, %rcx
rep movsw
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x11e51, %rsi
nop
nop
nop
nop
dec %r15
mov (%rsi), %dx
nop
nop
nop
nop
xor $436, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rcx

// Store
mov $0x401db20000000251, %rcx
cmp $13753, %r8
movl $0x51525354, (%rcx)
nop
nop
nop
nop
nop
and $44540, %rbx

// Load
mov $0x251, %rbx
nop
xor $10062, %rbp
mov (%rbx), %cx
nop
nop
nop
and %r11, %r11

// Store
lea addresses_WC+0x15651, %rax
nop
inc %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rax)
xor %r8, %r8

// Store
lea addresses_A+0x5251, %rcx
nop
nop
nop
cmp %rax, %rax
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
cmp %rbp, %rbp

// Faulty Load
mov $0x401db20000000251, %r14
sub %rax, %rax
mov (%r14), %bx
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'52': 6, '00': 5}
52 52 00 52 52 00 52 52 00 00 00
*/
