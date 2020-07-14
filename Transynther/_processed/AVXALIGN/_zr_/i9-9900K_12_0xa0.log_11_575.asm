.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rbp
push %rcx
push %rdi
push %rdx

// Store
mov $0xd60, %rcx
and %rbp, %rbp
movb $0x51, (%rcx)
sub $63357, %rbp

// Store
mov $0xa10, %r10
nop
nop
nop
nop
and $41180, %r11
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
vmovups %ymm2, (%r10)
nop
xor $53003, %rdx

// Store
mov $0x86a, %r10
nop
nop
nop
add %r8, %r8
movb $0x51, (%r10)
nop
nop
and $44587, %r10

// Load
lea addresses_WC+0x1a10, %r10
nop
xor %r11, %r11
mov (%r10), %cx
nop
nop
nop
nop
nop
sub %r11, %r11

// Faulty Load
lea addresses_WT+0x1ea10, %rcx
nop
nop
nop
add $24194, %r8
vmovntdqa (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbp
lea oracles, %r8
and $0xff, %rbp
shlq $12, %rbp
mov (%r8,%rbp,1), %rbp
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_P', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_P', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
