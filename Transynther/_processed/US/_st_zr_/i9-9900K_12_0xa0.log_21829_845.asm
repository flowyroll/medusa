.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x186d2, %rsi
lea addresses_A_ht+0xb5d2, %rdi
and $33132, %rbp
mov $61, %rcx
rep movsl
nop
nop
inc %r8
lea addresses_A_ht+0xcc52, %rdx
nop
nop
dec %r15
mov (%rdx), %ebp
nop
nop
cmp $18842, %rdi
lea addresses_WT_ht+0x1fd2, %r15
nop
nop
nop
nop
sub $46963, %rdx
movb (%r15), %cl
nop
nop
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rdx

// Store
lea addresses_normal+0xa5d2, %rdx
nop
nop
dec %r9
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rdx)
nop
nop
nop
nop
nop
and $50321, %r14

// Store
lea addresses_UC+0xb986, %r14
nop
and $63265, %rbp
movw $0x5152, (%r14)
nop
nop
nop
add %r8, %r8

// Faulty Load
lea addresses_US+0x15d2, %rdx
nop
nop
nop
add $53374, %r11
mov (%rdx), %r8d
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rdx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'58': 13861, '00': 7968}
58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 00 58 58 00 00 00 58 00 00 58 58 58 58 00 58 58 00 58 58 00 00 00 58 00 00 58 58 00 00 58 58 58 58 58 58 58 00 00 58 58 58 58 00 58 58 00 00 58 58 58 00 58 58 00 58 58 58 00 58 58 58 58 58 58 00 00 00 00 58 58 00 00 58 58 00 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 00 00 58 58 00 00 58 00 00 58 58 58 00 00 00 58 58 58 58 00 58 00 00 00 58 58 58 58 00 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 58 58 00 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 00 58 00 58 58 00 00 00 58 58 58 00 00 58 58 00 00 58 58 58 58 58 00 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 00 00 00 58 58 00 00 00 58 58 00 58 58 58 58 00 00 00 58 58 58 00 58 58 00 58 58 00 00 58 58 00 00 00 58 58 00 00 00 58 58 58 58 58 58 00 58 00 00 00 58 58 00 58 58 58 58 00 58 00 00 00 00 58 00 58 58 58 58 58 00 58 58 00 00 58 58 58 00 00 58 58 58 58 00 00 00 58 58 00 00 58 58 00 00 00 58 58 58 58 58 58 58 58 00 58 58 00 00 58 58 00 00 00 58 58 58 00 00 58 58 58 58 00 00 58 58 00 00 58 58 00 00 00 58 58 00 58 00 58 58 00 58 58 58 00 58 58 00 00 58 58 00 58 58 58 00 00 58 58 00 58 58 58 58 00 58 58 00 00 00 58 58 00 58 00 58 00 00 58 58 58 00 00 58 58 00 58 58 00 58 58 58 58 58 00 58 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 00 00 58 58 58 58 58 00 00 00 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 00 00 58 58 00 00 58 58 58 58 58 58 58 00 00 00 58 00 00 00 58 58 00 58 58 58 00 00 58 58 58 58 58 00 58 58 00 58 58 00 00 58 58 58 58 00 00 58 58 58 58 00 00 58 58 58 00 58 00 00 58 58 00 00 58 58 58 58 58 58 58 58 00 00 58 58 00 58 58 00 58 58 00 00 00 58 58 00 00 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 58 58 00 00 00 58 58 58 58 58 58 58 58 58 00 58 00 00 00 58 58 58 58 00 58 00 58 58 58 00 58 58 58 58 00 00 58 58 00 58 58 58 58 58 00 00 58 58 00 58 58 58 00 58 58 58 58 00 00 00 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 00 00 58 58 00 58 58 58 58 00 00 58 58 00 58 58 00 58 58 58 58 58 58 00 00 00 58 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 00 00 00 58 58 00 58 58 58 58 58 58 58 58 00 00 00 00 58 58 00 58 58 58 00 58 58 00 00 58 58 58 58 00 00 00 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 00 00 00 58 58 00 58 00 00 58 00 58 58 00 00 58 58 00 00 58 00 00 00 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 58 58 58 58 00 00 58 58 58 00 58 58 00 00 00 58 58 58 58 58 58 00 58 58 00 58 58 00 00 00 58 58 00 00 58 58 58 58 00 00 00 00 58 58 00 58 58 00 00 00 58 58 58 00 58 58 00 00 58 58 00 00 00 58 58 00 00 58 58 58 58 58 58 00 58 58 58 00 00 58 58 58 00 00 58 58 00 00 58 58 58 58 00 00 00 58 58 00 00 58 58 58 58 58 58 58 00 58 58 58 00 00 58 00 00 00 58 58 00 58 58 58 58 58 00 00 58 58 00 00 58 58 00 00 00 00 00 58 58 00 00 00 58 58 00 00 00 58 58 58 58 58 58 00 58 00 58 58 58 00 00 00 58
*/
