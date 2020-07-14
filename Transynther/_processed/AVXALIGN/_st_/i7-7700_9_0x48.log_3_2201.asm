.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rsi
lea addresses_normal_ht+0x1b065, %r10
xor $25182, %rax
mov (%r10), %r15
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0x3809, %r15
nop
nop
add $43946, %rsi
movw $0x6162, (%r15)
and $53693, %r8
lea addresses_WT_ht+0x5365, %r9
nop
nop
nop
cmp $41674, %rcx
movb (%r9), %r8b
nop
and %rax, %rax
lea addresses_A_ht+0x18065, %r10
nop
nop
nop
xor %r15, %r15
movb $0x61, (%r10)
nop
nop
nop
and $23034, %rax
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rdi
push %rdx

// Store
lea addresses_UC+0x2c75, %rdx
nop
cmp $34222, %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
and %rdx, %rdx

// Store
lea addresses_UC+0x7265, %r9
clflush (%r9)
inc %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%r9)
nop
nop
nop
nop
nop
and $6671, %r13

// Load
lea addresses_WC+0x1504d, %rdi
nop
add $4744, %r13
mov (%rdi), %dx
nop
nop
xor %r13, %r13

// Store
lea addresses_normal+0x13d21, %rbp
nop
nop
nop
nop
and %rax, %rax
movb $0x51, (%rbp)
sub %rdx, %rdx

// Faulty Load
lea addresses_RW+0x10865, %rbp
nop
nop
sub %r13, %r13
mov (%rbp), %r15d
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': True, 'NT': False}}
{'32': 3}
32 32 32
*/
