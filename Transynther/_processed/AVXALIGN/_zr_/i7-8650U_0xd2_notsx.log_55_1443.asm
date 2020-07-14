.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x10b62, %rsi
lea addresses_WC_ht+0x1c5eb, %rdi
xor %r10, %r10
mov $120, %rcx
rep movsl
nop
nop
nop
and $42085, %rbp
lea addresses_WC_ht+0x8126, %rsi
lea addresses_D_ht+0x2306, %rdi
nop
nop
nop
nop
inc %rdx
mov $83, %rcx
rep movsl
nop
nop
cmp $48201, %rcx
lea addresses_normal_ht+0x118a6, %rdx
nop
nop
nop
nop
nop
xor %r10, %r10
mov (%rdx), %esi
nop
nop
nop
sub %rdx, %rdx
lea addresses_WC_ht+0x1ca06, %rdi
clflush (%rdi)
nop
nop
nop
cmp %r14, %r14
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm7
vpextrq $0, %xmm7, %r10
add %r14, %r14
lea addresses_D_ht+0xf606, %rbp
nop
nop
nop
nop
nop
xor $24371, %r14
and $0xffffffffffffffc0, %rbp
movaps (%rbp), %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
dec %rsi
lea addresses_A_ht+0x10256, %rsi
lea addresses_UC_ht+0xaa06, %rdi
nop
nop
add %r14, %r14
mov $24, %rcx
rep movsq
nop
inc %r10
lea addresses_D_ht+0x123c6, %rsi
nop
nop
nop
nop
nop
inc %r14
vmovups (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
nop
nop
add %r14, %r14
lea addresses_WC_ht+0x36aa, %rsi
lea addresses_normal_ht+0x11406, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $29050, %r8
mov $4, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $53932, %rbp
lea addresses_A_ht+0x5a06, %rsi
lea addresses_UC_ht+0x19146, %rdi
nop
and %rdx, %rdx
mov $107, %rcx
rep movsq
sub $40230, %rbp
lea addresses_A_ht+0x13f26, %rcx
nop
nop
nop
nop
and $6570, %r8
movb $0x61, (%rcx)
nop
xor %r14, %r14
lea addresses_UC_ht+0x1617e, %r14
nop
nop
nop
nop
nop
xor $39694, %r10
movw $0x6162, (%r14)
nop
nop
cmp $56331, %rcx
lea addresses_WT_ht+0x16606, %rsi
nop
nop
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
nop
nop
inc %rsi
lea addresses_normal_ht+0x12256, %r8
nop
nop
xor $41847, %rsi
movb $0x61, (%r8)
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x18982, %rsi
lea addresses_UC_ht+0x1bd6d, %rdi
nop
nop
and $21292, %r8
mov $13, %rcx
rep movsq
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0x13606, %r10
clflush (%r10)
nop
nop
nop
nop
add %rcx, %rcx
mov (%r10), %rdi
nop
sub %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %r9
push %rbx
push %rcx

// Store
lea addresses_normal+0x13e06, %r9
nop
nop
nop
nop
cmp $376, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
nop
cmp %r8, %r8

// Load
lea addresses_RW+0x3606, %rbx
nop
nop
dec %r15
mov (%rbx), %r12w
nop
nop
nop
nop
nop
xor $18010, %r13

// Faulty Load
mov $0x606, %r8
clflush (%r8)
nop
dec %r15
vmovntdqa (%r8), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r9
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': True, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'00': 55}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
