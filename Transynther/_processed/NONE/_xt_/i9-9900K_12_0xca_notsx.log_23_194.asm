.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %r9
push %rax
push %rdx

// Store
mov $0x2d460800000001b6, %r8
nop
nop
nop
nop
nop
xor $50256, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm2
movups %xmm2, (%r8)
nop
nop
dec %rax

// Store
lea addresses_normal+0x12c8a, %r9
nop
sub %rax, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movups %xmm6, (%r9)
nop
inc %rax

// Store
mov $0x7199390000000036, %r9
nop
nop
nop
nop
add %rdx, %rdx
movw $0x5152, (%r9)
nop
nop
nop
nop
add %r14, %r14

// Faulty Load
lea addresses_RW+0x1be36, %r14
and $52330, %r12
mov (%r14), %r15
lea oracles, %rax
and $0xff, %r15
shlq $12, %r15
mov (%rax,%r15,1), %r15
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'32': 23}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
