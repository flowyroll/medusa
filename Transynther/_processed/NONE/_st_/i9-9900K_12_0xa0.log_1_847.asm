.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_normal+0x3583, %r9
nop
nop
nop
nop
nop
cmp $40226, %r11
movw $0x5152, (%r9)
nop
sub $30780, %rdx

// Store
lea addresses_US+0x17903, %r11
nop
and $7911, %rbp
movl $0x51525354, (%r11)
add %r9, %r9

// Store
lea addresses_A+0x1f538, %r8
nop
nop
nop
inc %rsi
movb $0x51, (%r8)
sub %rbx, %rbx

// Faulty Load
lea addresses_UC+0x1903, %rsi
nop
nop
nop
nop
nop
cmp %rdx, %rdx
vmovups (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r9
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'54': 1}
54
*/
