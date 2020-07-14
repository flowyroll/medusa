.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xc8c2, %rbp
nop
nop
xor %rdx, %rdx
movups (%rbp), %xmm7
vpextrq $1, %xmm7, %r12
nop
nop
add $16685, %r15
lea addresses_WT_ht+0xd742, %rsi
lea addresses_WC_ht+0x8102, %rdi
xor $24493, %r9
mov $62, %rcx
rep movsw
cmp $5441, %r9
lea addresses_D_ht+0x14682, %rsi
lea addresses_D_ht+0xe126, %rdi
clflush (%rsi)
nop
add $28304, %rdx
mov $116, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0x122c2, %r15
sub %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm5
movups %xmm5, (%r15)
nop
nop
nop
xor $44778, %r12
lea addresses_WC_ht+0x169a, %rcx
nop
nop
nop
nop
nop
cmp %rdx, %rdx
movw $0x6162, (%rcx)
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_UC_ht+0x9d82, %rsi
lea addresses_normal_ht+0x1cc82, %rdi
nop
nop
cmp $30357, %r9
mov $60, %rcx
rep movsl
nop
nop
nop
sub %rbp, %rbp
lea addresses_WT_ht+0x3c82, %rsi
nop
nop
nop
xor $34769, %r15
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm3
vpextrq $1, %xmm3, %r12
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x56f2, %rsi
lea addresses_D_ht+0x23ea, %rdi
nop
and %rdx, %rdx
mov $118, %rcx
rep movsq
nop
nop
nop
xor %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rbx
push %rdx

// Store
lea addresses_A+0x1de42, %rbx
sub %r14, %r14
mov $0x5152535455565758, %r13
movq %r13, (%rbx)
nop
nop
nop
nop
nop
sub $64262, %r12

// Store
lea addresses_A+0x1cb82, %r13
add $10014, %rbp
mov $0x5152535455565758, %r12
movq %r12, %xmm2
movups %xmm2, (%r13)
nop
nop
nop
sub $4223, %r14

// Load
lea addresses_US+0xe588, %r13
nop
nop
nop
add %rdx, %rdx
movups (%r13), %xmm3
vpextrq $1, %xmm3, %rbx
nop
nop
nop
nop
sub %rdx, %rdx

// Faulty Load
lea addresses_UC+0x8c82, %r13
clflush (%r13)
dec %rbp
mov (%r13), %bx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
