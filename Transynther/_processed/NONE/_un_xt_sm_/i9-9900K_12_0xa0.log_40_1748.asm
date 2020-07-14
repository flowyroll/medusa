.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rdx
lea addresses_D_ht+0x1dfa7, %r14
xor %r13, %r13
movw $0x6162, (%r14)
nop
sub %rax, %rax
lea addresses_D_ht+0x1103f, %r9
nop
nop
nop
nop
nop
cmp %rdx, %rdx
movb $0x61, (%r9)
nop
nop
xor %r8, %r8
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WC+0x63f, %rcx
nop
nop
nop
cmp $28357, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
nop
nop
sub %rax, %rax

// Faulty Load
lea addresses_WC+0x63f, %r11
nop
nop
nop
cmp $52925, %rsi
movb (%r11), %r12b
lea oracles, %r11
and $0xff, %r12
shlq $12, %r12
mov (%r11,%r12,1), %r12
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'0e': 1, '58': 39}
0e 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
