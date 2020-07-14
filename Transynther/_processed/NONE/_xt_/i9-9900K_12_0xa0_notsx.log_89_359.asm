.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x7bfb, %rsi
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%rsi), %r15
nop
add %rbp, %rbp
lea addresses_WC_ht+0x3743, %rcx
and %rbp, %rbp
vmovups (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r14
add %r14, %r14
lea addresses_UC_ht+0x1d9ad, %rcx
nop
sub %rdx, %rdx
mov (%rcx), %rsi
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x17efb, %rbp
nop
nop
nop
and $14875, %rsi
movw $0x6162, (%rbp)
nop
sub %r14, %r14
lea addresses_A_ht+0x30f3, %rsi
lea addresses_WT_ht+0x19817, %rdi
nop
nop
cmp %r12, %r12
mov $56, %rcx
rep movsl
nop
nop
nop
nop
xor $61893, %r14
lea addresses_A_ht+0x107fb, %rdi
inc %rcx
mov (%rdi), %r12d
and $58307, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx

// Load
mov $0x8ca2a0000000d1b, %r12
nop
xor $12633, %rcx
movb (%r12), %r9b
nop
and %r9, %r9

// Store
mov $0x38961500000009fb, %r12
nop
xor $45292, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, (%r12)
nop
cmp %r12, %r12

// Faulty Load
lea addresses_D+0x17dfb, %rcx
nop
nop
nop
nop
nop
inc %r12
mov (%rcx), %rdx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 9}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'36': 89}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
