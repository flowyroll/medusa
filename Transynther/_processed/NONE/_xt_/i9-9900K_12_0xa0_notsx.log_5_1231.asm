.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rbp
push %rbx
push %rdi
push %rsi

// Load
lea addresses_WC+0x19d41, %r10
sub $28830, %rbx
movntdqa (%r10), %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
inc %rdi

// Store
lea addresses_WC+0x523f, %r12
nop
nop
sub %r8, %r8
movw $0x5152, (%r12)
nop
nop
and %r8, %r8

// Store
lea addresses_A+0xa469, %r10
nop
nop
sub %rsi, %rsi
movw $0x5152, (%r10)
and $20222, %rdi

// Faulty Load
lea addresses_normal+0x7a21, %r12
nop
nop
xor %r10, %r10
movups (%r12), %xmm7
vpextrq $0, %xmm7, %rdi
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'34': 5}
34 34 34 34 34
*/
