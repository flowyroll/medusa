.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rbp
push %rbx
push %rdx
push %rsi

// Store
mov $0x11acae0000000279, %rsi
nop
add %rdx, %rdx
mov $0x5152535455565758, %r13
movq %r13, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
nop
add %r8, %r8

// Load
lea addresses_US+0x6d0d, %rbx
nop
cmp %rdx, %rdx
vmovups (%rbx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r12
nop
nop
nop
sub %rbx, %rbx

// Store
mov $0x3f4bda0000000af9, %rbx
nop
nop
sub %rbp, %rbp
movb $0x51, (%rbx)
nop
nop
sub %r13, %r13

// Faulty Load
mov $0x4ab33e0000000279, %rbp
nop
nop
nop
cmp $15317, %r13
mov (%rbp), %r12d
lea oracles, %rdx
and $0xff, %r12
shlq $12, %r12
mov (%rdx,%r12,1), %r12
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'58': 8}
58 58 58 58 58 58 58 58
*/
