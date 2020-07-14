.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rbx

// Store
lea addresses_D+0x73d5, %rax
nop
sub %r13, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm2
movups %xmm2, (%rax)
nop
nop
inc %rbp

// Store
lea addresses_RW+0xe66c, %r10
xor $1357, %r13
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovups %ymm2, (%r10)
add %r8, %r8

// Store
lea addresses_UC+0x1bbec, %r13
nop
cmp %r11, %r11
movb $0x51, (%r13)
nop
nop
nop
nop
xor $25991, %rbp

// Load
lea addresses_normal+0x1201c, %rbp
nop
add %rbx, %rbx
movups (%rbp), %xmm4
vpextrq $1, %xmm4, %r13
and %r11, %r11

// Faulty Load
lea addresses_A+0x1f2ec, %rbx
nop
nop
nop
nop
nop
xor $62642, %rax
vmovups (%rbx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'08': 4, 'ff': 1, 'e5': 14, 'ef': 26, '00': 48}
00 00 00 00 00 00 00 00 00 00 ff 08 00 00 00 00 00 08 00 00 00 00 00 00 ef 00 ef ef 00 ef ef 00 ef 00 ef ef ef ef 00 ef 00 ef 00 ef 00 ef 00 ef 00 00 ef ef ef ef ef ef ef ef ef 00 00 ef 00 ef 00 e5 e5 00 e5 08 00 00 e5 00 e5 08 e5 00 e5 e5 e5 00 e5 00 e5 e5 00 e5 e5 00 00 00 00
*/
