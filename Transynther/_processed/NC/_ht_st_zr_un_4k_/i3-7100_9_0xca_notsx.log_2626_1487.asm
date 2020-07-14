.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rsi

// Store
mov $0x5a4, %r13
nop
nop
and $4009, %r15
movw $0x5152, (%r13)
nop
inc %r13

// Store
lea addresses_US+0x1fc6c, %r15
add %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r15)
nop
nop
xor $32980, %rcx

// Store
lea addresses_US+0x1cf6c, %r13
nop
sub %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, (%r13)
nop
nop
nop
nop
add $16616, %r11

// Store
lea addresses_WC+0x1a2d0, %r15
nop
nop
inc %r11
movl $0x51525354, (%r15)
nop
nop
nop
and %rcx, %rcx

// Load
lea addresses_RW+0x1576c, %rbx
nop
nop
nop
sub %r8, %r8
mov (%rbx), %r13
nop
nop
add $63102, %r15

// Load
lea addresses_US+0x1a9d4, %rsi
nop
add %rbx, %rbx
vmovups (%rsi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r15
sub $24462, %r8

// Store
lea addresses_RW+0xc36c, %rsi
cmp %r11, %r11
movl $0x51525354, (%rsi)
nop
dec %rsi

// Store
lea addresses_D+0x6b6c, %r11
nop
nop
cmp $57524, %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm4
vmovups %ymm4, (%r11)
nop
nop
xor %r13, %r13

// Faulty Load
mov $0x1f7da30000000b6c, %r8
nop
nop
nop
xor $42018, %rsi
mov (%r8), %r13d
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rsi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_P', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'80': 1, '00': 164, 'b0': 2340, 'd4': 1, '48': 2, '6d': 1, '79': 5, '54': 2, 'd0': 1, '58': 104, 'f0': 1, '46': 1, '5f': 1, '3a': 1, '6f': 1}
b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 00 b0 b0 58 b0 00 b0 b0 b0 b0 b0 b0 58 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 58 00 b0 00 b0 b0 b0 b0 d0 b0 b0 b0 b0 00 b0 b0 00 00 b0 b0 b0 b0 58 58 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 58 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 00 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 58 b0 b0 b0 b0 b0 58 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 58 b0 00 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 58 b0 b0 b0 b0 58 b0 b0 58 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 58 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 58 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 79 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 79 00 b0 b0 00 b0 b0 58 d4 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 58 b0 00 00 b0 b0 58 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 f0 b0 b0 58 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 58 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 58 b0 b0 b0 58 00 b0 b0 b0 b0 b0 b0 b0 58 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 58 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 58 00 b0 b0 b0 58 b0 00 b0 b0 b0 b0 b0 00 b0 b0 58 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 58 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 58 00 b0 b0 00 b0 b0 00 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 00 b0 b0 79 b0 b0 b0 b0 b0 b0 b0 b0 3a 58 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 58 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 58 b0 b0 b0 b0 b0 58 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 58 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 58 b0 b0 b0 b0 b0 b0 b0 b0 5f 00 00 b0 b0 b0 58 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 58 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 6f 58 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 58 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0
*/
