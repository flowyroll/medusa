.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x743a, %rsi
lea addresses_UC_ht+0x1137a, %rdi
nop
dec %rbx
mov $61, %rcx
rep movsq
xor %rdx, %rdx
lea addresses_D_ht+0x17c2a, %r12
nop
and %r14, %r14
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
cmp $53246, %rsi
lea addresses_UC_ht+0xd222, %rsi
lea addresses_D_ht+0x1ac9a, %rdi
nop
nop
nop
nop
add $10260, %rax
mov $109, %rcx
rep movsq
and $31150, %r12
lea addresses_A_ht+0x113f6, %rsi
lea addresses_WT_ht+0x27ba, %rdi
sub %r12, %r12
mov $107, %rcx
rep movsl
nop
nop
nop
xor $20902, %rsi
lea addresses_D_ht+0x3b32, %r12
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r12)
nop
and $18365, %rdx
lea addresses_UC_ht+0x102ba, %rbx
nop
nop
nop
nop
inc %r14
mov (%rbx), %edi
inc %rcx
lea addresses_WT_ht+0x1c8d9, %rcx
dec %rbx
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi

// Store
lea addresses_UC+0x4aba, %rcx
nop
nop
nop
nop
nop
and %rdi, %rdi
movw $0x5152, (%rcx)
nop
inc %rcx

// Load
lea addresses_normal+0x849e, %r9
nop
nop
inc %r8
movb (%r9), %cl
nop
nop
add $52939, %r8

// Load
lea addresses_RW+0x112ba, %rbp
xor $39761, %rdi
mov (%rbp), %r12d
nop
nop
nop
sub $40651, %rcx

// Store
mov $0xaba, %r8
nop
nop
nop
xor %r13, %r13
movw $0x5152, (%r8)
nop
xor %r13, %r13

// Load
lea addresses_D+0x19eba, %rcx
nop
nop
and %rbp, %rbp
mov (%rcx), %r8
nop
nop
nop
nop
and %r8, %r8

// Load
lea addresses_RW+0x142ba, %r12
nop
nop
nop
xor %r8, %r8
mov (%r12), %r13w
sub $59291, %r12

// Store
lea addresses_US+0x11eba, %r9
nop
add $48841, %rbp
movl $0x51525354, (%r9)
nop
nop
nop
add %r8, %r8

// Store
lea addresses_normal+0x12ba, %r8
nop
nop
nop
nop
nop
cmp $11111, %r12
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
dec %r12

// Store
lea addresses_WC+0xe1ba, %rcx
nop
nop
inc %r8
movb $0x51, (%rcx)
cmp %r8, %r8

// Store
lea addresses_WC+0x14e8a, %rdi
nop
cmp %r8, %r8
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
nop
nop
inc %r9

// Load
lea addresses_D+0x7baa, %r12
nop
nop
nop
nop
nop
and $27088, %rdi
movups (%r12), %xmm4
vpextrq $0, %xmm4, %rcx
nop
cmp $24608, %r9

// Store
mov $0xa3a, %rbp
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r13
movq %r13, (%rbp)
nop
nop
nop
add $15010, %r9

// Store
lea addresses_WT+0x1a2ba, %r9
nop
nop
nop
and $44281, %rcx
movl $0x51525354, (%r9)
nop
nop
nop
nop
add %r9, %r9

// Faulty Load
lea addresses_RW+0x112ba, %r8
nop
nop
xor $50192, %r12
mov (%r8), %rbp
lea oracles, %r8
and $0xff, %rbp
shlq $12, %rbp
mov (%r8,%rbp,1), %rbp
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'32': 2}
32 32
*/
