.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdx
lea addresses_WC_ht+0x8b05, %rbx
nop
nop
add %r13, %r13
mov (%rbx), %r9d
nop
cmp $44872, %r14
lea addresses_D_ht+0x5ead, %rbx
sub $11213, %rdx
movb (%rbx), %cl
nop
nop
nop
nop
sub %r9, %r9
lea addresses_D_ht+0x198d5, %rbx
nop
nop
nop
cmp %rax, %rax
movw $0x6162, (%rbx)
nop
and %rax, %rax
lea addresses_A_ht+0x18985, %rdx
cmp %rax, %rax
mov (%rdx), %bx
nop
nop
nop
add %r14, %r14
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r9
push %rcx
push %rdi

// Store
lea addresses_PSE+0x18525, %rcx
nop
nop
and %r12, %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%rcx)
nop
cmp %r14, %r14

// Store
lea addresses_UC+0x1b2b2, %rdi
cmp %r9, %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
cmp $21665, %r12

// Store
lea addresses_WC+0x16215, %r12
nop
cmp %rcx, %rcx
movl $0x51525354, (%r12)
nop
nop
sub %r9, %r9

// Store
lea addresses_WC+0xc125, %r12
and $54364, %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r12)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r12
nop
nop
cmp $44044, %r11

// Store
lea addresses_RW+0xbcec, %r14
nop
nop
nop
nop
and $2521, %r9
movl $0x51525354, (%r14)
nop
xor $60698, %r12

// Store
lea addresses_RW+0x3195, %r12
nop
nop
nop
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%r12)
nop
nop
nop
nop
nop
sub %r11, %r11

// Store
mov $0x325, %r11
nop
nop
nop
and $27652, %r9
movl $0x51525354, (%r11)
nop
add %r11, %r11

// Store
lea addresses_WC+0xa885, %r9
nop
nop
and %r15, %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm1
movups %xmm1, (%r9)
nop
nop
nop
nop
nop
sub %r11, %r11

// Faulty Load
lea addresses_RW+0x15525, %rdi
nop
nop
nop
nop
nop
cmp %r9, %r9
mov (%rdi), %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'32': 36}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
