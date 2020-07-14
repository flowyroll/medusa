.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rdi
lea addresses_A_ht+0x169da, %rdi
cmp %r12, %r12
movl $0x61626364, (%rdi)
nop
nop
sub $30351, %r14
pop %rdi
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rbx
push %rsi

// Store
mov $0xb39, %r13
nop
nop
nop
nop
nop
mfence
movw $0x5152, (%r13)
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_US+0x1bdaa, %rbx
nop
nop
nop
nop
sub $38423, %rsi
movl $0x51525354, (%rbx)
sub %rax, %rax

// Load
lea addresses_RW+0x17c7a, %rbx
nop
cmp %r15, %r15
vmovntdqa (%rbx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r13
nop
nop
nop
nop
nop
xor $12861, %rsi

// Store
lea addresses_WT+0xc27a, %rsi
nop
nop
nop
nop
cmp %r12, %r12
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
add $39840, %rsi

// Store
lea addresses_PSE+0x2c7a, %rbx
nop
nop
sub $51544, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_PSE+0x17f7a, %rax
nop
nop
nop
nop
and %r8, %r8
movb $0x51, (%rax)
nop
nop
nop
cmp %r12, %r12

// Load
mov $0x97a, %r12
nop
nop
and $22065, %r15
movups (%r12), %xmm4
vpextrq $0, %xmm4, %rsi
inc %r15

// Store
lea addresses_D+0x1a07a, %r13
cmp $37526, %r8
movb $0x51, (%r13)
nop
nop
nop
nop
sub $20044, %r13

// Store
lea addresses_WT+0x1b27a, %rsi
and $2725, %r12
movl $0x51525354, (%rsi)
nop
nop
nop
add %r8, %r8

// Faulty Load
lea addresses_RW+0x17c7a, %rbx
nop
nop
nop
nop
xor %r12, %r12
vmovaps (%rbx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r13
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'00': 4, '58': 1}
00 00 00 58 00
*/
