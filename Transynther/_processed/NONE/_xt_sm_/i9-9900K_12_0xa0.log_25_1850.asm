.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rax
push %rbp
push %rdx
push %rsi

// Store
mov $0x37d, %r9
nop
cmp $13017, %rax
mov $0x5152535455565758, %rsi
movq %rsi, (%r9)
nop
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_normal+0x645d, %r10
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovaps %ymm4, (%r10)
nop
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_UC+0x1921d, %rsi
nop
sub %r10, %r10
mov $0x5152535455565758, %r9
movq %r9, (%rsi)
nop
and $39857, %r10

// Store
lea addresses_RW+0x291d, %r9
add %rdx, %rdx
mov $0x5152535455565758, %r14
movq %r14, (%r9)
nop
nop
nop
nop
cmp $11399, %rdx

// Faulty Load
lea addresses_RW+0x291d, %r10
clflush (%r10)
nop
nop
nop
nop
nop
add $56798, %rsi
mov (%r10), %r9w
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'58': 25}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
