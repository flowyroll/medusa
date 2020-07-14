.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rax
push %rdx
push %rsi
lea addresses_UC_ht+0x92ac, %rdx
nop
nop
nop
cmp %r13, %r13
mov (%rdx), %r11w
add %rax, %rax
lea addresses_A_ht+0x3c10, %rsi
nop
nop
nop
sub $19829, %r13
movw $0x6162, (%rsi)
nop
cmp %rax, %rax
lea addresses_D_ht+0x1a0ac, %rdx
nop
nop
nop
dec %r12
movw $0x6162, (%rdx)
nop
and $10085, %r8
lea addresses_D_ht+0x166c, %rax
nop
nop
nop
nop
nop
sub $4069, %r11
mov (%rax), %r13w
nop
nop
nop
nop
nop
cmp $38109, %rax
pop %rsi
pop %rdx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %r9
push %rbp

// Store
lea addresses_WT+0x80ac, %r11
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovups %ymm0, (%r11)
and %r14, %r14

// Store
lea addresses_WC+0xb84c, %r11
and $52846, %rbp
movb $0x51, (%r11)
nop
nop
cmp $31910, %r13

// Faulty Load
lea addresses_PSE+0x176ac, %r14
cmp %r13, %r13
mov (%r14), %rbp
lea oracles, %r10
and $0xff, %rbp
shlq $12, %rbp
mov (%r10,%rbp,1), %rbp
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC', 'AVXalign': True, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'33': 15}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
