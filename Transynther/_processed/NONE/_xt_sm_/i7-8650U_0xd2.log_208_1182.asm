.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1c82c, %rsi
nop
nop
inc %rax
mov $0x6162636465666768, %r15
movq %r15, %xmm2
and $0xffffffffffffffc0, %rsi
movntdq %xmm2, (%rsi)
nop
nop
cmp $34294, %rcx
lea addresses_normal_ht+0xc34c, %r10
nop
sub %rdx, %rdx
mov (%r10), %r11
nop
nop
dec %rcx
lea addresses_WT_ht+0x99cc, %r11
nop
nop
nop
nop
inc %rax
movb $0x61, (%r11)
nop
nop
nop
xor $60575, %r11
lea addresses_UC_ht+0xeb4c, %rsi
lea addresses_WC_ht+0x92d1, %rdi
nop
sub $41489, %rdx
mov $53, %rcx
rep movsb
nop
nop
dec %rdi
lea addresses_UC_ht+0x19a5c, %rsi
and $34979, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm0
movups %xmm0, (%rsi)
nop
add %r15, %r15
lea addresses_WT_ht+0xd04c, %rax
nop
nop
add $62701, %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%rax)
nop
nop
nop
xor $54772, %rdi
lea addresses_UC_ht+0x454c, %r15
nop
nop
xor %r10, %r10
mov $0x6162636465666768, %rax
movq %rax, (%r15)
nop
nop
nop
nop
mfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rbx
push %rsi

// Load
mov $0xef4, %rbp
nop
nop
xor %rsi, %rsi
movb (%rbp), %r13b
nop
cmp $7108, %rsi

// Store
lea addresses_WT+0x17b0c, %r12
nop
nop
nop
dec %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovups %ymm4, (%r12)
nop
nop
nop
dec %r8

// Store
lea addresses_WC+0x1634c, %r8
clflush (%r8)
inc %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm7
vmovups %ymm7, (%r8)
nop
nop
cmp %rsi, %rsi

// Load
lea addresses_normal+0x1030c, %r13
clflush (%r13)
nop
nop
nop
sub $24278, %rbp
mov (%r13), %esi
add $8342, %r14

// Store
lea addresses_normal+0x1434c, %r13
cmp %r8, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%r13)
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_US+0x34c, %rbp
nop
nop
nop
nop
nop
and $57776, %r8
movl $0x51525354, (%rbp)
nop
xor $27240, %rbx

// Load
lea addresses_WC+0x434c, %r12
nop
nop
nop
nop
and $3157, %rsi
movb (%r12), %r8b
nop
nop
nop
and $25588, %r12

// Store
lea addresses_RW+0x1662c, %rsi
nop
nop
nop
add $5620, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movups %xmm7, (%rsi)
nop
sub $54020, %r12

// Faulty Load
lea addresses_WC+0x1634c, %rbx
nop
nop
nop
and %rbp, %rbp
movb (%rbx), %r14b
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rsi
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': True, 'NT': True, 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'54': 208}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
