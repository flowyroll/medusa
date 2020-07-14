.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rax
push %rbx
push %rsi

// Store
lea addresses_WC+0x150d5, %r14
nop
nop
nop
xor $5277, %rax
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovups %ymm2, (%r14)
add %r12, %r12

// Store
lea addresses_RW+0x31f9, %rbx
nop
nop
dec %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm7
vmovaps %ymm7, (%rbx)
nop
nop
sub $37007, %rbx

// Store
lea addresses_WT+0x4ff9, %rax
nop
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, (%rax)
add $25979, %rsi

// Faulty Load
lea addresses_RW+0x31f9, %r14
nop
nop
nop
inc %r11
mov (%r14), %r12w
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'58': 6}
58 58 58 58 58 58
*/
