.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbx
lea addresses_normal_ht+0x5ab, %rbx
sub %r12, %r12
movl $0x61626364, (%rbx)
nop
nop
and $35989, %r11
pop %rbx
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rax
push %rbp
push %rdx
push %rsi

// Load
lea addresses_US+0x144ab, %rbp
clflush (%rbp)
nop
xor $62231, %rsi
mov (%rbp), %r11w
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_UC+0x8aab, %r14
clflush (%r14)
nop
nop
nop
nop
nop
add %rax, %rax
movl $0x51525354, (%r14)
sub $1335, %r10

// Store
lea addresses_US+0x356b, %rsi
nop
add %r10, %r10
movb $0x51, (%rsi)
and %rsi, %rsi

// Faulty Load
lea addresses_US+0x13aab, %rsi
nop
nop
nop
nop
cmp %r11, %r11
mov (%rsi), %r14d
lea oracles, %rax
and $0xff, %r14
shlq $12, %r14
mov (%rax,%r14,1), %r14
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'54': 66}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
