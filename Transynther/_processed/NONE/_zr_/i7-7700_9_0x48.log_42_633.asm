.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x14670, %rsi
lea addresses_WC_ht+0xf480, %rdi
nop
nop
sub $30714, %r8
mov $88, %rcx
rep movsb
nop
nop
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x1229e, %r14
nop
inc %rdx
mov $0x5152535455565758, %r10
movq %r10, (%r14)
nop
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_PSE+0x17070, %r12
nop
add $59517, %rax
movw $0x5152, (%r12)
nop
nop
and %r9, %r9

// REPMOV
lea addresses_RW+0x7120, %rsi
lea addresses_A+0x1a6f0, %rdi
nop
xor %r9, %r9
mov $28, %rcx
rep movsw
nop
nop
inc %rsi

// Store
lea addresses_UC+0x76d0, %rbp
nop
nop
nop
nop
nop
add %rdi, %rdi
movl $0x51525354, (%rbp)
nop
add %r10, %r10

// Store
lea addresses_WT+0x12c10, %r9
nop
nop
nop
nop
inc %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r9)
sub %rdi, %rdi

// Load
lea addresses_A+0x5070, %rcx
clflush (%rcx)
nop
add $56886, %rbp
mov (%rcx), %r14d
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_normal+0x1e2a6, %rbp
nop
nop
nop
inc %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%rbp)
cmp $1305, %r14

// Store
lea addresses_WC+0x1470, %r10
clflush (%r10)
nop
nop
nop
nop
dec %rcx
movl $0x51525354, (%r10)
nop
and $63372, %rdx

// Faulty Load
lea addresses_A+0x5070, %rsi
nop
nop
nop
nop
nop
dec %rbp
movups (%rsi), %xmm5
vpextrq $1, %xmm5, %r12
lea oracles, %rdx
and $0xff, %r12
shlq $12, %r12
mov (%rdx,%r12,1), %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'00': 42}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
