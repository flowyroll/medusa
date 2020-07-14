.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x3e77, %rsi
lea addresses_A_ht+0x428d, %rdi
nop
nop
nop
nop
xor %r10, %r10
mov $14, %rcx
rep movsl
nop
nop
and %r9, %r9
lea addresses_WT_ht+0xc07, %r12
nop
nop
nop
nop
sub %r8, %r8
movw $0x6162, (%r12)
add $46073, %r8
lea addresses_A_ht+0x19147, %rsi
lea addresses_normal_ht+0x19b8b, %rdi
cmp %r12, %r12
mov $50, %rcx
rep movsw
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x1147, %rsi
lea addresses_normal_ht+0x11dd7, %rdi
nop
nop
nop
sub $35029, %r9
mov $127, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $44565, %r10
lea addresses_normal_ht+0x1e547, %rsi
lea addresses_WC_ht+0x11147, %rdi
inc %rdx
mov $99, %rcx
rep movsw
nop
nop
nop
add %r10, %r10
lea addresses_D_ht+0x7147, %rsi
lea addresses_D_ht+0x18ce7, %rdi
nop
nop
nop
nop
xor $19317, %r12
mov $85, %rcx
rep movsq
nop
nop
dec %r9
lea addresses_UC_ht+0xf147, %r10
nop
nop
xor $21873, %rsi
movups (%r10), %xmm0
vpextrq $1, %xmm0, %r9
nop
and %rdx, %rdx
lea addresses_normal_ht+0x1d947, %r12
nop
nop
nop
and $2568, %r9
mov (%r12), %rcx
nop
nop
nop
dec %r12
lea addresses_A_ht+0xa547, %rsi
sub %rdx, %rdx
mov $0x6162636465666768, %r8
movq %r8, %xmm5
vmovups %ymm5, (%rsi)
nop
add $57934, %r9
lea addresses_UC_ht+0x1a847, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
sub $43300, %r10
mov (%rcx), %esi
nop
nop
nop
nop
nop
cmp $12499, %rsi
lea addresses_A_ht+0x4c07, %rsi
lea addresses_WT_ht+0x3547, %rdi
nop
nop
sub %r12, %r12
mov $34, %rcx
rep movsl
nop
nop
nop
nop
nop
and $4445, %r10
lea addresses_UC_ht+0x12b47, %r9
nop
nop
nop
nop
xor $59020, %rdi
mov (%r9), %r12d
nop
nop
nop
nop
sub $44431, %rsi
lea addresses_UC_ht+0x3d8f, %rsi
lea addresses_UC_ht+0x18707, %rdi
nop
inc %r9
mov $81, %rcx
rep movsb
nop
nop
nop
nop
nop
add $5512, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Load
lea addresses_RW+0x1a147, %rdi
nop
nop
nop
nop
nop
add %r8, %r8
mov (%rdi), %r9w
nop
nop
nop
nop
add %rbp, %rbp

// REPMOV
mov $0x2e7, %rsi
lea addresses_RW+0xf61f, %rdi
nop
nop
nop
cmp %r15, %r15
mov $85, %rcx
rep movsb
nop
cmp $3569, %rcx

// Store
lea addresses_normal+0x11b5f, %r9
nop
nop
nop
nop
nop
sub %r8, %r8
movl $0x51525354, (%r9)
nop
nop
cmp %rsi, %rsi

// Store
mov $0xe47, %rsi
nop
nop
sub $39871, %rbp
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
cmp $64916, %rbp

// Store
lea addresses_US+0xa0e6, %rsi
nop
nop
nop
nop
sub %r9, %r9
movl $0x51525354, (%rsi)
nop
nop
xor %r9, %r9

// Faulty Load
lea addresses_RW+0x1a147, %rcx
nop
nop
nop
nop
and %rbp, %rbp
mov (%rcx), %r15d
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_P'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'32': 16284}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
