.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdx
lea addresses_WT_ht+0x89cc, %r13
nop
nop
nop
nop
nop
cmp %r8, %r8
movb $0x61, (%r13)
cmp %r9, %r9
lea addresses_A_ht+0x1972c, %rdx
nop
nop
nop
nop
nop
add %rax, %rax
movw $0x6162, (%rdx)
nop
nop
nop
nop
and %r8, %r8
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rax
push %rbp

// Load
mov $0xe8c, %r9
nop
nop
nop
nop
nop
add %r12, %r12
mov (%r9), %ebp
nop
nop
nop
nop
dec %r10

// Store
lea addresses_normal+0x6f2c, %r14
nop
nop
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, (%r14)
nop
nop
cmp %r14, %r14

// Store
lea addresses_PSE+0x10376, %rbp
nop
nop
nop
nop
nop
inc %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%rbp)
nop
nop
nop
nop
nop
cmp %r10, %r10

// Store
mov $0x1fbbb600000005ac, %r9
inc %rax
mov $0x5152535455565758, %r12
movq %r12, (%r9)
nop
nop
nop
nop
xor %r14, %r14

// Store
mov $0x338db300000002ec, %r14
nop
dec %rax
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
movntdq %xmm3, (%r14)
nop
add $47422, %r12

// Faulty Load
lea addresses_A+0x5f2c, %r9
nop
nop
nop
sub $17026, %r14
mov (%r9), %rbp
lea oracles, %r9
and $0xff, %rbp
shlq $12, %rbp
mov (%r9,%rbp,1), %rbp
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'58': 48}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
