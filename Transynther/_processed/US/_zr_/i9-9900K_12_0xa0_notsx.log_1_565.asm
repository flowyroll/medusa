.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x7cac, %rsi
lea addresses_normal_ht+0x1685c, %rdi
nop
nop
and $57517, %r13
mov $62, %rcx
rep movsl
nop
nop
nop
nop
xor %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdx

// Store
lea addresses_normal+0x17554, %rdx
sub $14961, %r15
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
xor %rax, %rax

// Faulty Load
lea addresses_US+0xc6d4, %r14
nop
nop
cmp %r13, %r13
mov (%r14), %r15w
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'00': 1}
00
*/
