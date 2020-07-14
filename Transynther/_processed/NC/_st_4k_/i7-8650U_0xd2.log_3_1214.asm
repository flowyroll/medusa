.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rax
push %rbp
push %rdi

// Store
lea addresses_US+0xf401, %rdi
nop
nop
nop
nop
nop
sub $39312, %r10
movl $0x51525354, (%rdi)
nop
nop
sub $52406, %rax

// Store
lea addresses_normal+0x1b31d, %r14
nop
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm3
vmovups %ymm3, (%r14)
nop
add %rax, %rax

// Load
lea addresses_US+0x9f8, %r14
nop
nop
nop
xor $29209, %r10
mov (%r14), %r8
nop
nop
nop
nop
xor %rbp, %rbp

// Faulty Load
mov $0x449c6d0000000401, %r14
add %rax, %rax
vmovups (%r14), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'54': 3}
54 54 54
*/
