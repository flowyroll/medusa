.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x198e4, %rsi
lea addresses_WC_ht+0x104e4, %rdi
nop
nop
nop
nop
add $60978, %r14
mov $44, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $8365, %rbx
lea addresses_D_ht+0xd824, %rsi
lea addresses_A_ht+0xed64, %rdi
nop
nop
add $61444, %rbp
mov $37, %rcx
rep movsw
nop
nop
nop
nop
sub $50500, %r14
lea addresses_D_ht+0x68e4, %rdi
nop
and $20544, %r13
mov (%rdi), %r14w
nop
and $5210, %rdi
lea addresses_normal_ht+0x10ee4, %r14
clflush (%r14)
add $48538, %r13
movups (%r14), %xmm5
vpextrq $1, %xmm5, %rbx
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x1c0e4, %r13
nop
nop
nop
sub %rbx, %rbx
movb $0x61, (%r13)
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_WT_ht+0x3be4, %rsi
lea addresses_WC_ht+0x1082c, %rdi
inc %rbp
mov $124, %rcx
rep movsw
nop
nop
add $55039, %rsi
lea addresses_WT_ht+0xf694, %r14
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
movups %xmm2, (%r14)
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0xe790, %rsi
nop
nop
nop
nop
nop
sub $16815, %r13
mov (%rsi), %rdi
nop
nop
xor $5765, %rbp
lea addresses_normal_ht+0xd042, %rdi
clflush (%rdi)
nop
nop
sub $14724, %rbx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x15464, %rsi
lea addresses_A_ht+0x10e4, %rdi
nop
nop
and $8530, %r10
mov $112, %rcx
rep movsl
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0xa4a4, %rdi
clflush (%rdi)
nop
nop
cmp %rcx, %rcx
movl $0x61626364, (%rdi)
inc %rbp
lea addresses_normal_ht+0xba82, %rbx
nop
nop
nop
nop
xor $5578, %r14
movb (%rbx), %cl
nop
nop
nop
nop
nop
cmp $33527, %r14
lea addresses_WT_ht+0x1c8c4, %rdi
nop
nop
and $21484, %rbp
movb (%rdi), %cl
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0xdae4, %r10
nop
sub %r13, %r13
movw $0x6162, (%r10)
nop
nop
nop
nop
and $48706, %r10
lea addresses_UC_ht+0xa8e4, %rsi
nop
nop
dec %rbx
mov (%rsi), %r14d
nop
nop
nop
nop
nop
sub %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x1bae4, %r8
nop
nop
nop
nop
nop
sub %rax, %rax
movl $0x51525354, (%r8)
xor $28504, %r10

// Store
lea addresses_UC+0x3184, %r13
clflush (%r13)
nop
and $18013, %r8
movl $0x51525354, (%r13)
nop
sub %rbp, %rbp

// Store
lea addresses_WT+0x28e4, %rax
nop
nop
nop
nop
nop
inc %r15
movl $0x51525354, (%rax)
sub %rbp, %rbp

// Store
lea addresses_A+0xb0e4, %r10
nop
nop
nop
nop
nop
xor $26600, %r8
movb $0x51, (%r10)
nop
and %r15, %r15

// Load
lea addresses_RW+0x1dbc4, %r13
nop
nop
nop
and $43459, %rsi
movups (%r13), %xmm5
vpextrq $1, %xmm5, %r10
nop
nop
lfence

// Store
lea addresses_D+0x3ce4, %rax
clflush (%rax)
xor %rbp, %rbp
movw $0x5152, (%rax)
nop
nop
nop
and $32121, %rax

// Store
lea addresses_normal+0x1e0e4, %rax
nop
nop
sub %r10, %r10
movw $0x5152, (%rax)
nop
nop
nop
nop
add $64262, %rsi

// Store
lea addresses_D+0x16d94, %r15
clflush (%r15)
nop
nop
cmp $49693, %r8
mov $0x5152535455565758, %rbp
movq %rbp, (%r15)
nop
and $43158, %r8

// REPMOV
lea addresses_WC+0x1d964, %rsi
lea addresses_D+0x14f24, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
mov $99, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r13

// Faulty Load
lea addresses_WT+0x28e4, %rcx
cmp %r8, %r8
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %rbp
lea oracles, %r15
and $0xff, %rbp
shlq $12, %rbp
mov (%r15,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': True, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WC', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 6, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': True, 'congruent': 5}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
