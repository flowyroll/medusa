.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x9a8f, %r15
nop
nop
nop
dec %r8
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_D_ht+0x1ca7f, %rsi
nop
add %r12, %r12
vmovups (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
nop
nop
dec %r15
lea addresses_A_ht+0x6aaf, %r9
nop
nop
nop
nop
sub %rsi, %rsi
mov (%r9), %r15d
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_WT_ht+0x1847f, %r9
nop
nop
xor %rcx, %rcx
vmovups (%r9), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
and $48102, %r15
lea addresses_D_ht+0x867f, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $58424, %rsi
movups (%rdi), %xmm7
vpextrq $1, %xmm7, %r15
nop
nop
nop
nop
add $44731, %r12
lea addresses_normal_ht+0x94ff, %r8
nop
nop
nop
xor $52787, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r8)
and %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx

// Store
lea addresses_A+0x9d7f, %r8
cmp $58186, %rcx
movl $0x51525354, (%r8)
nop
nop
nop
nop
sub $12378, %rdx

// Store
mov $0xd6f, %r13
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r13)
nop
nop
cmp $37987, %rdi

// Store
lea addresses_D+0x10e7f, %r14
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %rdx
movq %rdx, (%r14)
cmp %r13, %r13

// Store
lea addresses_RW+0x1697f, %rcx
nop
nop
and %r14, %r14
mov $0x5152535455565758, %r8
movq %r8, (%rcx)
nop
nop
add %rdi, %rdi

// Load
mov $0x141f4e00000006d2, %r9
nop
nop
nop
nop
sub %r13, %r13
vmovups (%r9), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
nop
nop
nop
add $35930, %rdx

// Store
lea addresses_US+0xa44d, %rdx
nop
nop
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm4
movups %xmm4, (%rdx)
nop
nop
nop
dec %rcx

// Faulty Load
lea addresses_RW+0x4a7f, %r9
clflush (%r9)
nop
nop
nop
nop
nop
inc %r14
vmovups (%r9), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'32': 107}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
