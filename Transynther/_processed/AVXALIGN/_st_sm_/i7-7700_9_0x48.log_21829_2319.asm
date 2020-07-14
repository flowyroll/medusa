.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x190ad, %rbx
nop
nop
xor $29292, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
movups %xmm5, (%rbx)
add %rbp, %rbp
lea addresses_WT_ht+0x11c86, %r13
nop
nop
and $22968, %rbp
movl $0x61626364, (%r13)
and $47996, %rcx
lea addresses_normal_ht+0x1482d, %rsi
lea addresses_D_ht+0x41ad, %rdi
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $87, %rcx
rep movsl
nop
nop
nop
xor %rbp, %rbp
lea addresses_UC_ht+0x11c7b, %rbp
nop
cmp %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%rbp)
nop
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x14fcd, %rbx
nop
inc %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%rbx)
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_UC_ht+0x1aaa3, %rdi
nop
nop
nop
and $6432, %r13
movb $0x61, (%rdi)
nop
nop
nop
nop
add $1860, %rsi
lea addresses_WC_ht+0x1cb45, %r13
nop
nop
nop
nop
xor $45844, %rbx
and $0xffffffffffffffc0, %r13
vmovntdqa (%r13), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
nop
nop
nop
xor $33979, %rsi
lea addresses_D_ht+0x12869, %r8
nop
nop
nop
nop
nop
xor $56309, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r8)
nop
cmp $47149, %rdi
lea addresses_WT_ht+0x1ccad, %rsi
nop
nop
nop
nop
sub $57538, %rbx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
movups %xmm5, (%rsi)
nop
cmp $16295, %rbx
lea addresses_UC_ht+0x171f6, %rbx
clflush (%rbx)
nop
xor %r8, %r8
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
sub $41662, %r13
lea addresses_D_ht+0x440d, %rdi
xor %rcx, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
add $37920, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_D+0xd58d, %rbp
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rbp)
nop
nop
nop
inc %rdx

// Store
lea addresses_UC+0xdd51, %rcx
clflush (%rcx)
nop
nop
nop
dec %r15
movl $0x51525354, (%rcx)
nop
sub %r10, %r10

// Store
lea addresses_WC+0x17dad, %rax
nop
nop
nop
cmp %rbx, %rbx
movw $0x5152, (%rax)
nop
nop
dec %rbx

// Store
lea addresses_PSE+0xb4ad, %rbp
cmp %rdx, %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rbp)
and $5023, %rdx

// Load
lea addresses_WT+0x6a6d, %rbx
nop
nop
and $35920, %r15
movb (%rbx), %cl
nop
inc %rcx

// Load
lea addresses_RW+0x1b7ad, %rax
nop
nop
nop
nop
sub $11319, %r10
vmovups (%rax), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbx
nop
nop
nop
nop
add $60892, %r10

// Faulty Load
lea addresses_PSE+0xb4ad, %rbx
nop
cmp $26173, %r10
movb (%rbx), %dl
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
