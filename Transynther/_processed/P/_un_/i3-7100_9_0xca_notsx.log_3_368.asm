.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rbp
push %rcx
lea addresses_normal_ht+0x1ebe, %r8
and %rbp, %rbp
mov (%r8), %rcx
nop
nop
nop
dec %r9
pop %rcx
pop %rbp
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rdx

// Store
lea addresses_A+0x1c0fe, %r9
nop
nop
nop
and $14986, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r9)
nop
xor %r14, %r14

// Faulty Load
mov $0xbe, %r9
nop
nop
nop
nop
nop
add $54836, %r11
mov (%r9), %r12
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rdx
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'f9': 3}
f9 f9 f9
*/
