.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rbp
push %rdi
push %rdx

// Load
lea addresses_D+0x1089d, %r13
nop
nop
nop
and %r8, %r8
vmovups (%r13), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r11
nop
nop
nop
nop
nop
dec %r15

// Store
lea addresses_WT+0x8389, %r11
nop
nop
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovaps %ymm7, (%r11)
nop
nop
and $50294, %r11

// Store
lea addresses_WT+0xe1d4, %r13
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovups %ymm0, (%r13)
add %r11, %r11

// Store
lea addresses_WC+0x157f9, %rbp
nop
nop
nop
nop
nop
add $31164, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%rbp)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rdx
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_US+0x164c9, %r15
sub $14900, %rdi
movb $0x51, (%r15)
inc %r11

// Load
lea addresses_WC+0x179c9, %r13
nop
nop
xor %rbp, %rbp
vmovups (%r13), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
nop
nop
nop
nop
nop
sub $56381, %r13

// Store
lea addresses_D+0x1d868, %rdx
nop
nop
cmp $33365, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_US+0x14bd1, %r8
nop
nop
nop
xor $31532, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movups %xmm7, (%r8)
nop
nop
cmp $55027, %r15

// Faulty Load
lea addresses_US+0x166c9, %r13
nop
nop
nop
nop
nop
inc %rdi
movb (%r13), %r15b
lea oracles, %rdx
and $0xff, %r15
shlq $12, %r15
mov (%rdx,%r15,1), %r15
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 6, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 60}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
