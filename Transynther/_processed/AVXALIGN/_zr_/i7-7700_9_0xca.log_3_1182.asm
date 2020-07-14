.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rbp
push %rdx
push %rsi

// Store
lea addresses_WT+0xcf4d, %rbp
nop
nop
nop
add %r9, %r9
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movups %xmm2, (%rbp)
add %rsi, %rsi

// Store
lea addresses_PSE+0x18498, %r9
nop
nop
nop
nop
nop
xor $19877, %rdx
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
sub $46657, %rdx

// Faulty Load
mov $0x1b40e20000000898, %r9
nop
nop
sub $25472, %r12
vmovntdqa (%r9), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r10
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rsi
pop %rdx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 3}
00 00 00
*/
