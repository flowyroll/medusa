.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rbx
push %rdi

// Store
lea addresses_PSE+0xe587, %r10
nop
nop
xor %rbx, %rbx
movl $0x51525354, (%r10)
inc %r13

// Store
lea addresses_UC+0x158ef, %r11
nop
nop
nop
and $16707, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movups %xmm6, (%r11)
nop
nop
nop
add %r10, %r10

// Store
lea addresses_RW+0x15787, %r10
inc %r11
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
sub $43996, %rdi

// Load
lea addresses_PSE+0xe587, %rdi
nop
xor %r14, %r14
movb (%rdi), %r11b
nop
sub %rbx, %rbx

// Store
lea addresses_WC+0x19e27, %r8
add $46079, %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r8)
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_PSE+0xe587, %rbx
nop
dec %r8
movups (%rbx), %xmm5
vpextrq $0, %xmm5, %r13
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rdi
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'54': 15}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
