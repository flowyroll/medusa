.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1ee08, %rbp
nop
nop
add %r15, %r15
movw $0x6162, (%rbp)
sub %r12, %r12
lea addresses_normal_ht+0x11a2, %rsi
lea addresses_UC_ht+0x1b1d0, %rdi
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $13, %rcx
rep movsb
nop
and $30625, %r15
lea addresses_WC_ht+0x1d888, %rsi
lea addresses_WT_ht+0x53e8, %rdi
nop
nop
nop
nop
nop
xor $7871, %r13
mov $100, %rcx
rep movsq
nop
nop
add $57383, %rdi
lea addresses_UC_ht+0x3c68, %r12
nop
nop
xor %rax, %rax
mov (%r12), %rcx
nop
nop
nop
nop
sub %r13, %r13
lea addresses_UC_ht+0x137f2, %rsi
nop
nop
nop
sub $3881, %rdi
movb (%rsi), %cl
add $30478, %rcx
lea addresses_A_ht+0x5a60, %rsi
lea addresses_A_ht+0x898c, %rdi
and $59000, %r13
mov $116, %rcx
rep movsw
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x2a61, %rsi
lea addresses_WT_ht+0xc508, %rdi
nop
nop
nop
nop
xor $33258, %rax
mov $28, %rcx
rep movsl
nop
xor $48582, %r12
lea addresses_WC_ht+0x10670, %r12
nop
nop
nop
and $11756, %r13
mov (%r12), %edi
nop
nop
cmp $34344, %r13
lea addresses_A_ht+0x1e388, %rsi
lea addresses_D_ht+0x1da88, %rdi
nop
cmp $53136, %r12
mov $13, %rcx
rep movsq
nop
cmp $8446, %r15
lea addresses_WT_ht+0x15588, %r15
nop
nop
sub %rdi, %rdi
movb $0x61, (%r15)
and $21025, %rcx
lea addresses_UC_ht+0xbbb2, %rdi
clflush (%rdi)
nop
nop
nop
cmp %rsi, %rsi
movw $0x6162, (%rdi)
sub %r12, %r12
lea addresses_WT_ht+0xaaa8, %rsi
lea addresses_D_ht+0xbb1f, %rdi
nop
nop
cmp $21877, %r13
mov $13, %rcx
rep movsl
nop
nop
nop
nop
sub $20148, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_RW+0x19a88, %r13
nop
nop
add $57385, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%r13)
nop
nop
nop
nop
inc %r8

// Store
mov $0xba8, %r12
nop
nop
nop
nop
nop
cmp $47710, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, (%r12)
nop
nop
nop
nop
add $45425, %rbx

// Store
lea addresses_UC+0x18f98, %rbx
clflush (%rbx)
sub $26500, %r13
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovaps %ymm1, (%rbx)
nop
nop
nop
sub $59666, %rcx

// Store
lea addresses_WT+0x160d2, %r13
nop
nop
sub %r8, %r8
movb $0x51, (%r13)
nop
sub %rcx, %rcx

// Load
lea addresses_WT+0xba88, %rbx
nop
nop
nop
nop
sub $57985, %r12
mov (%rbx), %bp
nop
nop
nop
nop
add $26696, %rdx

// Store
lea addresses_UC+0x11708, %rbx
nop
nop
nop
nop
nop
cmp $29470, %rbp
movl $0x51525354, (%rbx)
nop
nop
cmp %r12, %r12

// Faulty Load
lea addresses_RW+0xf188, %rbp
nop
nop
cmp %r12, %r12
mov (%rbp), %rdx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'32': 61}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
