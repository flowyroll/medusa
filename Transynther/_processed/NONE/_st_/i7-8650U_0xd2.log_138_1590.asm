.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xc059, %rbp
clflush (%rbp)
cmp $7306, %r15
movb $0x61, (%rbp)
nop
sub %rbx, %rbx
lea addresses_D_ht+0xc805, %rsi
lea addresses_normal_ht+0x659, %rdi
sub %r14, %r14
mov $50, %rcx
rep movsb
nop
nop
dec %rsi
lea addresses_UC_ht+0x9199, %rsi
lea addresses_WT_ht+0xa7ad, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $38842, %rbp
mov $119, %rcx
rep movsw
nop
nop
nop
nop
add $34005, %r14
lea addresses_A_ht+0x1e59, %rsi
nop
and %r14, %r14
movb (%rsi), %r15b
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x9feb, %rsi
nop
nop
sub $10956, %rdx
movups (%rsi), %xmm2
vpextrq $0, %xmm2, %rbp
cmp $20437, %rdi
lea addresses_WC_ht+0x101a1, %rbx
nop
add $9657, %r15
movb $0x61, (%rbx)
nop
nop
nop
dec %rdx
lea addresses_WT_ht+0x123ed, %rdi
clflush (%rdi)
dec %rbx
mov (%rdi), %rcx
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x3c9, %rbp
nop
sub $9232, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm1
and $0xffffffffffffffc0, %rbp
movntdq %xmm1, (%rbp)
nop
add $61010, %r15
lea addresses_A_ht+0x13e59, %r15
nop
nop
nop
nop
inc %rbx
mov (%r15), %r14d
nop
nop
nop
nop
add $11124, %r15
lea addresses_UC_ht+0x590d, %r15
clflush (%r15)
nop
cmp $59686, %rbp
mov (%r15), %dx
nop
cmp $16, %rdi
lea addresses_A_ht+0x3cf9, %rsi
lea addresses_UC_ht+0x17059, %rdi
nop
nop
nop
nop
sub %r15, %r15
mov $12, %rcx
rep movsl
nop
nop
nop
nop
add $49957, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rsi

// Store
mov $0x3143890000000a59, %rcx
nop
nop
nop
nop
nop
add $44476, %rbp
mov $0x5152535455565758, %r15
movq %r15, (%rcx)
inc %r13

// Store
lea addresses_WT+0x14e59, %rcx
clflush (%rcx)
nop
nop
nop
nop
sub %r14, %r14
movb $0x51, (%rcx)
nop
add %r10, %r10

// Store
lea addresses_A+0x1a7d9, %rsi
nop
nop
nop
cmp $32790, %r15
movw $0x5152, (%rsi)
nop
nop
nop
sub $58807, %r13

// Store
lea addresses_PSE+0x132a9, %r15
nop
nop
nop
xor %r10, %r10
movl $0x51525354, (%r15)
nop
nop
nop
xor $41789, %rbp

// Store
lea addresses_normal+0x5659, %rbp
nop
nop
xor %r10, %r10
movw $0x5152, (%rbp)
nop
nop
nop
nop
and $47232, %rbp

// Store
lea addresses_normal+0x13e59, %rsi
nop
nop
nop
nop
add %rbp, %rbp
movb $0x51, (%rsi)
cmp $24375, %rcx

// Faulty Load
lea addresses_WC+0x1be59, %rcx
nop
nop
nop
and $9327, %rsi
mov (%rcx), %r13
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rsi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'51': 138}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
