.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rsi
lea addresses_D_ht+0xde59, %r15
nop
nop
nop
inc %r8
vmovups (%r15), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r14
nop
dec %r13
lea addresses_D_ht+0x10f99, %rsi
nop
nop
nop
nop
inc %r11
movups (%rsi), %xmm2
vpextrq $0, %xmm2, %r8
nop
cmp %r14, %r14
pop %rsi
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r9
push %rax
push %rbp

// Store
mov $0x67566800000001b9, %r15
nop
xor %r14, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm1
movntdq %xmm1, (%r15)
nop
nop
nop
add $10584, %rax

// Store
lea addresses_D+0xdd39, %r12
sub %r9, %r9
movw $0x5152, (%r12)
nop
add %rbp, %rbp

// Load
mov $0x1d059e0000000e7f, %rbp
nop
nop
nop
nop
sub %r12, %r12
movups (%rbp), %xmm0
vpextrq $0, %xmm0, %r13
nop
xor $190, %r15

// Faulty Load
mov $0x67566800000001b9, %r13
nop
nop
nop
nop
nop
and $38836, %r14
vmovups (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r9
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': True, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'00': 3}
00 00 00
*/
