.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %r9
lea addresses_D_ht+0x7462, %r10
nop
nop
nop
nop
inc %r15
mov (%r10), %r9w
nop
nop
nop
nop
sub $38964, %r8
lea addresses_WC_ht+0xfdc2, %r8
nop
nop
and $12136, %r13
movb (%r8), %r10b
nop
nop
nop
sub $32630, %r8
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdx

// Store
lea addresses_US+0x3b45, %r14
nop
nop
xor $54144, %r9
mov $0x5152535455565758, %rbx
movq %rbx, (%r14)
nop
xor %rcx, %rcx

// Store
lea addresses_D+0x15242, %r14
nop
nop
nop
nop
add $8026, %r8
mov $0x5152535455565758, %rbx
movq %rbx, (%r14)
nop
nop
inc %r8

// Faulty Load
mov $0x60a3c0000000462, %rcx
add $43772, %rdx
vmovups (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r14
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'4b': 2, '4c': 2, '64': 2, '06': 1, '7b': 1, '03': 3, '7a': 1, '90': 1, '0c': 1}
06 03 03 03 4c 90 64 64 0c 4c 7a 7b 4b 4b
*/
