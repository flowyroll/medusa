.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r8
push %rcx
push %rdx

// Store
lea addresses_RW+0x16ab0, %r10
cmp $15441, %rcx
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
add $41535, %rcx

// Load
lea addresses_RW+0xf4b0, %r15
dec %r10
movb (%r15), %r8b
nop
nop
sub %r13, %r13

// Store
lea addresses_A+0x19330, %r13
nop
nop
nop
nop
nop
sub $35189, %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movups %xmm0, (%r13)
nop
nop
nop
nop
add %r13, %r13

// Load
lea addresses_A+0x9450, %r13
nop
cmp $9102, %r8
movups (%r13), %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
nop
cmp %r15, %r15

// Faulty Load
lea addresses_WC+0xd6b0, %r15
nop
nop
nop
nop
cmp $60177, %rdx
vmovups (%r15), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r8
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rdx
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 7}
00 00 00 00 00 00 00
*/
