.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rbx
push %rdi
push %rdx

// Store
mov $0x857, %rdx
nop
nop
nop
xor %r13, %r13
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_RW+0x1d38f, %r10
nop
nop
inc %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovaps %ymm3, (%r10)
nop
nop
nop
nop
add $52650, %r10

// Store
lea addresses_UC+0x9cf7, %r11
nop
nop
and $31361, %rbx
movb $0x51, (%r11)
nop
nop
nop
nop
sub %rdx, %rdx

// Faulty Load
lea addresses_PSE+0xd347, %rdx
nop
nop
nop
add %rbx, %rbx
mov (%rdx), %r10w
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rdx
pop %rdi
pop %rbx
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'33': 37}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
