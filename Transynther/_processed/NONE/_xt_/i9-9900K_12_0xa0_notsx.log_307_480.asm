.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xded1, %rsi
lea addresses_A_ht+0x1a4d1, %rdi
clflush (%rdi)
nop
nop
add $14942, %r14
mov $67, %rcx
rep movsq
nop
and %rbx, %rbx
lea addresses_WT_ht+0x36c9, %r12
nop
nop
add $24064, %r14
movw $0x6162, (%r12)
xor %r12, %r12
lea addresses_WT_ht+0xc0d1, %rdi
nop
sub %r9, %r9
movl $0x61626364, (%rdi)
nop
add %rsi, %rsi
lea addresses_D_ht+0xd511, %rbx
inc %rsi
mov (%rbx), %cx
nop
nop
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0xaf15, %rsi
nop
nop
nop
cmp $14389, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%rsi)
nop
nop
nop
and %r14, %r14
lea addresses_D_ht+0x174d1, %rsi
lea addresses_D_ht+0x12825, %rdi
nop
nop
nop
nop
inc %r14
mov $7, %rcx
rep movsq
nop
sub %r9, %r9
lea addresses_WT_ht+0x6851, %rsi
xor %rcx, %rcx
movl $0x61626364, (%rsi)
nop
add %rdi, %rdi
lea addresses_D_ht+0xc851, %rsi
lea addresses_WT_ht+0x18151, %rdi
clflush (%rdi)
nop
sub $50393, %rdx
mov $101, %rcx
rep movsq
nop
nop
nop
and $64568, %rdx
lea addresses_D_ht+0x3609, %rsi
lea addresses_D_ht+0x1e70f, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $40942, %r9
mov $79, %rcx
rep movsq
nop
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0xaef1, %rcx
nop
sub $56475, %r12
movb $0x61, (%rcx)
nop
nop
nop
cmp $27103, %rbx
lea addresses_D_ht+0x9ad1, %rbx
nop
nop
inc %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x8b54, %rsi
lea addresses_normal_ht+0x183f9, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $63966, %r14
mov $73, %rcx
rep movsl
nop
nop
nop
and $57911, %rdx
lea addresses_WT_ht+0xce51, %rsi
nop
inc %r14
mov (%rsi), %r12d
nop
inc %r12
lea addresses_normal_ht+0x116d1, %rsi
nop
nop
nop
nop
xor $24116, %rdi
mov (%rsi), %r12w
xor $24322, %rbx
lea addresses_normal_ht+0x51d1, %rcx
nop
nop
nop
and $32941, %rdx
movl $0x61626364, (%rcx)
add $61571, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rsi

// Load
lea addresses_normal+0x1d915, %r9
nop
sub %rsi, %rsi
mov (%r9), %rax
nop
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_D+0x1d799, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
and %rcx, %rcx
movw $0x5152, (%rbx)
nop
nop
and %rbx, %rbx

// Store
lea addresses_D+0x54d1, %r10
nop
add $27540, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movaps %xmm2, (%r10)
nop
xor $9547, %rbx

// Store
lea addresses_D+0x1614f, %r13
clflush (%r13)
and $51980, %r10
movw $0x5152, (%r13)
nop
nop
sub $39887, %rcx

// Load
lea addresses_UC+0xb4b1, %rax
nop
nop
nop
sub $23171, %rbx
movb (%rax), %r9b
nop
nop
nop
nop
nop
inc %rsi

// Load
lea addresses_RW+0x13cd1, %r13
nop
nop
nop
nop
cmp $22801, %r9
mov (%r13), %bx
nop
nop
nop
inc %r10

// Faulty Load
lea addresses_RW+0x13cd1, %rcx
nop
nop
nop
nop
nop
cmp $43790, %rax
mov (%rcx), %r13w
lea oracles, %rbx
and $0xff, %r13
shlq $12, %r13
mov (%rbx,%r13,1), %r13
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'32': 307}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
