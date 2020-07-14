.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1baa0, %rsi
lea addresses_normal_ht+0x183b4, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $40311, %r14
mov $35, %rcx
rep movsw
nop
nop
cmp %r12, %r12
lea addresses_normal_ht+0x1e6b4, %rcx
nop
nop
nop
nop
xor %r15, %r15
movl $0x61626364, (%rcx)
nop
nop
nop
sub %r15, %r15
lea addresses_normal_ht+0x7ef4, %rsi
nop
nop
nop
inc %r13
mov (%rsi), %r12w
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0xae12, %rdi
nop
nop
nop
nop
nop
cmp $59088, %rcx
mov (%rdi), %r14
nop
nop
nop
xor %r13, %r13
lea addresses_D_ht+0x172d4, %r12
clflush (%r12)
and $28570, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm2
and $0xffffffffffffffc0, %r12
movntdq %xmm2, (%r12)
nop
nop
nop
sub $53455, %r14
lea addresses_WC_ht+0x14674, %rsi
lea addresses_D_ht+0x6074, %rdi
nop
nop
and %r12, %r12
mov $57, %rcx
rep movsl
add %r13, %r13
lea addresses_UC_ht+0x1a2b4, %rsi
lea addresses_UC_ht+0x1509a, %rdi
nop
sub $21011, %rbp
mov $98, %rcx
rep movsb
nop
nop
nop
cmp $52057, %rdi
lea addresses_WT_ht+0x16ab4, %rbp
nop
nop
nop
sub $40257, %r12
movl $0x61626364, (%rbp)
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x1049a, %r12
nop
nop
nop
add $44018, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r12)
nop
nop
sub %r14, %r14
lea addresses_D_ht+0x50b4, %rsi
lea addresses_D_ht+0x14754, %rdi
nop
nop
and $14424, %r14
mov $19, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $8834, %rbp
lea addresses_WT_ht+0xfa34, %rcx
nop
nop
nop
nop
and $13812, %r13
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x9b5c, %rbp
nop
nop
nop
nop
nop
xor %r14, %r14
mov (%rbp), %si
nop
nop
nop
nop
xor $39081, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x2ab4, %r13
clflush (%r13)
nop
nop
dec %rsi
movb $0x51, (%r13)

// Exception!!!
xor %r15, %r15
div %r15
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_A+0x9eb4, %rax
nop
inc %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovaps %ymm2, (%rax)
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_WC+0x1d6b4, %rbp
nop
cmp $49120, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm4
vmovups %ymm4, (%rbp)
nop
xor %rbp, %rbp

// REPMOV
lea addresses_A+0x6b4, %rsi
mov $0x294d490000000eb4, %rdi
nop
add %r15, %r15
mov $11, %rcx
rep movsl
nop
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_UC+0x6ab4, %rax
add $20748, %r15
movl $0x51525354, (%rax)
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_D+0x2ab4, %rdi
nop
sub $9451, %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_D+0x2ab4, %r15
nop
nop
nop
nop
nop
cmp $40656, %rdi
movw $0x5152, (%r15)
nop
nop
nop
and %rcx, %rcx

// REPMOV
lea addresses_D+0xeeb4, %rsi
lea addresses_normal+0x1c5d4, %rdi
xor $23916, %rdx
mov $110, %rcx
rep movsl
nop
and $21363, %rsi

// Store
lea addresses_WT+0x199c4, %rbp
nop
nop
nop
nop
nop
dec %r15
mov $0x5152535455565758, %rax
movq %rax, (%rbp)
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_UC+0x14344, %r15
add %rbp, %rbp
movl $0x51525354, (%r15)
nop
nop
nop
nop
inc %rdx

// Load
lea addresses_UC+0x1d674, %rax
nop
sub %r13, %r13
movb (%rax), %dl
cmp $25866, %rsi

// Store
lea addresses_UC+0x19c74, %r13
nop
cmp %rdx, %rdx
movb $0x51, (%r13)
nop
nop
sub $30857, %rbp

// Store
lea addresses_D+0x2ab4, %rdi
nop
nop
sub $22581, %r13
movl $0x51525354, (%rdi)
xor $60693, %r13

// Faulty Load
lea addresses_D+0x2ab4, %rbp
nop
nop
nop
cmp %r13, %r13
mov (%rbp), %si
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_A', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_D'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC', 'AVXalign': True, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'src': {'same': True, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'00': 1}
00
*/
