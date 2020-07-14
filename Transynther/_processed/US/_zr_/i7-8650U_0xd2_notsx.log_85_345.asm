.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rax
lea addresses_A_ht+0x3001, %r10
and $46751, %rax
movl $0x61626364, (%r10)
nop
nop
and $5501, %r15
pop %rax
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi

// Store
mov $0xe43, %r12
nop
nop
nop
cmp %r9, %r9
movl $0x51525354, (%r12)
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_D+0x170c3, %rdi
clflush (%rdi)
cmp $13072, %r15
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%rdi)
nop
dec %rax

// Store
lea addresses_WC+0x19d83, %rbp
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%rbp)
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_US+0xb183, %r9
nop
cmp $25580, %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm6
movups %xmm6, (%r9)
nop
xor $19503, %r15

// Store
lea addresses_US+0x1407, %rbp
clflush (%rbp)
cmp $49734, %r12
movl $0x51525354, (%rbp)
nop
nop
xor $30945, %rdi

// Load
lea addresses_PSE+0x5903, %rax
and %rbp, %rbp
mov (%rax), %r9
nop
nop
nop
nop
nop
inc %r12

// Faulty Load
lea addresses_US+0xb183, %r15
nop
nop
nop
nop
nop
inc %rax
movups (%r15), %xmm0
vpextrq $1, %xmm0, %rcx
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'00': 85}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
