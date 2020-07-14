.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x282, %r15
nop
nop
nop
nop
xor $17187, %rdi
mov $0x6162636465666768, %r14
movq %r14, (%r15)
sub %r9, %r9
lea addresses_UC_ht+0xb702, %r15
nop
nop
xor %rsi, %rsi
mov (%r15), %r12w
nop
xor $55129, %r9
lea addresses_A_ht+0x15f72, %rsi
lea addresses_WT_ht+0x74e3, %rdi
clflush (%rdi)
sub %rax, %rax
mov $118, %rcx
rep movsq
nop
nop
nop
sub $19143, %r9
lea addresses_A_ht+0x13802, %rsi
lea addresses_UC_ht+0x1de02, %rdi
clflush (%rdi)
nop
nop
nop
and %rax, %rax
mov $6, %rcx
rep movsb
nop
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x1a602, %rdi
nop
and $22784, %r9
movw $0x6162, (%rdi)
nop
nop
dec %r15
lea addresses_normal_ht+0x18c52, %rsi
nop
nop
nop
nop
add %rcx, %rcx
mov (%rsi), %rdi
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0xa42, %r15
nop
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
xor $38764, %rsi
lea addresses_WC_ht+0x2f02, %r12
nop
nop
inc %rsi
movups (%r12), %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
inc %r15
lea addresses_D_ht+0x60c2, %rsi
nop
nop
nop
nop
inc %r15
movw $0x6162, (%rsi)
nop
inc %rcx
lea addresses_UC_ht+0x3612, %rcx
nop
nop
nop
sub %r9, %r9
mov (%rcx), %di
add %rdi, %rdi
lea addresses_normal_ht+0x8b0a, %r15
nop
xor $419, %rcx
mov (%r15), %r12
nop
nop
and $61897, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rbp
push %rcx

// Load
lea addresses_A+0x4024, %r11
nop
and %rbp, %rbp
movb (%r11), %cl
cmp %r11, %r11

// Load
lea addresses_US+0x1b302, %r12
nop
nop
nop
nop
inc %r8
movb (%r12), %cl
nop
nop
nop
nop
nop
dec %r8

// Store
lea addresses_D+0xeb02, %r8
nop
nop
inc %rbp
movl $0x51525354, (%r8)
add $61458, %r15

// Store
lea addresses_A+0xf8a2, %r15
nop
nop
dec %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
add %r11, %r11

// Store
lea addresses_UC+0x1c302, %rbp
nop
nop
nop
and $56487, %r15
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
cmp %r15, %r15

// Store
lea addresses_normal+0x13ca2, %r15
add %rcx, %rcx
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
sub $634, %r12

// Faulty Load
lea addresses_US+0x1b302, %r15
clflush (%r15)
nop
nop
nop
nop
and %r12, %r12
mov (%r15), %r11w
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'54': 640}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
