.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1db7a, %rsi
lea addresses_UC_ht+0x393a, %rdi
nop
nop
nop
nop
nop
dec %r12
mov $33, %rcx
rep movsl
nop
nop
sub $644, %rdi
lea addresses_D_ht+0x2b3a, %rbp
nop
inc %r14
mov (%rbp), %dx
nop
nop
nop
nop
nop
inc %rbp
lea addresses_UC_ht+0x1e73a, %rdx
nop
nop
nop
add $54783, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%rdx)
cmp $18159, %rcx
lea addresses_WT_ht+0x433a, %rcx
nop
nop
nop
add $28686, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
and $0xffffffffffffffc0, %rcx
vmovaps %ymm2, (%rcx)
nop
and $4667, %r14
lea addresses_normal_ht+0x4e3a, %rdi
nop
cmp %rsi, %rsi
mov (%rdi), %r14
nop
nop
nop
nop
nop
and $52870, %r12
lea addresses_A_ht+0x1033d, %rsi
lea addresses_D_ht+0x15b3a, %rdi
nop
xor %r11, %r11
mov $13, %rcx
rep movsb
nop
dec %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rsi

// Store
lea addresses_US+0xa33a, %r14
nop
nop
nop
sub %rbp, %rbp
movb $0x51, (%r14)
nop
nop
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_US+0x1a0ba, %rcx
nop
inc %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
nop
nop
inc %rbp

// Load
lea addresses_A+0x133a, %r13
clflush (%r13)
nop
and $16070, %r14
mov (%r13), %r15

// Exception!!!
mov (0), %r14
nop
nop
nop
inc %r13

// Store
lea addresses_WC+0x753a, %rcx
nop
nop
cmp $45494, %r14
mov $0x5152535455565758, %r9
movq %r9, (%rcx)
nop
nop
and %r9, %r9

// Store
lea addresses_normal+0x46e6, %r15
clflush (%r15)
nop
nop
nop
and %r9, %r9
movb $0x51, (%r15)
and %r14, %r14

// Load
lea addresses_normal+0x144ba, %rbp
nop
nop
cmp %rcx, %rcx
movb (%rbp), %r14b
dec %r9

// Store
lea addresses_WT+0xc03a, %r15
nop
nop
nop
nop
and $14543, %r9
movb $0x51, (%r15)
nop
nop
nop
nop
nop
xor $35778, %r14

// Faulty Load
lea addresses_US+0xa33a, %rbp
nop
nop
xor %r14, %r14
mov (%rbp), %esi
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'51': 4}
51 51 51 51
*/
