.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rdi
lea addresses_UC_ht+0x187d3, %r10
and $12456, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
cmp $52799, %r14
lea addresses_WC_ht+0xe4d3, %r14
nop
nop
nop
nop
inc %rbp
movw $0x6162, (%r14)
nop
nop
nop
nop
and $7865, %r10
lea addresses_A_ht+0x4473, %rbp
nop
nop
nop
xor $20150, %r8
mov $0x6162636465666768, %r10
movq %r10, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
nop
cmp $21407, %r14
lea addresses_WT_ht+0x1a93, %r15
xor %r13, %r13
movb $0x61, (%r15)
nop
nop
nop
nop
inc %r14
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi

// Store
lea addresses_normal+0xd183, %rcx
clflush (%rcx)
nop
dec %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
xor $28242, %r9

// Load
lea addresses_WC+0x12ad3, %rbx
nop
nop
nop
nop
nop
cmp %r14, %r14
movups (%rbx), %xmm4
vpextrq $0, %xmm4, %r15
nop
nop
nop
dec %r9

// Store
lea addresses_WC+0x13ad3, %r9
clflush (%r9)
nop
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm6
movups %xmm6, (%r9)
nop
nop
nop
and %r14, %r14

// Store
lea addresses_normal+0x9293, %r14
nop
nop
add $62562, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovaps %ymm4, (%r14)
nop
nop
nop
inc %rdi

// Store
mov $0x5b9c750000000ad3, %rdi
nop
nop
nop
nop
nop
inc %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
dec %r15

// Faulty Load
mov $0x5b9c750000000ad3, %rbx
nop
inc %rdi
vmovaps (%rbx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r9
lea oracles, %r15
and $0xff, %r9
shlq $12, %r9
mov (%r15,%r9,1), %r9
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'00': 135}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
