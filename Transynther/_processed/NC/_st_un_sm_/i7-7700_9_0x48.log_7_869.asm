.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rax
push %rdx

// Store
mov $0x4ba0f8000000098b, %rdx
nop
sub $146, %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm3
vmovups %ymm3, (%rdx)
nop
nop
nop
nop
cmp %r9, %r9

// Faulty Load
mov $0x4ba0f8000000098b, %r10
dec %r8
movups (%r10), %xmm7
vpextrq $0, %xmm7, %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'58': 6, '5f': 1}
58 58 58 58 5f 58 58
*/
