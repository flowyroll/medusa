.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_PSE+0x1cfaf, %rsi
nop
nop
and %r14, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm2
movups %xmm2, (%rsi)
nop
nop
sub %rax, %rax

// Store
lea addresses_PSE+0x1c65b, %rax
nop
nop
nop
nop
nop
xor $28671, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rax)
nop
nop
dec %rsi

// Store
lea addresses_RW+0x68ef, %r10
nop
sub $29480, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm4
vmovaps %ymm4, (%r10)
nop
nop
nop
and $54836, %r14

// Faulty Load
lea addresses_PSE+0x1cfaf, %rdx
nop
nop
nop
cmp %rsi, %rsi
mov (%rdx), %r10w
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_RW', 'AVXalign': True, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'58': 7}
58 58 58 58 58 58 58
*/
