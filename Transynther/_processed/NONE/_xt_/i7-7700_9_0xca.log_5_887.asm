.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rax
push %rdx
push %rsi

// Store
lea addresses_WC+0x40f9, %r10
nop
nop
nop
nop
inc %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%r10)
nop
nop
sub $17491, %rax

// Store
lea addresses_US+0x1f61, %rsi
nop
nop
xor %r9, %r9
movl $0x51525354, (%rsi)
nop
nop
dec %rsi

// Load
lea addresses_WT+0xd539, %r13
nop
nop
xor $63066, %r11
mov (%r13), %eax
nop
add %r10, %r10

// Store
lea addresses_D+0x70ef, %rax
inc %rdx
mov $0x5152535455565758, %r10
movq %r10, (%rax)
nop
nop
cmp $62508, %rdx

// Faulty Load
lea addresses_D+0x2cf9, %rsi
nop
nop
and $3834, %r10
mov (%rsi), %eax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}}
{'src': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'36': 5}
36 36 36 36 36
*/
