.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rax
push %rdi
push %rsi

// Store
lea addresses_A+0x980e, %rsi
nop
nop
cmp %r9, %r9
movw $0x5152, (%rsi)
dec %rax

// Store
lea addresses_RW+0x164ce, %rsi
add $55395, %r15
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
inc %r9

// Store
lea addresses_RW+0x164ce, %rdi
nop
and $29736, %r12
mov $0x5152535455565758, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Faulty Load
lea addresses_RW+0x164ce, %r12
nop
nop
nop
nop
nop
cmp $3216, %r15
mov (%r12), %si
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'58': 12}
58 58 58 58 58 58 58 58 58 58 58 58
*/
