.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xeaae, %r14
nop
nop
nop
nop
sub %r15, %r15
movl $0x61626364, (%r14)
inc %r9
lea addresses_D_ht+0x364e, %r8
nop
nop
nop
and %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r8)
nop
nop
and $2891, %r14
lea addresses_D_ht+0x1d5ae, %rsi
lea addresses_WC_ht+0x12bee, %rdi
inc %r14
mov $88, %rcx
rep movsw
nop
and $20004, %r15
lea addresses_WC_ht+0xf6ae, %rsi
lea addresses_WT_ht+0x91a6, %rdi
clflush (%rsi)
nop
nop
nop
xor $60548, %r8
mov $22, %rcx
rep movsq
inc %r14
lea addresses_WC_ht+0xde0e, %rsi
lea addresses_UC_ht+0x192ae, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $91, %rcx
rep movsq
nop
nop
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x1a48e, %r15
nop
nop
nop
nop
xor %rsi, %rsi
mov (%r15), %r9w
nop
and $30103, %r15
lea addresses_WC_ht+0x32ae, %rsi
cmp %rdi, %rdi
mov (%rsi), %r10d
nop
nop
nop
nop
nop
dec %r10
lea addresses_normal_ht+0x5d2e, %r15
nop
nop
nop
nop
nop
xor $11886, %rdi
movb $0x61, (%r15)
nop
nop
nop
nop
cmp $65126, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rax
push %rbx
push %rdi

// Load
lea addresses_normal+0x52ae, %r10
clflush (%r10)
nop
nop
nop
nop
nop
dec %rax
mov (%r10), %r15d
nop
cmp $39006, %rdi

// Store
lea addresses_UC+0x2eae, %rbx
nop
nop
nop
nop
nop
xor %r14, %r14
movb $0x51, (%rbx)
nop
add $34129, %r10

// Store
mov $0xaae, %rax
nop
dec %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rax)
nop
add %r14, %r14

// Load
lea addresses_D+0x3dee, %r12
nop
nop
nop
xor $36796, %rax
movb (%r12), %r14b
nop
nop
nop
dec %r15

// Store
lea addresses_normal+0xeaae, %r14
nop
nop
nop
inc %r15
movw $0x5152, (%r14)
cmp $53714, %rdi

// Store
mov $0x6e6, %r15
nop
nop
add $4424, %r10
mov $0x5152535455565758, %rdi
movq %rdi, (%r15)
nop
nop
nop
xor %rbx, %rbx

// Load
lea addresses_RW+0x7ae, %r10
nop
nop
nop
and $6413, %r12
movups (%r10), %xmm3
vpextrq $0, %xmm3, %r14
nop
cmp $38538, %r15

// Store
lea addresses_US+0xd638, %r12
clflush (%r12)
nop
nop
add %r14, %r14
movw $0x5152, (%r12)
nop
nop
and %r15, %r15

// Faulty Load
lea addresses_normal+0x182ae, %rdi
clflush (%rdi)
nop
nop
cmp $42631, %r12
movb (%rdi), %r10b
lea oracles, %rax
and $0xff, %r10
shlq $12, %r10
mov (%rax,%r10,1), %r10
pop %rdi
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'34': 2}
34 34
*/
