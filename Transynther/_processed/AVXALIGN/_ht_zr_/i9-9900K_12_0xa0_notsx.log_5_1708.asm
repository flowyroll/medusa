.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rax
push %rdx
push %rsi
lea addresses_A_ht+0x14e2, %r8
nop
nop
nop
nop
nop
and %rsi, %rsi
movups (%r8), %xmm1
vpextrq $1, %xmm1, %rdx
nop
nop
nop
nop
and %rax, %rax
pop %rsi
pop %rdx
pop %rax
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rax
push %rbx
push %rdi
push %rdx
push %rsi

// Load
mov $0x5821200000000b62, %rdx
nop
nop
add $14464, %r8
mov (%rdx), %si
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_UC+0x33a2, %r8
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, (%r8)
sub %rdx, %rdx

// Faulty Load
lea addresses_WT+0xee62, %rax
nop
nop
nop
and $4330, %r11
movntdqa (%rax), %xmm4
vpextrq $1, %xmm4, %r8
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'45': 2, '00': 3}
00 45 00 00 45
*/
