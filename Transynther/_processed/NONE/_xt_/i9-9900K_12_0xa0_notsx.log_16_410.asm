.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdx
push %rsi

// Load
lea addresses_US+0xf318, %r11
nop
nop
nop
nop
nop
sub %rcx, %rcx
movups (%r11), %xmm2
vpextrq $1, %xmm2, %rdx
nop
nop
inc %r14

// Store
lea addresses_normal+0x9b70, %r15
cmp %r13, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
and $0xffffffffffffffc0, %r15
movntdq %xmm2, (%r15)
cmp %rcx, %rcx

// Store
lea addresses_normal+0x16df8, %r14
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r14)
nop
nop
nop
nop
inc %r13

// Faulty Load
lea addresses_normal+0x3bf8, %r13
nop
nop
nop
nop
nop
xor $54573, %r11
mov (%r13), %rdx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'34': 16}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
