.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
lea addresses_UC_ht+0xec95, %r10
nop
nop
add $19780, %r9
movw $0x6162, (%r10)
nop
nop
nop
add %r14, %r14
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rax
push %rbp

// Store
lea addresses_A+0x14e15, %r14
nop
xor %rbp, %rbp
movw $0x5152, (%r14)
add $27001, %rbp

// Store
lea addresses_RW+0x1f149, %r15
nop
nop
nop
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r15)
nop
and $21876, %rbp

// Load
lea addresses_UC+0xfe95, %rax
nop
nop
xor %r13, %r13
movups (%rax), %xmm1
vpextrq $1, %xmm1, %r15
and %r14, %r14

// Load
mov $0x5af82d0000000615, %r15
clflush (%r15)
nop
xor $17508, %r11
movb (%r15), %r14b
nop
nop
inc %r11

// Store
lea addresses_US+0x17e95, %r15
add %r14, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm2
movups %xmm2, (%r15)
nop
inc %r10

// Store
lea addresses_WT+0xcb5, %r14
nop
add $47768, %rbp
mov $0x5152535455565758, %r15
movq %r15, %xmm4
movups %xmm4, (%r14)
nop
nop
and %r13, %r13

// Store
mov $0xfc5, %r15
nop
nop
nop
nop
nop
xor %rbp, %rbp
movw $0x5152, (%r15)
nop
nop
nop
nop
sub $44382, %rax

// Faulty Load
lea addresses_US+0x2695, %r11
nop
nop
nop
nop
and $57826, %r10
vmovups (%r11), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r14
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'60': 3635, '7d': 1, '46': 18192, '2f': 1}
46 60 46 46 46 46 46 60 46 46 46 46 46 60 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 60 46 46 46 60 46 46 46 60 46 46 46 46 46 46 46 46 46 60 46 46 46 46 46 60 46 46 46 46 46 46 46 60 46 46 46 46 46 46 46 60 46 46 46 46 46 46 46 60 60 46 46 46 46 46 46 46 46 60 60 46 60 46 46 60 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 60 46 46 60 46 60 46 46 46 60 46 60 46 46 46 46 60 46 46 46 46 46 46 46 60 60 46 46 46 46 46 46 46 46 46 46 46 46 60 46 60 60 46 46 60 46 60 46 46 46 46 46 46 46 46 46 46 46 46 46 60 46 46 46 46 46 46 60 60 46 46 60 46 46 46 46 46 46 60 46 46 60 46 46 46 46 46 60 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 60 46 46 46 46 60 46 60 46 60 46 46 46 46 46 60 46 60 60 46 46 60 46 46 46 46 46 46 60 60 46 46 46 46 60 60 46 46 46 46 60 60 46 46 46 46 46 46 46 46 46 46 60 46 46 46 46 46 46 60 46 46 46 46 46 46 60 46 46 60 46 46 46 46 46 60 46 46 46 46 46 46 46 46 46 60 46 46 46 46 46 60 60 46 46 46 46 46 60 46 60 60 46 46 60 60 60 60 46 46 46 60 46 46 46 60 60 46 46 60 46 46 46 60 46 46 46 46 46 60 60 46 46 46 46 46 46 60 60 46 46 46 60 46 46 46 46 46 46 46 46 46 46 46 46 60 46 60 46 46 46 46 46 46 46 46 46 46 46 60 46 46 46 46 60 46 46 46 46 46 60 46 60 60 60 46 46 60 60 60 46 46 46 46 46 60 46 46 46 46 46 46 46 46 46 46 46 46 46 60 46 46 46 46 46 46 46 46 46 46 60 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 60 46 46 46 46 46 60 60 46 46 46 46 60 60 46 46 46 46 46 46 46 46 46 46 46 46 60 46 46 46 60 46 46 46 60 60 60 46 46 60 46 46 46 46 46 60 46 46 46 46 46 46 46 46 60 46 60 60 46 46 46 60 46 46 46 60 46 46 46 46 46 60 60 46 46 46 46 46 46 46 60 46 60 46 46 46 46 46 60 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 60 60 60 46 46 46 46 46 46 46 46 46 46 60 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 60 60 46 46 46 46 60 46 46 46 46 60 46 46 46 46 46 60 46 46 46 46 46 46 46 46 60 46 46 46 60 46 46 46 46 60 46 46 46 46 60 46 46 60 46 46 46 46 46 46 46 46 46 46 46 46 46 60 46 46 46 46 46 46 46 46 46 46 46 46 46 60 46 60 46 46 46 46 46 46 46 60 46 46 46 46 46 46 46 46 46 46 46 46 46 60 46 60 46 46 60 46 46 46 46 46 46 46 60 46 46 60 46 60 46 46 46 46 46 46 46 46 46 46 46 46 46 46 60 46 46 46 60 46 46 46 46 46 60 46 46 46 46 60 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 60 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 60 46 46 46 46 46 46 46 46 60 60 60 46 60 46 46 46 46 60 46 46 46 46 60 60 46 60 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 60 46 60 46 46 46 46 60 46 46 46 46 46 46 46 46 46 46 60 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 60 46 46 60 46 46 46 60 46 46 60 46 46 46 46 46 46 60 46 46 60 60 46 46 46 60 46 46 60 46 60 60 46 46 46 46 46 46 46 46 60 46 46 46 46 46 46 60 46 46 46 46 46 46 46 46 46 46 46 46 46 46 60 60 60 46 46 46 46 60 46 46 46 60 46 46 46 46 46 60 46 60 46 46 46 46 60 46 46 46 46 46 60 46 46 46 46 46 60 46 46 46 60 46 46 46 60 46 46 46 46 46 46 60 46 46 60 46 46 46 46 46 46 60 46 46
*/
