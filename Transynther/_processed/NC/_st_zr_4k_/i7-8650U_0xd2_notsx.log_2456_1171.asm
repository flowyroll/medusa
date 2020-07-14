.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r8
push %rbx
push %rdi
lea addresses_WC_ht+0x9291, %r14
xor $13178, %rbx
movw $0x6162, (%r14)
and $2573, %r14
lea addresses_normal_ht+0x69cb, %rbx
nop
and $49936, %r8
mov (%rbx), %r10
add %r12, %r12
lea addresses_UC_ht+0xdc91, %r11
nop
nop
mfence
movw $0x6162, (%r11)
nop
nop
nop
add $1309, %r11
lea addresses_WC_ht+0xc091, %r11
nop
nop
nop
nop
add $25752, %r14
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%r11)
nop
nop
nop
cmp %r12, %r12
lea addresses_UC_ht+0x1c91, %r11
and %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r11)
nop
nop
sub $51362, %r11
lea addresses_normal_ht+0x1c0c1, %r12
nop
nop
cmp %r10, %r10
movw $0x6162, (%r12)
nop
nop
cmp $58995, %r14
lea addresses_A_ht+0x7941, %r14
nop
nop
add %rbx, %rbx
mov (%r14), %r10d
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_A_ht+0x5d31, %r14
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %r8
movq %r8, (%r14)
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_A_ht+0xeb19, %r14
nop
nop
nop
add $20928, %r10
movb (%r14), %r11b
cmp $29103, %rdi
lea addresses_A_ht+0xd491, %r11
clflush (%r11)
nop
nop
nop
nop
nop
dec %rbx
vmovups (%r11), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r8
nop
xor %rdi, %rdi
lea addresses_A_ht+0x2159, %r11
nop
nop
nop
nop
nop
cmp $25512, %rdi
movb (%r11), %r10b
nop
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x1ddb1, %r14
nop
nop
sub %r8, %r8
movb (%r14), %r12b
cmp %r14, %r14
pop %rdi
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rbp
push %rdi
push %rdx

// Store
lea addresses_RW+0x17c91, %rdi
nop
xor $55200, %rdx
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
and $9349, %r14

// Store
lea addresses_WT+0x9c91, %rdi
nop
nop
nop
dec %r10
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
and %r10, %r10

// Store
lea addresses_US+0x491, %rbp
sub %r14, %r14
movb $0x51, (%rbp)
nop
nop
nop
nop
add %r14, %r14

// Store
mov $0x79e, %rbp
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movups %xmm7, (%rbp)
nop
nop
xor %r8, %r8

// Store
lea addresses_A+0x49b1, %rbp
xor %r8, %r8
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
and $8243, %r10

// Store
lea addresses_RW+0x17687, %rbp
nop
xor %r8, %r8
movl $0x51525354, (%rbp)
cmp $664, %r8

// Store
lea addresses_US+0x1862a, %rdx
nop
sub $46783, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%rdx)
nop
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_US+0x8169, %r14
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r14)
nop
nop
nop
nop
inc %rdx

// Faulty Load
mov $0x5e85920000000c91, %r10
clflush (%r10)
nop
and $44829, %rdi
mov (%r10), %edx
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': True, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'00': 2223, '52': 233}
00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 52 00 00 52 00 52 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 52 52 00 00 52 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 52 00 00 00 52 52 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 52 00 52 52 52 00 00 52 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 52 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 52 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 52 00 00 00 52 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 52 00 52 52 00 00 00 00 00 00 00 00 00 52 52 00 00 00 00 00 00 00 00 00 00 52 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 52 00 52 52 00 00 00 00 00 52 00 00 52 00 00 52 00 52 00 00 00 00 00 00 52 00 00 52 00 52 00 52 00 00 00 00 00 00 00 00 00 00 52 52 00 00 52 00 00 00 00 00 00 52 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 52 00 00 00 00 52 00 52 00 00 00 00 00 00 52 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 52 00 00 52 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00
*/
