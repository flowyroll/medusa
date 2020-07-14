.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rax
push %rbx
push %rdi
lea addresses_WC_ht+0x169ca, %r8
nop
nop
nop
cmp %rbx, %rbx
mov (%r8), %eax
nop
nop
nop
nop
sub %rdi, %rdi
pop %rdi
pop %rbx
pop %rax
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r8
push %rdi
push %rdx

// Load
lea addresses_D+0x1bfca, %r13
nop
nop
dec %r10
movb (%r13), %r8b
nop
nop
nop
xor %r13, %r13

// Load
lea addresses_PSE+0x39ca, %r14
nop
sub %rdi, %rdi
movb (%r14), %r8b
nop
nop
cmp %r10, %r10

// Store
lea addresses_A+0x18dca, %r13
nop
nop
nop
nop
dec %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%r13)
nop
nop
nop
nop
sub $49111, %r13

// Load
mov $0x6009d200000009ca, %r14
nop
nop
nop
nop
nop
and $41584, %r10
movups (%r14), %xmm5
vpextrq $1, %xmm5, %r13
nop
nop
nop
nop
nop
add $28865, %r12

// Store
lea addresses_WC+0x1d74a, %r10
nop
nop
nop
nop
nop
sub %rdi, %rdi
movl $0x51525354, (%r10)
nop
nop
nop
xor $55960, %r10

// Store
lea addresses_D+0x49ca, %rdi
nop
nop
nop
nop
inc %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
movups %xmm3, (%rdi)
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_normal+0x1b3ca, %rdi
nop
add $40348, %r14
movl $0x51525354, (%rdi)
nop
xor %r13, %r13

// Store
lea addresses_A+0xb25a, %rdi
nop
inc %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovntdq %ymm4, (%rdi)

// Exception!!!
nop
mov (0), %rdx
nop
nop
nop
nop
nop
add $20501, %r12

// Store
mov $0x7a4d9a0000000dca, %r14
clflush (%r14)
nop
nop
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovups %ymm6, (%r14)
nop
nop
add %r8, %r8

// Store
lea addresses_WC+0x11ca, %r12
nop
nop
add $13790, %rdx
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
dec %r8

// Faulty Load
mov $0x6009d200000009ca, %rdx
add $16463, %rdi
movb (%rdx), %r12b
lea oracles, %rdx
and $0xff, %r12
shlq $12, %r12
mov (%rdx,%r12,1), %r12
pop %rdx
pop %rdi
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'58': 2}
58 58
*/
