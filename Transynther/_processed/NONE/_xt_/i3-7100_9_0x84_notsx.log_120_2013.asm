.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdx

// Store
lea addresses_WC+0x174e2, %r15
nop
nop
nop
nop
dec %rax
mov $0x5152535455565758, %r14
movq %r14, (%r15)
nop
nop
inc %r14

// Store
lea addresses_D+0x1ae2, %r15
nop
nop
sub %rbp, %rbp
movl $0x51525354, (%r15)
nop
nop
dec %rdx

// Store
lea addresses_WC+0x11062, %r15
inc %rax
mov $0x5152535455565758, %r14
movq %r14, %xmm3
movups %xmm3, (%r15)
nop
xor %rcx, %rcx

// Store
lea addresses_WC+0x1bb0d, %r11
nop
dec %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movntdq %xmm5, (%r11)
nop
nop
nop
nop
sub $3377, %r15

// Faulty Load
lea addresses_D+0xe2e2, %r15
nop
nop
nop
nop
nop
add $20640, %rax
movups (%r15), %xmm2
vpextrq $1, %xmm2, %r14
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'36': 120}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
