.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi

// Store
lea addresses_UC+0x18415, %rdi
nop
nop
nop
nop
nop
sub $30591, %r8
mov $0x5152535455565758, %r11
movq %r11, %xmm5
vmovntdq %ymm5, (%rdi)
nop
nop
cmp $21821, %r8

// Store
lea addresses_US+0x3875, %r14
nop
nop
nop
sub $26475, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
nop
nop
cmp $8329, %rdi

// Store
lea addresses_RW+0x1f0f5, %r8
nop
nop
nop
nop
nop
dec %rbp
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_US+0x13c75, %r11
cmp $38376, %r15
movl $0x51525354, (%r11)
nop
sub %rcx, %rcx

// Store
lea addresses_US+0xec75, %rcx
add $33952, %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovaps %ymm3, (%rcx)
nop
cmp %rcx, %rcx

// Faulty Load
lea addresses_US+0x13c75, %rcx
nop
nop
nop
inc %rdi
mov (%rcx), %r11w
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'58': 29}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
