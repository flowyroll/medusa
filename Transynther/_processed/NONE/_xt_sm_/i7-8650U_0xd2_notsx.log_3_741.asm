.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rbp
push %rbx
push %rdi

// Store
lea addresses_UC+0x1e2f5, %rbx
nop
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm5
vmovups %ymm5, (%rbx)
nop
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_A+0x118a5, %r12
nop
nop
inc %rdi
movl $0x51525354, (%r12)
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_A+0xa9a5, %r8
nop
nop
nop
dec %r12
mov $0x5152535455565758, %r14
movq %r14, (%r8)
nop
cmp %r11, %r11

// Store
lea addresses_D+0x115a5, %rbx
and %r14, %r14
movw $0x5152, (%rbx)
nop
nop
nop
inc %rdi

// Load
lea addresses_WC+0x3765, %rbp
nop
nop
add %r12, %r12
vmovups (%rbp), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r11
cmp %r14, %r14

// Store
mov $0x35f90f0000000415, %r14
clflush (%r14)
nop
nop
nop
nop
nop
xor $15896, %rbp
mov $0x5152535455565758, %r12
movq %r12, (%r14)
nop
inc %r14

// Store
lea addresses_D+0x152df, %rbx
add $1776, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm4
movups %xmm4, (%rbx)
sub %rdi, %rdi

// Store
lea addresses_A+0x151a5, %rdi
nop
nop
nop
inc %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovaps %ymm1, (%rdi)
nop
cmp %rbp, %rbp

// Store
lea addresses_A+0x1b965, %rbp
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movups %xmm4, (%rbp)
inc %rbx

// Store
lea addresses_US+0x17aa5, %rdi
sub %r11, %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movups %xmm6, (%rdi)
nop
nop
sub %rdi, %rdi

// Store
lea addresses_PSE+0x8465, %r8
sub $17891, %rbp
movb $0x51, (%r8)
nop
sub $50647, %rbp

// Store
lea addresses_WT+0x194e5, %rbx
sub %r8, %r8
movw $0x5152, (%rbx)
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_D+0x1fd7d, %r8
nop
sub %rdi, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovups %ymm6, (%r8)
nop
nop
nop
nop
nop
add %rbp, %rbp

// Faulty Load
lea addresses_A+0x151a5, %rbp
nop
nop
nop
nop
dec %rbx
mov (%rbp), %r12d
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'58': 3}
58 58 58
*/
