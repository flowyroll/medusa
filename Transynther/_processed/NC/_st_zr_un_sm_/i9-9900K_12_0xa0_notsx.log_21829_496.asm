.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x36ba, %rdx
clflush (%rdx)
nop
nop
sub %rbp, %rbp
mov (%rdx), %r9w
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0xb42, %rdx
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm5
movups %xmm5, (%rdx)
and $64134, %r10
lea addresses_WC_ht+0x17086, %rdi
nop
nop
add %r9, %r9
movb (%rdi), %dl
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0xdc42, %rcx
nop
dec %rbx
movl $0x61626364, (%rcx)
nop
nop
nop
sub %r10, %r10
lea addresses_UC_ht+0x350a, %rcx
nop
nop
sub $9963, %rbx
mov (%rcx), %edi
inc %rbx
lea addresses_A_ht+0x1dc1e, %rdx
nop
nop
nop
nop
nop
xor $27758, %r10
movb $0x61, (%rdx)
and $27236, %r9
lea addresses_UC_ht+0x196ca, %rsi
lea addresses_normal_ht+0x139a2, %rdi
and %rdx, %rdx
mov $23, %rcx
rep movsb
nop
nop
nop
xor %rbx, %rbx
lea addresses_WT_ht+0x1ba02, %rsi
lea addresses_D_ht+0x1d8c2, %rdi
nop
nop
nop
dec %rdx
mov $118, %rcx
rep movsq
nop
nop
nop
nop
cmp $46834, %rsi
lea addresses_WC_ht+0x1d742, %rbp
nop
nop
add %rdx, %rdx
movb (%rbp), %r9b
nop
nop
nop
and $14497, %r10
lea addresses_WT_ht+0x9bc2, %rsi
lea addresses_D_ht+0x4b92, %rdi
nop
nop
nop
cmp $15014, %r9
mov $39, %rcx
rep movsb
add %rbp, %rbp
lea addresses_WC_ht+0x98c2, %rdi
nop
nop
nop
xor %rbx, %rbx
mov (%rdi), %dx
nop
and %rsi, %rsi
lea addresses_A_ht+0xc9c2, %rsi
lea addresses_D_ht+0x6f42, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and %r10, %r10
mov $19, %rcx
rep movsw
nop
nop
nop
nop
sub $44815, %rsi
lea addresses_WC_ht+0x17b92, %r10
nop
nop
nop
xor $37805, %rdi
mov (%r10), %rsi
xor $15756, %r10
lea addresses_UC_ht+0x9e02, %r10
nop
nop
dec %rbx
mov (%r10), %edi
nop
nop
nop
xor $57008, %rdi
lea addresses_UC_ht+0x14342, %r10
nop
and %rbp, %rbp
movw $0x6162, (%r10)
xor %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi

// Store
lea addresses_RW+0xfa42, %rcx
sub $1125, %rdi
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
inc %r12

// Store
lea addresses_WC+0x1cc42, %r15
xor %r12, %r12
movb $0x51, (%r15)
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_D+0x12942, %rdi
xor %r9, %r9
movl $0x51525354, (%rdi)
nop
add $30290, %rdi

// Store
mov $0x23a6ce0000000742, %r8
clflush (%r8)
nop
nop
nop
nop
nop
and %r14, %r14
movb $0x51, (%r8)
nop
nop
nop
cmp %r9, %r9

// Faulty Load
mov $0x23a6ce0000000742, %rcx
nop
nop
and $43102, %r14
movb (%rcx), %r15b
lea oracles, %r14
and $0xff, %r15
shlq $12, %r15
mov (%r14,%r15,1), %r15
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'79': 1862, '51': 19831, '00': 136}
79 51 51 79 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 79 51 51 79 51 51 51 51 51 51 51 51 51 51 79 51 79 51 51 51 51 51 51 79 79 51 51 79 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 79 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 79 51 79 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 79 79 51 79 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 79 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 79 00 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 51 79 51 51 51 79 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 79 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 79 51 51 79 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 79 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 79 79 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 51 51 79 51 79 51 51 79 51 79 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 79 51 51 51 51 51 51 51 79
*/
