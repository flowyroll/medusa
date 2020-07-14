.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rbp
push %rsi
lea addresses_A_ht+0x18888, %r14
nop
nop
xor $58524, %rsi
and $0xffffffffffffffc0, %r14
movntdqa (%r14), %xmm4
vpextrq $0, %xmm4, %rbp
cmp %r8, %r8
pop %rsi
pop %rbp
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %r9
push %rax
push %rdi

// Store
lea addresses_UC+0x129e8, %rdi
cmp $21083, %r13
mov $0x5152535455565758, %r12
movq %r12, (%rdi)
nop
and $17619, %rax

// Load
lea addresses_A+0x1da28, %rax
nop
nop
nop
nop
nop
and %r9, %r9
movb (%rax), %r15b
nop
nop
nop
nop
nop
cmp %r15, %r15

// Store
lea addresses_PSE+0x19888, %r12
and %rax, %rax
movb $0x51, (%r12)
and %r15, %r15

// Faulty Load
lea addresses_RW+0x4888, %r8
nop
nop
nop
nop
inc %rdi
mov (%r8), %r9
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': True, 'NT': True}}
{'32': 5}
32 32 32 32 32
*/
